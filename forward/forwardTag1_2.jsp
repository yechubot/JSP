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
	����� ���̵�� <b><%=id %></b>�̰� </p>
	�н������ <b><%=pwd %></b> �Դϴ�. 
</body>
</html>