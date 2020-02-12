/**
 * Created by Nalrarang on 2017. 4. 4
 */
/**
 Mypage화면 Script File

 */
function mymenu(str){
	$(".btn-mymenu-on").removeClass("btn-mymenu-on")
	$("."+str).addClass("btn-mymenu-on") //큰메뉴클릭시
	$(".btn-mymenu-sub-on").removeClass("btn-mymenu-sub-on")
	$(".mymenu-"+str).addClass("btn-mymenu-sub-on") //작은 메뉴나타내기(스타일적용)
	$(".customer-all,.customer-addr,.customer-order,.customer-cancel,.customer-refund," +	
			".customer-other,.customer-notice").hide()
	$(".customer-"+str).show()
	$(".mymenu-sub-customer, .mymenu-sub-notice").css("display","none")
	$(".mymenu-sub-"+str).css("display","list-item")
}
function submymenu(str){
	$(".btn-mymenu-sub-on").removeClass("btn-mymenu-sub-on")
	$(".mymenu-"+str).addClass("btn-mymenu-sub-on")	
	$(".customer-all").hide()
	$(".customer-addr").hide()
	$(".customer-order").hide()
	$(".customer-cancel").hide()
	$(".customer-refund").hide()
	$(".customer-other").hide()
	$(".customer-notice").hide()
	$(".customer-"+str).show()
}

