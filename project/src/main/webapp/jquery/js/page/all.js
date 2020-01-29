function showMenu() {
	history.pushState(null, null, "#;");
	$('#header-wrap').attr('class', 'header-wrap menu-on');
	$('body').addClass('on-popup');
	$('body').addClass('on-regularbox-popup');
	history.pushState(null, null, "#openmenu");

	// 채널톡 숨김
	$('#ch-plugin').hide();
}