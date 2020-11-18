<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>function checkLogin(){
	var form = document.loginForm;
	if(isNaN(form.pw.value)) {
		//숫자가 아닐 때
		alert("enter only numbers!");
		form.pw.focus();
		return;
	}
}
</script>
</head>
<body>
<form name ="loginForm" action ="validation03_process.jsp" method ="post">
		<p>아이디: <input type ="text" name ="id" req></p>
		<p>비밀번호: <input type ="password" name ="pw"></p>
		<p><input type ="button" value ="send" onclick="checkLogin()">
		<!-- submit으로 하지 않고 button으로 해서 넘어가지 않게  -->
	</form>
</body>
</html>