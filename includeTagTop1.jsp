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
	String name = request.getParameter("name");
	%>
	include 액션태그의 top입니다.
	<p>
	<b><%=name %> Fighting !!!</b> 
	<hr>
</body>
</html>