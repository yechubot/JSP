<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
		int one; 
		int two = 1;
		public int plusMethod(){
			return one+ two;
		}
		String msg;
		int three;
		/*������� �ʱ�ȭ ���� ������ int 0, String null ����*/
	%>
	one + two -> <%=plusMethod() %><p>
	String msg -> <%= msg %><p>
	int three? -> <%=three %>
</body>
</html>