<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isErrorPage ="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String message =exception.getMessage();
	String objectMessage = exception.toString();
	%>
	
	에러메시지 : <b><%=message %></b></p>
	에러 실체 클래스와 에러 메시지 : <b><%=objectMessage%></b><p/>
</body>
</html>