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
		gender ="����";
	}else {
		gender ="����";
	}
	
	String serverName = request.getServerName();
	int serverPort = request.getServerPort();
	
%>
</head>
<body>
<h2>Request Result !!!</h2>
����: <%=name %><p>
�й�: <%=student %><p>
����:<%=gender%><p>
�а�:<%=major %><p>
�����̸�: <%=serverName %><p>
��Ʈ: <%=serverPort %>
</body>
</html>