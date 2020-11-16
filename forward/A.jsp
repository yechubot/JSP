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
	String bloodType = request.getParameter("bloodType");
	%>
	<%=name %>님의 혈액형은 <br/>
	<b><%=bloodType %></b>형이고<br/>
	A형은 대체로 자기에게서 발견할 수 없는 성격의 소유자에게 관심을 가지고 때로는 동경 합니다.
</body>
</html>