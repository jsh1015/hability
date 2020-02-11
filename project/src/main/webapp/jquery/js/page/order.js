function DaumPostcode() {
   new daum.Postcode({
       oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
           // 각 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var addr = ''; // 주소 변수
           var extraAddr = ''; // 참고항목 변수
	
           //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
           if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
               addr = data.roadAddress;
           } else { // 사용자가 지번 주소를 선택했을 경우(J)
               addr = data.jibunAddress;
           }
	
           // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
           if(data.userSelectedType === 'R'){
               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
               if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                   extraAddr += data.bname;
               }
               // 건물명이 있고, 공동주택일 경우 추가한다.
               if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
               }
               // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
               if(extraAddr !== ''){
                   extraAddr = ' (' + extraAddr + ')';
               }
               // 조합된 참고항목을 해당 필드에 넣는다.
               document.getElementById("extraAddress").value = extraAddr;
           
           } else {
               document.getElementById("extraAddress").value = '';
           }
	
           // 우편번호와 주소 정보를 해당 필드에 넣는다.
           document.getElementById('po_postcode').value = data.zonecode;
           document.getElementById("po_addr_main").value = addr;
           // 커서를 상세주소 필드로 이동한다.
           document.getElementById("po_addr_sub").focus();
       }
   }).open();
}
   
	$(document).ready(function(){
		var IMP = window.IMP; // 생략가능
		IMP.init('imp11832569'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	})
	$("#orderBtn").click(function(data){
		// 신청 리스트
//		var participation_list = new Array();
//		$("input[name=participation_seq]").each(function(index, item){
//			participation_list.push($(item).val());
//		});
		
		var od_name = $('.od_name').val()
		var od_client = $('.od_client').val()
		var od_phone = $('.od_phone').val()
		var od_phone2 = $('.od_phone2').val()
		var od_comment = $('.od_comment').val()
		var od_postcode = $('.po_postcode').val()
		var od_addr_main = $('.po_addr_main').val()
		var od_addr_sub = $('.po_addr_sub').val()
		var mileage = $('.usemileage').val()
		
		var cl_num = $('#cl_num').val()
		var kit_num = $('#kit_num').val()
		var count = $('#count').val()
		
		var email=/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		// 표준식
		// a부터 z까지 문자 1개 이상일 경우 and 숫자 0,1,2일 경우에만 / [^a-z, 0,1,2] : ^ 붙이면 부정의 뜻 / 한글은 가-힣
		var phone = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/;
		//휴대폰번호
		if(document.order.name.value=="" || !isNaN(order.name.value)){
			order.name.focus()
			alert("주문자명을 입력해주세요.")
			return false
		}else if(!document.order.emailid.value.match(email)){
			alert("잘못된 형식의 이메일주소입니다.");
			order.emailid.focus();
			return false
		}else if(document.order.phone.value==""){
			alert("휴대전화를 입력해주세요")
			order.phone.focus();
			return false
		}else if(!document.order.phone.value.match(phone)){
			alert("잘못된 형식의 번호입니다.")
			order.phone.focus();
			return false
		}else if(document.order.od_name.value==""){
			alert("배송지명을 입력해주세요")
			order.od_name.focus();
			return false
		}else if(document.order.od_client.value==""){
			alert("수령자명을 입력해주세요")
			order.od_client.focus();
			return false
		}else if(document.order.od_phone.value==""){
			alert("휴대전화를 입력해주세요")
			order.od_phone.focus();
			return false
		}else if(!order.od_phone.value.match(phone)){
			alert("잘못된 형식의 번호입니다.")
			order.od_phone.focus();
			return false
		}else if(document.order.od_postcode.value==""){
			alert("우편변호를 확인해주세요")
			order.od_postcode.focus();
			return false
		}else if(document.order.od_addr_sub.value==""){
			alert("상세주소를 입력해주세요")
			order.od_addr_sub.focus();
			return false
		}else{
			var total = parseInt($('#totalprice').val())
			var mileage = parseInt($('.usemileage').val())
			var amount = 0;
			if(mileage==0){
				amount=total
			}else{
				amount = total-mileage
			}
			IMP.request_pay({
			    pg : 'kakaopay',
			    pay_method : 'card',
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : '결제',
			    email : $('.emailid').val(),
			    amount : amount,
			    buyer_email : $('.emailid').val(),
			    buyer_name : $('.name').val(),
			    buyer_tel : $('.phone').val(),
			    buyer_addr : '서울특별시 강남구 삼성동',
			    buyer_postcode : '123-456'
			}, function(rsp) {
				if ( rsp.success ) {
					$.ajax({
						type:'post',
						url:'/project/order/order.shop',
						data:{emailid : rsp.buyer_email,
							name : rsp.buyer_name,
							phone : rsp.buyer_tel,
							od_name : od_name,
							od_client : od_client,
							od_phone : od_phone,
							od_phone2 : od_phone2,
							od_comment : od_comment,
							od_postcode : od_postcode,
							od_addr_main : od_addr_main,
							od_addr_sub : od_addr_sub,
							mileage : mileage,
							price:rsp.paid_amount,
							cl_num :cl_num,
							kit_num : kit_num,
							count : count},
//						contentType :'application/json; charset=utf-8',
						success : function(data){
							/*var msg = '결제가 완료되었습니다.';
			    			msg += '\n고유ID : ' + rsp.imp_uid;
			    			msg += '\n상점 거래ID : ' + rsp.merchant_uid;
			    			msg += '\n주문자명 : ' + rsp.name;
			    			msg += '\결제 금액 : ' + rsp.paid_amount;
			    			msg += '카드 승인번호 : ' + rsp.apply_num;
			    			alert(msg);*/
							location.href="/project/order/order_success.shop" +data
			    			console.log(rsp.name+"/"+rsp.email)
						},
						error: function(error){
							console.log(error);
						}
					})
			    } else {
			        var msg = '결제에 실패하였습니다.';
			        msg += '에러내용 : ' + rsp.error_msg;
			        alert(msg);
			    }
			})
		}
	return false
	})

	//배송지 선택 모달창
	$(".showaddresslist").click(function(){
		$("body").css("overflow","hidden")
		$(".addresslist").show()
		$(".wrap").addClass('layer-on address-on')
		var emailid = $("#emailid2").val()
		$.ajax({
			url:"../order/addresslist.shop",
			data : {"emailid" : emailid},
			success:function(data){
				$(".addresslist").html(data);
			}
			
		})
	})
	function selectaddr(i){
			$(".order_addressname").val($('#po_name_'+i).val())
			$(".order_receivename").val($('#po_client_'+i).val())
			$(".receive_phone").val($('#po_phone_'+i).val())
			document.getElementById('po_postcode').value = $('#po_postcode_'+i).val();
			document.getElementById("po_addr_main").value = $('#po_addr_main_'+i).val();
			document.getElementById("po_addr_sub").value = $('#po_addr_sub_'+i).val();
			$("body").css("overflow","auto")
			$(".modal").hide()
		//선택버튼 눌렀을시
	}