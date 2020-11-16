<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>param 액션 태그</h3>
	<!--인코딩 표현식 안에서 저렇게 가능   -->
	<jsp:include page ="param02_data.jsp">
		<jsp:param name ="title" value ='<%=URLEncoder.encode("오늘의 날짜와 시각")%>'/>
		<jsp:param name ="date" value ="<%=java.util.Calendar.getInstance() %>" />
		</jsp:include>
</body>
</html>