<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("EUC-KR");
	String name = request.getParameter("name");
	String student = request.getParameter("student");
	String gender = request.getParameter("gender");
	String major = request.getParameter("major");
	
	if(gender.equals("man")){
		gender ="남자";
	}else {
		gender ="여자";
	}
	
	String serverName = request.getServerName();
	int serverPort = request.getServerPort();
	
%>
</head>
<body>
<h2>Request Result !!!</h2>
성명: <%=name %><p>
학번: <%=student %><p>
성별:<%=gender%><p>
학과:<%=major %><p>
서버이름: <%=serverName %><p>
포트: <%=serverPort %>
</body>
</html>