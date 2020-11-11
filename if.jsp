<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
	<h1>If-else Example</h1>
	<%!
		String msg;
	%>
	<%
		String name = request.getParameter("name");// html에 있던 "name" 뽑아서 변수에 저장
		String color = request.getParameter("color");// html에 있던 "color" 뽑아서 변수에 저장
		
		if(color.equals("blue")){//value의 값과 비교?
			msg = "파랑";
		}else if(color.equals("red")){
			msg = "빨강";
		}else if(color.equals("orange")){
			msg = "주황"; 
		}else {
			color = "white";
			msg = "기타";
		}
	%>
<body bgcolor ="<%=color%>">
<b><%=name %>님이 좋아하는 색깔은 </b><%= msg %>입니다.
</body>
</html>