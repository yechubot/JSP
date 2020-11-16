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
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
	%>
	<h1>Forward Tag Example Last</h1>
	당신의 아이디는 <b><%=id %></b>이고 </p>
	패스워드는 <b><%=pwd %></b> 입니다. 
</body>
</html>