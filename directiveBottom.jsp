<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Date date = new Date();
	%>
	include 지시자의 Bottom 부분입니다.  <p>
	<%=date.toLocaleString()%>
</body>
</html>
