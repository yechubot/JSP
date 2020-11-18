<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
    <%@page import ="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("EUC-KR");
String when = null;
String name = request.getParameter("name");
String memo = request.getParameter("memo");
Date date = new Date();
int hour = date.getHours(); 
if(hour>12){
	when ="오후";
}else {
	when ="오전";
}
%>
<table border ="1">
<tr>
<td>성명: </td>
<td><%=name %></td>
</tr>
<tr>
<td>메모: </td>
<td><%=memo %></td>
</tr>
<tr>
<td>날짜 :</td>
<td><%=date.toLocaleString() + when%></td>
</tr>
</table>

</body>
</html>