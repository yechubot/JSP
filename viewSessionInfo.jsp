<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import = "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� Ȯ��</title>
</head>
<body>
<%
	Enumeration en = session.getAttributeNames();
	//��ü�� �� �̾��� ����..? enumeration �ҽ��� ���� 
	while(en.hasMoreElements()){//�����ð� �ִ�
		String name = (String)en.nextElement();//��� ����
		String value = (String)session.getAttribute(name);
		out.println("session name:" +name + "<br/>");
		out.println("session value:" +value + "<br/>");
	}
%>
</body>
</html>