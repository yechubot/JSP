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
	<h3>param �׼� �±�</h3>
	<!--���ڵ� ǥ���� �ȿ��� ������ ����   -->
	<jsp:include page ="param02_data.jsp">
		<jsp:param name ="title" value ='<%=URLEncoder.encode("������ ��¥�� �ð�")%>'/>
		<jsp:param name ="date" value ="<%=java.util.Calendar.getInstance() %>" />
		</jsp:include>
</body>
</html>