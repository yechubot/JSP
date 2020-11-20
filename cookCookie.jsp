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
	response.addCookie(cookie3); //cookie 3개째 만들고 보냄
	
%>
<body>
	<h1>쿠키 예제</h1>
	쿠키를 만듭니다.</br/>
	쿠키 내용은 <a href="tasteCookie.jsp">여기로</a>
</body>
</html>