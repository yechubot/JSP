<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Action Tag Result</title>
</head>
<body>
	<p> ���̵�: <%=request.getParameter("id") %>
	<%String name =request.getParameter("name"); %>
	<p>�̸�: <%=name %>
</body>
</html>