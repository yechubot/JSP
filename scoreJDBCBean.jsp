<%@ page contentType="text/html; charset=EUC-KR"%>
 <%@page import="java.util.*, ch11.* "%>
 <jsp:useBean id = "scoreMgr" class = "ch11.ScoreMgr"/>
<!DOCTYPE html>
<html>
<style>
body{
	background-color:beige;
}
table {
	border: 1px solid black;
	 border-collapse:collapse;
	 margin-left:auto;
	 margin-right:auto;
	 margin-top:100px;
}
tr,td{
	padding:10px;
}	
h2,h3{
	text-align:center;
}

</style>
<head>
<title>Insert title here</title>
</head>
<body>
<h2>bean & db </h2>
<table>
	<tr>
		<td>idno</td>
		<td>name</td>
		<td>pub</td>
		<td>java</td>
		<td>ms</td>
	</tr>
	<% 
		Vector<ScoreBean> slist = scoreMgr.getScoreBeans();
		int counter = slist.size();
		for(int i = 0; i<slist.size(); i++){
		ScoreBean sBean = slist.get(i);
	
	%>
	<tr>
	<td><%=sBean.getIdno()%></td>
	<td><%=sBean.getName() %></td>
	<td><%=sBean.getPub() %></td>
	<td><%=sBean.getJava() %></td>
	<td><%=sBean.getMs() %></td>
	</tr>
	<% }%>
</table>
<br/><br/>
<h3>total records : <%= counter %> </h3>
</body>
</html>