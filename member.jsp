<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
</head>
<body bgcolor="996600">
	<table width="500" align="center" cellspacing="0" cellpadding="5">
		<tr>
			<td align="center" valign="middle" bgcolor="ffffcc">
				<table border="1" cellspacing="0" cellpadding="2" align="center">
					<form name="regForm" method="post" action="memberProc.jsp">
						<tr align="center" bgcolor="#996600">
							<td colspan="3"><font color="ffffff"><b>ȸ������</b></font></td>
						</tr>
						<tr>
							<td width="100">���̵�</td>
							<td width="200"><input type="text" name="id" size="15"></td>
							<td width="200">���̵� �����ּ���.</td>
						</tr>
						<tr>
							<td>�н�����</td>
							<td><input type="password" name="pwd" size="15"></td>
							<td>�н����带 �����ּ���.</td>
						</tr>
						<tr>
							<td>�н����� Ȯ��</td>
							<td><input type="password" name="repwd" size="15"></td>
							<td>�н����带 �����ּ���.</td>
						</tr>
						<tr>
							<td>�̸�</td>
							<td><input type="text" name="name" size="15"></td>
							<td>�Ǹ��� �����ּ���.</td>
						</tr>
						<tr>
							<td>�������</td>
							<td><input type="text" name="bday" size="15"></td>
							<td>��������� �����ּ���.</td>
						</tr>
						<tr>
							<td>�̸���</td>
							<td><input type="text" name="email" size="15"></td>
							<td>�̸����� �����ּ���.</td>
						</tr>
						<tr>
							<td colspan="3" align="center">
							<input type="submit" value="ȸ������" onclick="inputCheck()">
							&nbsp;
							<input type="reset" value="�ٽþ���">
							</td>
						</tr>
					</form>
				</table>
			</td>
		</tr>
	</table>

</body>
</html>