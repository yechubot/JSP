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
		response.sendError(404, "요청 페이지를 찾을 수 없습니다.");//에러코드, 에러메시지
	%>
</body>
</html>