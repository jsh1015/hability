var ajax = null;
// ajax 객체 생성 기능
// 표준객체의 이름: XMLHttpRequest 객체임.
function getAjaxObject() { //XMLHttpRequest 전달해주는 곳
	if(window.ActiveXObject){ //내 객체에  ActiveXObject가 있니? => 현재 사용중이 브라우저가 익스플로러?
		try{
			return new ActiveXObject("Msxml2.XMLHTTP");
		}catch(e){
			try{
				return new ActiveXObject("Microsoft.XMLHTTP");
			}catch(e2){
				return null;
			}
		}
	}else if(window.XMLHttpRequest){ //익스플로러 이외의 브라우저?
		return new XMLHttpRequest();
	}else{
		return null;
	}
}//getAjaxObject() 함수 끝
//url : "hello.jsp"
//params:"name="+김삿갓
//callback:helloFromServer
//method:"POST"
function sendRequest(url,params,callback,method){
	//ajax : XMLHTTPRequest 객체를 저장. ajax 실행하는 객체, 서버와 통신할 수 있는 객체
	ajax = getAjaxObject();
	// httpMethod: GET || POST 둘중 한개의 값
	var httpMethod = method?method:"GET";
	if(httpMethod != "GET" && httpMethod != "POST"){
		httpMethod ="GET";
	}
	//httpParams : name=김삿갓
	var httpParams = (params == null || params =='')?null:params;
	var httpUrl = url;
	//GET 방식인 경우
	//httpUrl = hello.jsp?name=김삿갓
	//POST 방식인 경우
	//httpUrul =hello.jsp
	if(httpMethod =="GET" && httpParams !=null){
		httpUrl = httpUrl + "?" + httpParams;
	}
	ajax.open(httpMethod,httpUrl,true);//true : 비동기방식. 
	ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	//콜벡함수 등록
	//콜벡함수는 ajax 객체의 상태가 변경될때 마다 호출되는 함수 
	ajax.onreadystatechange = callback;
	//서버에 요청
	ajax.send(httpMethod=="POST"?httpParams:null);
}