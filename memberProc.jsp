<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="regBean" class="bean01.MemberBean" scope="page" />
<jsp:setProperty name="regBean" property="*" />

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ Ȯ��</title>
</head>
<body bgcolor="#996600">
	<table width="80%" align="center" cellspacing="0" cellpadding="5">
		<tr>
			<td align="center" valign="middle" bgcolor="ffffcc">
				<table width="90%" border="1" cellpadding="2" align="center">
					<form name="regForm2" method="post" action="memberInsert.jsp">
						<tr align="center" bgcolor="#996600">
							<td colspan="3"><font color="ffffff"><b> 
							<jsp:getProperty name="regBean" property="name" /> 
							ȸ������ �ۼ��Ͻ� �����Դϴ�.
						 	</b></font>
						</tr>
						<tr>
							<td width="25%">���̵�:</td>
							<td><jsp:getProperty name="regBean" property="id" /></td>
						</tr>
						<tr>
							<td >��й�ȣ:</td>
							<td><jsp:getProperty name="regBean" property="pwd" /></td>
						</tr>
						<tr>
							<td >�̸�:</td>
							<td><jsp:getProperty name="regBean" property="name" /></td>
						</tr>
						<tr>
							<td >����:</td>
							<td><jsp:getProperty name="regBean" property="bday" /></td>
						</tr>
						<tr>
							<td >�̸���:</td>
							<td><jsp:getProperty name="regBean" property="email" /></td>
						</tr>
						<tr>
							<td colspan="2" align ="center">
							<input type="button" value="ȸ������">
							<input type="button" value="�ٽþ���">
							</td>
						</tr>
					</form>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>