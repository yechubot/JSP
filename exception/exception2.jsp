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
	
	�����޽��� : <b><%=message %></b></p>
	���� ��ü Ŭ������ ���� �޽��� : <b><%=objectMessage%></b><p/>
</body>
</html>