<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%//�ƹ������� ��� �ȴ�.
	request.setCharacterEncoding("EUC-KR"); // �ѱ� ������ �ʰ�
	String name = "Korea Football";
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Include Tag Example1 JSP</h1>
	<jsp:include page ="includeTagTop1.jsp"/>
	<!-- include �׼� �±׷� includeTagTop1.jsp�� ������ 
	������ ���Ϸ� �̵��ؼ� ó�� ��� ���븸�� ������ �� �������� ���ƿ�,���� name�� �ǹ̾��� -->
	include �׼� �±��� body�Դϴ�. 
	<%=name
			//���⼭�� ���� name�� �����Ե� 
	%>
</body>
</html>