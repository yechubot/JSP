<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Scriptlet Example2</h1>
	<%
	float f = 2.3f;
	int i = Math.round(f);
	java.util.Date date = new java.util.Date();
	 %>
	 round f? <%=i %><p>
	 date, time? <%= date.toString() %>
</body>
</html>