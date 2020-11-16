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
	AB형은 대체로 낯을 많이 가린다.
</body>
</html>