/**
 * Created by Nalrarang on 2017. 4. 4
 */
/**
 Mypage화면 Script File

 */
function mymenu(str){
	$(".btn-mymenu-on").removeClass("btn-mymenu-on")
	$(".sub-tab-wrap-review").removeClass("block") //구매후기 세부탭 숨기기
	$("."+str).addClass("btn-mymenu-on") //큰메뉴클릭시
	$(".cont-review,.cont-history").css("display","none")
	$(".btn-mymenu-sub-on").removeClass("btn-mymenu-sub-on")
	$(".mymenu-"+str).addClass("btn-mymenu-sub-on") //작은 메뉴나타내기(스타일적용)
	$(".list-order,.list-address,.list-newaddress,.list-history,.list-review," +
			".list-qna,.list-mileage,.list-coupon,.list-myinfo,.list-password," +
			".list-exit,.list-favorite,.list-magazine, .list-addrupdate").hide()
	$(".list-"+str).show()
	$(".mymenu-sub-order,.mymenu-sub-address,.mymenu-sub-history,.mymenu-sub-myinfo,.mymenu-sub-favorite").css("display","none")
	$(".mymenu-sub-"+str).css("display","list-item")
}
function favorite(){
	$(".reply-class-wrap").css("display","none") //댓글 세부탭 선택삭제
	$(".btn-mymenu-sub-on").removeClass("btn-mymenu-sub-on")
	$(".mymenu-favorite").addClass("btn-mymenu-sub-on")//빨간밑줄
	$(".mymenu-sub-order,.mymenu-sub-address,.mymenu-sub-history,.mymenu-sub-myinfo,.mymenu-sub-favorite").css("display","none")
	$(".mymenu-sub-favorite").css("display","list-item") //세부탭 보여지게하는 부분
	$(".list-order,.list-address,.list-newaddress,.list-history,.list-review," +
			".list-qna,.list-mileage,.list-coupon,.list-myinfo,.list-password," +
			".list-exit,.list-favorite,.list-magazine, .list-addrupdate").hide()
	$(".list-favorite").show()
}
function submymenu(str){
	if(str=="review"){
		$(".sub-tab-wrap-review").addClass("block")//구매후기 탭
		$(".subtab_review,.subtab_review_list").removeClass("btn-sub-on")
		$(".subtab_review").addClass("btn-sub-on") //세부탭 클릭
		
		$(".cont-review").css("display","")//review 리뷰 주의사항
		$(".sub-tab-wrap-history").removeClass("block")	//나의활동 탭	
		$(".list-qna").removeClass("block") //1:1문의내역 탭
		$(".cont-history").css("display","none")
	}else if(str=="history"){
		$(".sub-tab-wrap-history").addClass("block")
		$(".sub-tab-wrap-review").removeClass("block")
		$(".cont-history").css("display","none")
		$(".cont-review").css("display","none")
		$(".list-qna").removeClass("block")
	}else if(str=="qna"){
		$(".cont-review").css("display","none")
		$(".list-qna").addClass("block")
		$(".cont-history").css("display","")
		$(".sub-tab-wrap-review").removeClass("block")
		$(".sub-tab-wrap-history").removeClass("block")
	}else{
		$(".cont-history").css("display","none")
		$(".list-qna").removeClass("block")
		$(".sub-tab-wrap-review").removeClass("block")
		$(".sub-tab-wrap-history").removeClass("block")
		$(".cont-review").css("display","none")
		$('.postList').css('display', 'block')
	}
	$(".btn-mymenu-sub-on").removeClass("btn-mymenu-sub-on")
	$(".mymenu-"+str).addClass("btn-mymenu-sub-on")
	
	$(".order-list-wrap").hide()
	$(".delivery-list-wrap").hide()
	$(".edit-delivery-wrap").hide()
	$(".view-reply-wrap").hide()
	$(".reply-class-wrap").hide()
	$(".mymenu-sub-tab-wrap").hide() //세부탭
	$(".mileage-wrap").hide() //마일리지
	$(".coupon-wrap").hide() //쿠폰
	$(".reply-class-wrap").hide() //구매후기
	$(".direct-ask-wrap").hide() //1:1문의
	$(".edit-membership-wrap").hide()
	$(".change-pw-wrap").hide()
	$(".quit-membership-wrap,.list-favorite").hide()
	$(".list-"+str).show()
}

function subtab(str){
	$(".btn-review-tab").removeClass("btn-sub-on") //댓글 세부탭 선택삭제
	$(".subtab_"+str).addClass("btn-sub-on") //세부탭 한개 클릭
	$(".list-review,.list-review_list").hide()
	$(".list-"+str).show()
}