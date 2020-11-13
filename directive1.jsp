<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Directive Example</h1>
	<%@ include file = "directiveTop.jsp" %>
	include 지시자의 body부분 입니다..
	<%@ include file = "directiveBottom.jsp"%>
	
</body>
</html>