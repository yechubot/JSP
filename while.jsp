<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>while example</h1>
<%
String msg = request.getParameter("msg");
int number = Integer.parseInt(request.getParameter("number"));
int count = 0;
while(number > count){
%>
	<b><%=msg%></b><br><%-- ǥ�����̴ϱ� ���� ������ --%>
<%	count++;
}
%>
</body>
</html>