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
	/*���� ��ü���� idKey�� ����� ���� �ٽ� ���ڿ��� ��ȯ, 
	html�� id�� ���ǿ� �����ߴٰ� ���� ���������� �ٽ� ��ȯ */
	String sessionId = session.getId();
	int intervalTime = session.getMaxInactiveInterval(); //�⺻�� 30�� 1800�� 

	if(id !=null){
	
	%> <h1>Session Example1</h1>
	<b><%=id %></b> ���� �����Ͻô� ������ ������ <p/>
	<b><%=season %></b> �� <b><%=fruit %></b> �Դϴ�.<p/>
	���� id: <%=sessionId %></p>
	���� �����ð� : <%=intervalTime %>��</p>
<%	 session.invalidate();}
	else {
		out.println("������ �ð��� ����Ͽ��ų� ���� �Ұ�");	
	}	%>

	



</body>
</html>