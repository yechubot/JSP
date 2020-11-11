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
String name = request.getParameter("name");
int dan = Integer.parseInt(request.getParameter("dan"));

%>
<%=name %>의 구구단 <%=dan %> 단<p>
<%
for(int i=1; i<=9; i++){
	%>
	<%=dan%> x <%=i %> = <%=dan * i %> <p>
	<%
}
%>
</body>
</html>