$(document).ready(function(){
	
	//로그인 모달창
	$(".showlogin").click(function(){
		$("body").css("overflow","hidden")
		$(".login").show()
		$.ajax({
			type:"get",
			url:"../user/login.shop",
			success:function(data){
				$(".login").html(data);
			}
		})
	})
	//회원가입 모달창
	$(".showjoin").click(function(){
		$("body").css("overflow","hidden")
		$(".join").show()
		$.ajax({
			url:"../user/join.shop",
			success:function(data){
				$(".join").html(data);
			}
		})
	})
	
	//모달 닫기
	$('.modal').on('click','.a-close',function(){
		$("body").css("overflow","auto")
		$('.modal').hide()
	}).on('click','.showlogin',function(){
		$("body").css("overflow","hidden")
		$('.modal').hide()
		$(".login").show()
		$.ajax({
			url:"../user/login.shop",
			success:function(data){
				$(".login").html(data);
			}
		})
	}).on('click','.showjoin',function(){ //모달 열린상태에서 회원가입 모달열기
		$("body").css("overflow","hidden")
		$('.modal').hide()
		$(".join").show()
		$.ajax({
			url:"../user/join.shop",
			success:function(data){
				$(".join").html(data);
			}
		})
	}).on('click','.showuserEntry',function(){ //모달 열린상태에서 로그인 모달열기
		$("body").css("overflow","hidden")
		$('.modal').hide()
		$(".userEntry").show()
		$.ajax({
			url:"../user/userEntry.shop",
			success:function(data){
				$(".userEntry").html(data);
			}
		})
	})
	
	//검색 아이콘 클릭시 검색창 열림
	$(".btn-search").click(function(){ 
		$('body').addClass('on-regularbox-popup')
		$(".wrap").addClass('search-on')
		.on('click',".btn-search",function(){
			$(".bg-menu-wrap").addClass('search-on')
		})
		//검색창 엔터시 검색 결과창으로 넘어감
		.on('keyup','.search-input',function(e){
			if(e.keyCode==13)
				$('.search-cont').addClass('search-result-on')
		})
		//아이콘옆 x누를시 원래 검색창으로 넘어감
		.on('click','.btn-search-del',function(){
			$('.search-cont').removeClass('search-result-on')
		})
		.on('click','.search-result-magazine',function(){
			$('.search-result-tab-on').removeClass('search-result-tab-on')
			$('.search-list').css('display','none')
			$('.search-magazine-list').css('display','block')
			$('.search-result-magazine').addClass('search-result-tab-on')
		})
		.on('click','.search-result-class',function(){
			$('.search-result-tab-on').removeClass('search-result-tab-on')
			$('.search-list').css('display','none')
			$('.search-class-list').css('display','block')
			$('.search-result-class').addClass('search-result-tab-on')
		})
	})

	/*$(".btn-layer-close").click(function(){
		$(".wrap").removeClass("layer-on")
	})*/
})
/*//로그인 버튼 클릭 이벤트
function dologin(){
	$('.layer-wrap').css('display','none')
	$('#login-wrap').css('display','block')
}
//회원가입 버튼 클릭 이벤트
function dojoin(){
	$('.layer-wrap').css('display','none')
	$('#join-wrap').css('display','block')
}
$(document).ready(function(){
	//모달창 바깥 클릭시 모달창 꺼짐
	$('.a-close').on('click',function(){ 
		$('.layer-wrap').css('display','none')
	})
	
	//이메일로 가입하기 버튼클릭 이벤트
	$('.a-email').on('click',function(){ 
		$('#join-wrap').css('display','none')
		$('#join-write').css('display','block')
	})
})
*/