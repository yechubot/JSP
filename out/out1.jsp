<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" buffer ="5kb" autoFlush="true"%>
    <!-- 5kb가 차면 자동출력, 버퍼는 출력하고 비운다. -->
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
		// 현재 사용중인 버퍼를 아는 방법
		int useBuffer = totalBuffer - remainBuffer;
	
	%>
	<h1>Out Example</h1>
	<p>출력 Buffer의 전체 크기 : <%=totalBuffer %> byte</p>
	<p>남은 Buffer의 크기: <%=remainBuffer %>byte</p>
	<p>현재 Buffer의 사용량: <%=useBuffer %>byte
</body>
</html>