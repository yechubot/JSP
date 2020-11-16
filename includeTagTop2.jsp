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
		String siteName = request.getParameter("siteName");
	%>
	include의 actiontag의 top입니다.
	<%=siteName %>
	<hr>
</body>
</html>
