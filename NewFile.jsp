<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Comment Example</h1>
	<%
		String name = "korea";
	%>
	<!-- 주석 부분입니다. '소스 보기에서'확인 가능-->
	<%--jsp에서만 확인가능한 주석 / 브라우저에서 안보임 --%>
	<!-- <%=name%> 주석에서도 동적 변수 사용 가능 -->
	<%=name /*표현식 주석*/ %>fighting
</body>
</html>