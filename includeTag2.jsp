<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("euc-kr");
	String siteName = request.getParameter("siteName");
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Include Tag Example2 -- jsp</h1>
	<jsp:include page ="includeTagTop2.jsp">
		<jsp:param name="siteName" value = "jspstudy.co.kr"/>
	</jsp:include>
	include actionTag의 body입니다. <p>
	<b><%=siteName %></b>
</body>
</html>
