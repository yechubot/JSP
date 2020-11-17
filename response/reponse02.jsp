<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	이 페이지는 5초마다 새로고침 됩니다..
	<%
		response.setIntHeader("Refresh",5);//response 메소드 내부 객체? 
	%>
	<p><%= (new java.util.Date()) %>
</body>
</html>