<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1> Expression example2</h1>
	<%
		java.util.Date date = new java.util.Date();
		int hour = date.getHours();
		int one = 10;
		int two = 25;
	
	%>
	<%!//�޼ҵ�� ���� ���� 
		public int operation(int i, int j){
		return (i>j) ? i : j;
	}
	%>
	
	������ �����ϱ�� �����ϱ��? <%= (hour<12)? "����":"����" %><p>
	one, two �߿� ū ���ڴ�? <%= operation(one,two) %>
</body>
</html>