<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
	function checkLogin(){
		
		var form = document.loginForm;
		if(form.id.value.length<4|| form.id.value.length>12){
			alert("id shoule be 4-12!");
			form.id.focus();
			return;
		}
		if(form.pw.value.length<4){
			alert("pw shoud be longer than 4!");
			form.pw.focus();
			return;
		}
		if(form.id.value.charAt(0)<'a'||form.id.value.charAt(0)>'z'){
			alert("enter id in lower case! ");
			return;
		}
		form.submit();
		
	
	}
</script>
</head>
<body>
	<form name ="loginForm" action ="validation02_process.jsp" method ="post">
		<p>아이디: <input type ="text" name ="id" req></p>
		<p>비밀번호: <input type ="password" name ="pw"></p>
		<p><input type ="button" value ="send" onclick="checkLogin()">
		<!-- submit으로 하지 않고 button으로 해서 넘어가지 않게  -->
	</form>
</body>
</html>