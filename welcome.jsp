<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
<%@include file ="menu.jsp" %><!-- ���, ����, Ǫ�� ������ �̷��� ���Խ�Ŵ -->
	<%!String greeting = "�� ���θ��� ���� ���� ȯ���մϴ�!";
	String tagline = "Welcome to Web Market!";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>	
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
			<%
			Date day = new Date();
			String am_pm;
			int hour = day.getHours();
			int minute = day.getMinutes();
			int second = day.getSeconds();
			if(hour/12 == 0){
				am_pm = "AM";
			}else {
				am_pm = "PM";
				hour = hour -12; // 12�ð����� 
			}
			String ct = hour + ":" + minute + ":" + second + " " +am_pm;
			out.println("���� ���� �ð�: "+ ct + "\n");
			%>
		</div>
		<hr>
	</div>	
<%@include file = "footer.jsp" %>
</body>
</html>