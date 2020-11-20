<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import = "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 확인</title>
</head>
<body>
<%
	Enumeration en = session.getAttributeNames();
	//객체가 쭉 이어진 형태..? enumeration 소시지 마냥 
	while(en.hasMoreElements()){//가져올게 있니
		String name = (String)en.nextElement();//요소 추출
		String value = (String)session.getAttribute(name);
		out.println("session name:" +name + "<br/>");
		out.println("session value:" +value + "<br/>");
	}
%>
</body>
</html>