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
		String name = request.getParameter("name");// html�� �ִ� "name" �̾Ƽ� ������ ����
		String color = request.getParameter("color");// html�� �ִ� "color" �̾Ƽ� ������ ����
		
		if(color.equals("blue")){//value�� ���� ��?
			msg = "�Ķ�";
		}else if(color.equals("red")){
			msg = "����";
		}else if(color.equals("orange")){
			msg = "��Ȳ"; 
		}else {
			color = "white";
			msg = "��Ÿ";
		}
	%>
<body bgcolor ="<%=color%>">
<b><%=name %>���� �����ϴ� ������ </b><%= msg %>�Դϴ�.
</body>
</html>