<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session example</title>
</head>
<body>
<%
	String id = "rorod";
	String pw = "1234";
	session.setAttribute("idKey", id);//idKey��� �̸��� ���� id ������ ���� ��
	session.setAttribute("pwKey", pw);
%>
������ �����Ǿ����ϴ�.<br/>
<a href = "viewSessionInfo.jsp">���� ����Ȯ�� �������� �̵�</a>
</body>
</html>