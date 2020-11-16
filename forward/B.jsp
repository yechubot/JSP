<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String name = request.getParameter("name");
	String bloodType = request.getParameter("bloodType");
	%>
	<%=name %>님의 혈액형은 <br/>
	<b><%=bloodType %></b>형이고<br/>
	B형은 감정을 숨기지를 못한다.
</body>
</html>