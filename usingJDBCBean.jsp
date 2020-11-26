<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.util.*, ch11.*"%>			// ch11의 RegisterBean과 RegisterMgr 사용 위해 임포트
<jsp:useBean id="regMgr" class="ch11.RegisterMgr"/>		// RegisterMGR 빈 생성(테이블의 레코드를 불러와서 빈에 담는 역할)
<html>
<head>
<title>JSP에서 데이터베이스 연동</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
<h2>Bean를 사용한 데이터베이스 연동 예제</h2><br/>
<h3>회원정보</h3>
<table bordercolor="#0000ff" border="1">
<tr>
   <td><strong>ID</strong></td>
   <td><strong>PASSWD</strong></td>
   <td><strong>NAME</strong></td>
   <td><strong>NUM1</strong></td>
   <td><strong>NUM2</strong></td>
   <td><strong>EMAIL</strong></td>
   <td><strong>PHONE</strong></td>
   <td><strong>ZIPCODE/ADDRESS</strong></td>
   <td><strong>JOB</strong></td>	
</tr>
<%
   Vector<RegisterBean> vlist = regMgr.getRegisterList();  	// 메소드 반환값을 받기 위해 Vector형 변수로 받음.
	int counter = vlist.size();			// 벡터의 사이즈(크기)는 레코드의 개수임.
	for(int i=0; i<vlist.size(); i++){		// 벡터의 크기만큼 for문 반복
   		RegisterBean regBean = vlist.get(i);
%>
<tr>
	<td><%=regBean.getId()%></td>
	<td><%=regBean.getPwd()%></td>
	<td><%=regBean.getName()%></td>
	<td><%=regBean.getNum1()%></td>
	<td><%=regBean.getNum2()%></td>
	<td><%=regBean.getEmail()%></td>
	<td><%=regBean.getPhone()%></td>
	<td><%=regBean.getZipcode()%>/<%=regBean.getAddress()%></td>
	<td><%=regBean.getJob()%></td>
</tr>
<%}%>
</table>
<br/><br/>
total records : <%= counter %> 
</body>
</html>