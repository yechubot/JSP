<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-color: #FBF8EF;
}

table {
	margin-left: auto;
	margin-right: auto;
	margin-top: 100px;
	border-collapse: collapse;
}

td, tr {
	padding: 10px;
}

button {
	border-style: none;
	background-color: #F5DA81;
	padding: 7px;
	margin: 10px;
	border-radius: 5px;
}
</style>
<script src ="script.js"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post" name="regFrm">
		<table border="1">
			<tr bgcolor="#F5DA81">
				<td colspan="3">ȸ������</td>
			</tr>
			<tr>
				<td>���̵�</td>
				<td>
					<input type="text" name="id">
					<button>id �ߺ�Ȯ��</button>
				</td>
				<td>���̵� ����</td>
			</tr>
			<tr>
				<td>�н�����</td>
				<td>
					<input type="text" name="pwd">
				</td>
				<td>�н����� ����</td>
			</tr>
			<tr>
				<td>�н����� Ȯ��</td>
				<td>
					<input type="text" name="pwd2">
				</td>
				<td>Ȯ��</td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td>
					<input type="text" name="name">
				</td>
				<td>�̸� ����</td>
			</tr>
			<tr>
				<td>����</td>
				<td>
					<input type="radio" value="male" name="gender" selected>�� <input type="radio" value="female" name="gender">��
				</td>
				<td>���� ����</td>
			</tr>
			<tr>
				<td>�������</td>
				<td>
					<input type="text" name="birthday" size="5"> ex)19940101
				</td>
				<td>������� ����</td>
			</tr>
			<tr>
				<td>email</td>
				<td>
					<input type="email" name="email">
				</td>
				<td>email����</td>
			</tr>
			<tr>
				<td>�����ȣ</td>
				<td>
					<input type="text" name="zipcode" size="5">
					<button>�����ȣ ã��</button>
				</td>
				<td>�����ȣ ����</td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td>
					<input type="text" name="address" size="30">
				</td>
				<td>�ּ� ����</td>
			</tr>
			</tr>
			<tr>
				<td>���</td>
				<td>
					<input type="checkbox" name="hobby" value="internet">���ͳ� <input type="checkbox" name="hobby" value="trip">���� <input type="checkbox" name="hobby" value="game">���� <input type="checkbox" name="hobby" value="movie">��ȭ <input type="checkbox" name="hobby" value="workdout">�
				</td>
				<td>��� ����</td>
			</tr>
			<tr>
				<td>����</td>
				<td>
					<select name="job">
						<option value="0" selected>�����ϼ���.
						<option value="ȸ���">ȸ���
						<option value="����������">����������
						<option value="�����л�">�����л�
						<option value="�Ϲ��ڿ���">�Ϲ��ڿ���
						<option value="������">������
						<option value="�Ƿ���">�Ƿ���
						<option value="������">������
						<option value="����,���,������">����.���/������
						<option value="��,��,����,������">��/��/����/������
						<option value="�ֺ�">�ֺ�
						<option value="����">����
						<option value="��Ÿ">��Ÿ
					</select>
				</td>
				<td>���� ����</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<button type="submit" value="join" onclick="inputCheck()">ȸ������</button>
					<button type="reset" value="reset">�ٽþ���</button>
					<button type="submit" value="login" onClick="javascript:location.href='login.jsp'">�α���</button>
			</tr>
		</table>
		</form>

</body>
</html>