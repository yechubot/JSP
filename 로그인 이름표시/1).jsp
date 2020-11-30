<%@page import="ch12.DBConnectionMgr"%>
<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=EUC-KR"%>

<%
	String id = "";
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("idKey")) {
				id = cookies[i].getValue();
			}
		}
		if (id.equals("")) {
%>
<script>
	alert("로그인 되지 않았습니다.");
	location.href = "cookieLogin.jsp";
</script>
<%
	}
}
%>
<html>
<head>
<title>Cookie 로그인</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h2 align="center">Cookie 로그인</h2>
	<table width="300" border="1" align="center" bgcolor="#FFFF99">
		<tr bordercolor="#FFFF66">
			<td colspan="2" align="center"><b>Log On Page</b></td>
		</tr>
		<tr>
<%
   DBConnectionMgr pool2 = DBConnectionMgr.getInstance(); 
// 어떤 DB와 계정인지를 담고 있을 뿐아니라, Db를 연결하기 위해 connection을 얻는 메소드가 정의되어있는 DBConnectionMgr 클래스

   Connection conn2 = null;
   PreparedStatement pstmt2 = null;
   ResultSet rs2 = null;
   
	String name="";
   try{
	  conn2 = pool2.getConnection(); 		//얻어진 풀로 Connection을 얻는 과정
	  String query2 = "select name from tblRegister where id=? ";
	  pstmt2 = conn2.prepareStatement(query2);
	  pstmt2.setString(1, id);
	  rs2=pstmt2.executeQuery();
	  if(rs2.next()) // 필수 안쓰면 오류가 난다.
      name = rs2.getString("name"); 
 %>
			<td align="center"><b><%= name%></b>님이 로그인 하셨습니다.</td>
<%
   }catch(SQLException sqlException){
       System.out.println(sqlException.getMessage());
   }catch(Exception exception){
      System.out.println(exception.getMessage());
   }finally{
      if( rs2 != null ) 
         try{ rs2.close(); } 
         catch(SQLException ex) {}
      if( pstmt2 != null ) 
         try { pstmt2.close(); } 
         catch(SQLException ex) {}
      if( conn2 != null ) 
         try{ pool2.freeConnection(conn2); } 
         catch(Exception ex){}
   }
%>
			<td align="center"><a href="cookieLogout.jsp">로그아웃</a></td>
		</tr>
	</table>
</body>
</html>