<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		session.setAttribute("idKey", id);//입력받은 id 값을 세션 객체에 연결
		session.setMaxInactiveInterval(5);//초 단위
	%>
	<h1>Session Example1</h1>
	<form method = "post" action ="session1_1.jsp">
	1.fav season? <br/>
	<input type ="radio" name ="season" value="spring">spring
	<input type ="radio" name ="season" value="summer">summer
	<input type ="radio" name ="season" value="fall">fall
	<input type ="radio" name ="season" value="winter">winter
	<br/>
	2.fav fruit? <br/>
	<input type ="radio" name ="fruit" value="apple">apple
	<input type ="radio" name ="fruit" value="orange">orange
	<input type ="radio" name ="fruit" value="melon">melon
	<input type ="radio" name ="fruit" value="blueberry">blueberry
	<input type ="submit" value ="see result">

	</form>
</body>
</html>