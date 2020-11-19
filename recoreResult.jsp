<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    request.setCharacterEncoding("EUC-KR");
   int scoreKor = Integer.parseInt(request.getParameter("kor"));
   int scoreEng = Integer.parseInt(request.getParameter("eng"));
   int scoreMath = Integer.parseInt(request.getParameter("math"));
   int total = scoreEng+scoreKor+scoreMath;
   
    %>
    <jsp:useBean id="recordBean" class="bean01.RecordBean" scope="page"/>
    <jsp:setProperty name="recordBean" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>record result</title>
</head>
<body>
	<h2>성적표(<jsp:getProperty name="recordBean" property="name"/>)</h2><p>
		학번:<jsp:getProperty name="recordBean" property="num"/><p>
		국어:<jsp:getProperty name="recordBean" property="kor"/><p>
		영어:<jsp:getProperty name="recordBean" property="eng"/><p>
		수학:<jsp:getProperty name="recordBean" property="math"/><p>
		총점:<%=total %><p>
		평균:<%=total/3 %><p>
</body>
</html>