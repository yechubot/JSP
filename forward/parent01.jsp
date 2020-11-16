<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Action Tag</title>
</head>
<body>
	<h3>액션 태그</h3>
	<jsp:forward page ="param01_data.jsp">
		<jsp:param name ="id" value ="admin" />
		<jsp:param name ="name" value ="textName"/>
	</jsp:forward>
</body>
</html>