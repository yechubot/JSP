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
	request.setCharacterEncoding("EUC-KR");
	String season = request.getParameter("season");
	String fruit = request.getParameter("fruit");
	String id = (String)session.getAttribute("idKey");
	/*세션 객체에서 idKey로 연결된 값을 다시 문자열로 반환, 
	html의 id를 세션에 저장했다가 현재 페이지에서 다시 반환 */
	String sessionId = session.getId();
	int intervalTime = session.getMaxInactiveInterval(); //기본값 30분 1800초 

	if(id !=null){
	
	%> <h1>Session Example1</h1>
	<b><%=id %></b> 님이 좋아하시는 계절과 과일은 <p/>
	<b><%=season %></b> 과 <b><%=fruit %></b> 입니다.<p/>
	세션 id: <%=sessionId %></p>
	세션 유지시간 : <%=intervalTime %>초</p>
<%	 session.invalidate();}
	else {
		out.println("세션의 시간이 경과하였거나 연결 불가");	
	}	%>

	



</body>
</html>