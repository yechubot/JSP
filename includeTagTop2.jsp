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
	include�� actiontag�� top�Դϴ�.
	<%=siteName %>
	<hr>
</body>
</html>