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
	String name = "jsp sapmle";
	String bloodType = request.getParameter("bloodType");
	%>
	<h1>Forward example</h1>
	<jsp:forward page ='<%= bloodType + ".jsp" %>'>
		<jsp:param value="<%=name %>" name="name"/>
	</jsp:forward>
</body>
</html>