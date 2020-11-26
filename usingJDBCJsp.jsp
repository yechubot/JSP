<%@ page contentType="text/html;charset=EUC-KR" import="java.sql.*"%>
<%@ page import="java.util.*, ch11.*"%>
<%
	Class.forName("org.gjt.mm.mysql.Driver");   // jsp 드라이버 인스턴스 생성
	Connection conn = null;		// JDBC 드라이버 인스턴스를 통해 dbms에 연결 준비
	Statement stmt = null;		// Statement 생성
	ResultSet rs = null;		// 쿼리실행, 결과 받음

	String id = "", 
			   pwd = "", 
			   name = "", 
			   num1 = "", 
			   num2 = "", 
			   email = "", 
		       phone = "", 
		       zipcode = "", 
		       address = "", 
		       job = "";
	int counter = 0;
	try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "1234");//Connection 생성
		stmt = conn.createStatement();//Statement 생성
		rs = stmt.executeQuery("select * from tblRegister"); //결과 받음 
%>
<html>
<head>
<title>db 연동</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
	<h2>예제</h2><br/>
	<h3>info</h3>
	<table bordercolor="#0000ff" border="1">
		<tr>
			<td><strong>ID</strong></td>
			<td><strong>PWD</strong></td>
			<td><strong>NAME</strong></td>
			<td><strong>NUM1</strong></td>
			<td><strong>NUM2</strong></td>
			<td><strong>EMAIL</strong></td>
			<td><strong>PHONE</strong></td>
			<td><strong>ZIPCODE/ADDRESS</strong></td>
			<td><strong>JOB</strong></td>
		</tr>
		<%
			if (rs != null) {

					while (rs.next()) {
						id = rs.getString("id");
						pwd = rs.getString("pwd");
						name = rs.getString("name");
						num1 = rs.getString("num1");
						num2 = rs.getString("num2");
						email = rs.getString("email");
						phone = rs.getString("phone");
						zipcode = rs.getString("zipcode");
						address = rs.getString("address");
						job = rs.getString("job");
		%>
		<tr>
			<td><%=id%></td>
			<td><%=pwd%></td>
			<td><%=name%></td>
			<td><%=num1%></td>
			<td><%=num2%></td>
			<td><%=email%></td>
			<td><%=phone%></td>
			<td><%=zipcode%>/<%=address%></td>
			<td><%=job%></td>
		</tr>
			<%
				counter++;
						}//end while
					}//end if
			%>
	</table>
	<br/>
	total records :<%=counter%>
	<%
		} catch (SQLException sqlException) {
			System.out.println("sql exception");
		} catch (Exception exception) {
			System.out.println("exception");
		} finally {
			if (rs != null)
				try {rs.close();} 			// ResultSet 해지
				catch (SQLException ex) {}
			if (stmt != null)
				try {stmt.close();} 		// Statement 해지
				catch (SQLException ex) {}
			if (conn != null)
				try {conn.close();} 		// db와 연결 해지
				catch (Exception ex) {}
		}
	%>