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
<title>회원가입 확인</title>
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
							회원님이 작성하신 내용입니다.
						 	</b></font>
						</tr>
						<tr>
							<td width="25%">아이디:</td>
							<td><jsp:getProperty name="regBean" property="id" /></td>
						</tr>
						<tr>
							<td >비밀번호:</td>
							<td><jsp:getProperty name="regBean" property="pwd" /></td>
						</tr>
						<tr>
							<td >이름:</td>
							<td><jsp:getProperty name="regBean" property="name" /></td>
						</tr>
						<tr>
							<td >생일:</td>
							<td><jsp:getProperty name="regBean" property="bday" /></td>
						</tr>
						<tr>
							<td >이메일:</td>
							<td><jsp:getProperty name="regBean" property="email" /></td>
						</tr>
						<tr>
							<td colspan="2" align ="center">
							<input type="button" value="회원가입">
							<input type="button" value="다시쓰기">
							</td>
						</tr>
					</form>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>