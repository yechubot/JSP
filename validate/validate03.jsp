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
		//���ڰ� �ƴ� ��
		alert("enter only numbers!");
		form.pw.focus();
		return;
	}
}
</script>
</head>
<body>
<form name ="loginForm" action ="validation03_process.jsp" method ="post">
		<p>���̵�: <input type ="text" name ="id" req></p>
		<p>��й�ȣ: <input type ="password" name ="pw"></p>
		<p><input type ="button" value ="send" onclick="checkLogin()">
		<!-- submit���� ���� �ʰ� button���� �ؼ� �Ѿ�� �ʰ�  -->
	</form>
</body>
</html>