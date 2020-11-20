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
	session.setAttribute("idKey", id);//idKey라는 이름에 값은 id 변수에 들어가는 값
	session.setAttribute("pwKey", pw);
%>
세션이 생성되었습니다.<br/>
<a href = "viewSessionInfo.jsp">세션 정보확인 페이지로 이동</a>
</body>
</html>