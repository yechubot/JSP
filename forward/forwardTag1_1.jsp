<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Forward Tag Example2</h1>
	Forward Tag�� ������ �Ǳ� ���� �������Դϴ�. <br>
	<jsp:forward page ="forwardTag1_2.jsp"/>
	<!-- ���� ������ �����ϰ� ������ �������� ��������. -->
</body>
</html>