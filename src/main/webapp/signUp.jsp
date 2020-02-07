<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

<div id="container">
	<form action="signUp.do" method="post">
	<table>
		<tr>
			<th><label>아이디</label></th>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<th><label>패스워드</label></th>
			<td><input type="text" name="password"></td>
		</tr>
		<tr>
			<th><label>닉네임</label></th>
			<td><input type="text" name="nickName"></td>
		</tr>
		<tr>
			<th><label>이메일</label></th>
			<td><input type="text" name="email"></td>
		</tr>
		<tr>
			<th><label>우편번호</label></th>
			<td><input type="text" name="adrCode"></td>
		</tr>
			<tr>
			<th><label>집주소</label></th>
			<td><input type="text" name="adr1"></td>
		</tr>
		<tr>
			<th><label>나머지 주소</label></th>
			<td><input type="text" name="adr2"></td>
		</tr>
		<tr>
			<th><label>핸드폰 번호</label></th>
			<td><input type="text" name="phone"></td>
		</tr>
		<tr>
			<th><label>생년월일</label></th>
			<td><input type="text" name="birth"></td>
		</tr>
		<tr>
			<td colspan="2" class="center">
				<input type="submit" value="회원가입">
			</td>
		</tr>
	</table>
	</form>	
</div>
</body>
</html>

