<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Forward Tag Example2</h1>
	Forward Tag의 포워딩 되기 전의 페이지입니다. <br>
	<jsp:forward page ="forwardTag1_2.jsp"/>
	<!-- 현재 페이지 무시하고 포워드 페이지로 가버린다. -->
</body>
</html>