<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type ="text/javascript">
	function checkLogin(){
		var form = document.loginForm;
		if(form.id.value ==""){
			alert("enter id!");
			form.id.focus();
			return false;
		}else if(form.pw.value ==""){
			alert("enter password!");
			form.pw.focus();
			return false;
		}
		form.submit(); // validation01_process.jsp�� �̵�
		}
</script>
</head>
<body>
	<form name ="loginForm" action ="validation01_process.jsp" method ="post">
		<p>���̵�: <input type ="text" name ="id"></p>
		<p>��й�ȣ: <input type ="password" name ="pw"></p>
		<p><input type ="button" value ="send" onclick="checkLogin()">
		<!-- submit���� ���� �ʰ� button���� �ؼ� �Ѿ�� �ʰ�  -->
	</form>
</body>
</html>