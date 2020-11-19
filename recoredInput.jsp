<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form name ="recordForm" method="post" action="recoreResult.jsp">
	<h2>성적 입력</h2>
	학번:<input type="text" name="num"><p>
	성명:<input type="text" name ="name"><p>
	국어:<input type="number" name="kor"><p>
	영어:<input type="number" name="eng"><p>
	수학:<input type="number" name="math"><p>
	<input type="submit" value="제출">
	<input type="reset" value="초기화">
	</form>
</body>
</html>