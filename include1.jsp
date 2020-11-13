<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%//아무데서나 적어도 된다.
	request.setCharacterEncoding("EUC-KR"); // 한글 깨지지 않게
	String name = "Korea Football";
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Include Tag Example1 JSP</h1>
	<jsp:include page ="includeTagTop1.jsp"/>
	<!-- include 액션 태그로 includeTagTop1.jsp를 포함함 
	포함할 파일로 이동해서 처리 결과 내용만을 가지고 현 페이지로 돌아옴,위의 name이 의미없음 -->
	include 액션 태그의 body입니다. 
	<%=name
			//여기서는 위의 name이 찍히게됨 
	%>
</body>
</html>