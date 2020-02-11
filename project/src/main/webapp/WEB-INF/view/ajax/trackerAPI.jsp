<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
#tekbeCompnayList, #invoiceNumberText {
    width: 100%;
    height: 30px;
    padding-left: 10px;
    font-size: 15px;
    color: #11447B;
    border: 1px solid #11447B;
    border-radius: 5px;
}

#tekbeCompnayName, #invoiceNumber{
  color:black; 
  font-weight: bold; 
  margin-right: 20px;
  font-size: 16px;
}

#myButton1 {
  background: #11447B;
  
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 5px;
  color: #ffffff;
  font-size: 18px;
  padding: 10px 10px 10px 10px;
  text-decoration: none;
}

/* #myButton1:hover {
  background: #3cb0fd;
  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none;
} */

table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #11447B;
    text-align: left;
    padding: 8px;
}

tr:nth-child(odd) {
    background-color: #11447B;
    color: #ffffff;
}
</style>
<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<script>

$(document).ready(function(){
	var myKey = "ggdwcT6cmLTJ8TmkPbmbVw"; // sweet tracker에서 발급받은 자신의 키 넣는다.
	
		// 택배사 목록 조회 company-api
        $.ajax({
            type:"GET",
            dataType : "json",
            url:"http://info.sweettracker.co.kr/api/v1/companylist?t_key="+myKey,
            success:function(data){
            		
            		// 방법 1. JSON.parse 이용하기
            		var parseData = JSON.parse(JSON.stringify(data));
             		console.log(parseData.Company); // 그중 Json Array에 접근하기 위해 Array명 Company 입력
            		
            		// 방법 2. Json으로 가져온 데이터에 Array로 바로 접근하기
            		var CompanyArray = data.Company; // Json Array에 접근하기 위해 Array명 Company 입력
            		console.log(CompanyArray); 
            		
            		var myData="";
            		$.each(CompanyArray,function(key,value) {
    	        			//'<option value='+value.Code+'>' +'key:'+key+', Code:'+value.Code+',Name:'+value.Name + '</option>'
	            			myData += ('<option value='+value.Code+'>' + value.Name + '</option>');        				
            		});
            		$("#tekbeCompnayList").html(myData);
            }
        });

		// 배송정보와 배송추적 tracking-api
        $("#myButton1").click(function() {
        	var t_code = $('#tekbeCompnayList option:selected').attr('value');
        	var t_invoice = $('#invoiceNumberText').val();
        	
            $.ajax({
                type:"GET",
                dataType : "json",
                url:"http://info.sweettracker.co.kr/api/v1/trackingInfo?t_key="+myKey+"&t_code="+t_code+"&t_invoice="+t_invoice,
                success:function(data){
                	console.log(data);
                	var myInvoiceData = "";
                	if(data.status == false){
                		myInvoiceData += ('<p>'+data.msg+'<p>');
                	}else{
	            		myInvoiceData += ('<tr>');            	
	            		myInvoiceData += ('<th>'+"보내는사람"+'</td>');     				
	            		myInvoiceData += ('<th>'+data.senderName+'</td>');     				
	            		myInvoiceData += ('</tr>');     
	            		myInvoiceData += ('<tr>');            	
	            		myInvoiceData += ('<th>'+"제품정보"+'</td>');     				
	            		myInvoiceData += ('<th>'+data.itemName+'</td>');     				
	            		myInvoiceData += ('</tr>');     
	            		myInvoiceData += ('<tr>');            	
	            		myInvoiceData += ('<th>'+"송장번호"+'</td>');     				
	            		myInvoiceData += ('<th>'+data.invoiceNo+'</td>');     				
	            		myInvoiceData += ('</tr>');     
	            		myInvoiceData += ('<tr>');            	
	            		myInvoiceData += ('<th>'+"송장번호"+'</td>');     				
	            		myInvoiceData += ('<th>'+data.receiverAddr+'</td>');     				
	            		myInvoiceData += ('</tr>');           	                		
                	}
        			
                	
                	$("#myPtag").html(myInvoiceData)
                	
                	var trackingDetails = data.trackingDetails;
                	
                	
            		var myTracking="";
            		var header ="";
            		header += ('<tr>');            	
            		header += ('<th>'+"시간"+'</th>');
            		header += ('<th>'+"장소"+'</th>');
            		header += ('<th>'+"유형"+'</th>');
            		header += ('<th>'+"전화번호"+'</th>');     				
        			header += ('</tr>');     
            		
            		$.each(trackingDetails,function(key,value) {
	            		myTracking += ('<tr>');            	
            			myTracking += ('<td>'+value.timeString+'</td>');
            			myTracking += ('<td>'+value.where+'</td>');
            			myTracking += ('<td>'+value.kind+'</td>');
            			myTracking += ('<td>'+value.telno+'</td>');     				
	            		myTracking += ('</tr>');        			            	
            		});
            		
            		$("#myPtag2").html(header+myTracking);
                	
                }
            });
        });
		
});

function fncancle() {
	$(".trackerAPI").hide();
}

</script>
	
	<div id="dimmer-hf-modal-1580289583484809" class="hfc-dimmer hfc-dimmer-modal"></div>
		<div class="modal-dialog hfc-modal s-big" style="overflow-y: unset;">
			<!-- Modal content-->
			<div class="hfe-bg"></div>
			<div class="modal-content hfe-container" style="padding-left: 15px; padding-top: 15px; padding-right: 15px; padding-bottom: 15px;">
				<span id="tekbeCompnayName">택배회사명: </span>
					<select id="tekbeCompnayList" name="tekbeCompnayList"></select><br/><br/>
				
				<span id="invoiceNumber">운송장번호: </span>
					<input type="text" id="invoiceNumberText" name="invoiceNumberText"><br/><br/>
					
					<button id="myButton1">택배 조회하기 </button><br/><br/>
			
				<div>
					<table id="myPtag"></table>
				</div>
				<br/>
				<div>
					<table id="myPtag2"></table>
				</div>
				<div class="cancel-class-btn" style="height: 60px; padding-bottom: 0px; padding-top: 10px; ">
					<a href="javascript:fncancle()" title="닫기" class="btn-cancel-class btn-close-cancel" style="width: 102px; height: 62px;">닫기</a>
				</div>
			</div>
		</div>
