<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>Insert title here</title>
</head>
<body>
<h1>Script Example</h1>
<%!/*멤버변수 선언*/
	String declaration = "declaration";
%>
<%!
	public String decMethod(){
	return declaration;
}
%>
<%
String scirptlet = "scriptlet";
String comment = "comment";
out.println("내장객체를 이용한 출력:" +declaration+"<p>");
%>
선언문의 출력 1: <%= declaration %><p>
선언문의 출력 2: <%= decMethod() %><p>
스크릿트릿의 출력: <%= scirptlet %><p>
주석 방법
<!-- comment -->
</body>
</html>
