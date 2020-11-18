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
<%@include file ="menu.jsp" %><!-- 헤더, 메인, 푸터 나눠서 이렇게 포함시킴 -->
	<%!String greeting = "웹 쇼핑몰에 오신 것을 환영합니다!";
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
				hour = hour -12; // 12시간제로 
			}
			String ct = hour + ":" + minute + ":" + second + " " +am_pm;
			out.println("현재 접속 시각: "+ ct + "\n");
			%>
		</div>
		<hr>
	</div>	
<%@include file = "footer.jsp" %>
</body>
</html>