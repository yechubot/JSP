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
	alert("�α��� ���� �ʾҽ��ϴ�.");
	location.href = "cookieLogin.jsp";
</script>
<%
	}
}
%>
<html>
<head>
<title>Cookie �α���</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h2 align="center">Cookie �α���</h2>
	<table width="300" border="1" align="center" bgcolor="#FFFF99">
		<tr bordercolor="#FFFF66">
			<td colspan="2" align="center"><b>Log On Page</b></td>
		</tr>
		<tr>
<%
   DBConnectionMgr pool2 = DBConnectionMgr.getInstance(); 
// � DB�� ���������� ��� ���� �Ӿƴ϶�, Db�� �����ϱ� ���� connection�� ��� �޼ҵ尡 ���ǵǾ��ִ� DBConnectionMgr Ŭ����

   Connection conn2 = null;
   PreparedStatement pstmt2 = null;
   ResultSet rs2 = null;
   
	String name="";
   try{
	  conn2 = pool2.getConnection(); 		//����� Ǯ�� Connection�� ��� ����
	  String query2 = "select name from tblRegister where id=? ";
	  pstmt2 = conn2.prepareStatement(query2);
	  pstmt2.setString(1, id);
	  rs2=pstmt2.executeQuery();
	  if(rs2.next()) // �ʼ� �Ⱦ��� ������ ����.
      name = rs2.getString("name"); 
 %>
			<td align="center"><b><%= name%></b>���� �α��� �ϼ̽��ϴ�.</td>
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
			<td align="center"><a href="cookieLogout.jsp">�α׾ƿ�</a></td>
		</tr>
	</table>
</body>
</html>