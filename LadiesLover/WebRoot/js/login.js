var xmlHttp;
var request_url = ["login.action"];
var response_url = ["student_person.action"];
var role=0;
function createXmlHttp(){
	if(window.XMLHttpRequest){
		xmlHttp = new XMLHttpRequest();
	}else{
	    xmlHttp = new ActiveXObject("Microsoft.XMLHttp");	
	}
}
function login(){
	var id = document.getElementById("id").value;
	var password = document.getElementById("password").value;
	createXmlHttp();
	xmlHttp.onreadystatechange = responseTo;
	xmlHttp.open("POST", request_url[role]+"?userid="+id+"&password="+password ,true);
	xmlHttp.send(null);
}
function responseTo(){
	if(xmlHttp.readyState==4){
		var response = xmlHttp.responseText;
		var obj = eval('(' + response + ')');
		if(obj.success==true)
			window.location.href = response_url[role];
		else{
			document.getElementById("tip").style.display="block";
			document.getElementById("tip").innerHTML = "鐢ㄦ埛鍚嶆垨瀵嗙爜鏈夎锛�;
		}
	}
}