<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" buffer ="5kb" autoFlush="true"%>
    <!-- 5kb�� ���� �ڵ����, ���۴� ����ϰ� ����. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int totalBuffer = out.getBufferSize();
		int remainBuffer = out.getRemaining();
		// ���� ������� ���۸� �ƴ� ���
		int useBuffer = totalBuffer - remainBuffer;
	
	%>
	<h1>Out Example</h1>
	<p>��� Buffer�� ��ü ũ�� : <%=totalBuffer %> byte</p>
	<p>���� Buffer�� ũ��: <%=remainBuffer %>byte</p>
	<p>���� Buffer�� ��뷮: <%=useBuffer %>byte
</body>
</html>