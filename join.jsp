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
	request.setCharacterEncoding("euc-kr");
	String name, id, pw, pwCheck, email, sex;
	int year, month, date;
	java.util.Date date2 = new java.util.Date();
	int thisYear = date2.getYear();
	%>
	<%
	name = request.getParameter("name");
	id = request.getParameter("id");
	pw = request.getParameter("pw");
	pwCheck = request.getParameter("pwCheck");
	year = Integer.parseInt(request.getParameter("year"));
	month = Integer.parseInt(request.getParameter("month"));
	date = Integer.parseInt(request.getParameter("date"));
	sex = request.getParameter("sex");
	email = request.getParameter("email");
	int f = 0;
	int x = pw.length();
	if(pw!=pwCheck){
	}
	%>
	<h2>
		환영합니다.<%=name%>님 회원 가입에 성공하셨습니다.
	</h2>
	<p>
		성명:<%=name%>
	<p>
		아이디:<%=id%>
	<p>
		비밀번호:<%
		while (f < pw.length()) {%>
		x<%f++;}%>
	<p>
		생년월일:
		<%=year%>년
		<%=month%>월
		<%=date%>일
	<p>
		나이:<%=thisYear + 1900 - year%>
	<p>
		성별:<%if (sex.equals("male")) {%>
		남자<%} else {%>여자<%}%>
	<p>
		이메일:<%=email%>
</body>
</html>