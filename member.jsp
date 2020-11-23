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
				<td colspan="3">회원가입</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td>
					<input type="text" name="id">
					<button>id 중복확인</button>
				</td>
				<td>아이디 적기</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td>
					<input type="text" name="pwd">
				</td>
				<td>패스워드 적기</td>
			</tr>
			<tr>
				<td>패스워드 확인</td>
				<td>
					<input type="text" name="pwd2">
				</td>
				<td>확인</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>
					<input type="text" name="name">
				</td>
				<td>이름 적기</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<input type="radio" value="male" name="gender" selected>남 <input type="radio" value="female" name="gender">여
				</td>
				<td>성별 선택</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td>
					<input type="text" name="birthday" size="5"> ex)19940101
				</td>
				<td>생년월일 적기</td>
			</tr>
			<tr>
				<td>email</td>
				<td>
					<input type="email" name="email">
				</td>
				<td>email적기</td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td>
					<input type="text" name="zipcode" size="5">
					<button>우편번호 찾기</button>
				</td>
				<td>우편번호 적기</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>
					<input type="text" name="address" size="30">
				</td>
				<td>주소 적기</td>
			</tr>
			</tr>
			<tr>
				<td>취미</td>
				<td>
					<input type="checkbox" name="hobby" value="internet">인터넷 <input type="checkbox" name="hobby" value="trip">여행 <input type="checkbox" name="hobby" value="game">게임 <input type="checkbox" name="hobby" value="movie">영화 <input type="checkbox" name="hobby" value="workdout">운동
				</td>
				<td>취미 선택</td>
			</tr>
			<tr>
				<td>직업</td>
				<td>
					<select name="job">
						<option value="0" selected>선택하세요.
						<option value="회사원">회사원
						<option value="연구전문직">연구전문직
						<option value="교수학생">교수학생
						<option value="일반자영업">일반자영업
						<option value="공무원">공무원
						<option value="의료인">의료인
						<option value="법조인">법조인
						<option value="종교,언론,에술인">종교.언론/예술인
						<option value="농,축,수산,광업인">농/축/수산/광업인
						<option value="주부">주부
						<option value="무직">무직
						<option value="기타">기타
					</select>
				</td>
				<td>직업 선택</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<button type="submit" value="join" onclick="inputCheck()">회원가입</button>
					<button type="reset" value="reset">다시쓰기</button>
					<button type="submit" value="login" onClick="javascript:location.href='login.jsp'">로그인</button>
			</tr>
		</table>
		</form>

</body>
</html>