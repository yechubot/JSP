<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id = "test" class ="bean01.SimpleBean" scope ="page"/>
    <jsp:setProperty name = "test" property = "message" value ="�� ����!"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>������ �� ���α׷���</h1>
<br/>
Message:<jsp:getProperty name ="test" property ="message"/>
</body>
</html>