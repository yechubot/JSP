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
		ȯ���մϴ�.<%=name%>�� ȸ�� ���Կ� �����ϼ̽��ϴ�.
	</h2>
	<p>
		����:<%=name%>
	<p>
		���̵�:<%=id%>
	<p>
		��й�ȣ:<%
		while (f < pw.length()) {%>
		x<%f++;}%>
	<p>
		�������:
		<%=year%>��
		<%=month%>��
		<%=date%>��
	<p>
		����:<%=thisYear + 1900 - year%>
	<p>
		����:<%if (sex.equals("male")) {%>
		����<%} else {%>����<%}%>
	<p>
		�̸���:<%=email%>
</body>
</html>