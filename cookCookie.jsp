<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cook Cookie</title>
</head>
<%
	
	Cookie cookie = new Cookie("myCookie","apple");
	cookie.setMaxAge(60);
	cookie.setValue("melon");
	Cookie cookie2 = new Cookie("myName", "kim");
	cookie2.setMaxAge(60);
	Cookie cookie3 = new Cookie("myAge","35");
	cookie3.setMaxAge(10);
	
	response.addCookie(cookie);
	response.addCookie(cookie2);
	response.addCookie(cookie3); //cookie 3��° ����� ����
	
%>
<body>
	<h1>��Ű ����</h1>
	��Ű�� ����ϴ�.</br/>
	��Ű ������ <a href="tasteCookie.jsp">�����</a>
</body>
</html>