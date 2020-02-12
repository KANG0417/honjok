<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>회원가입</title>
</head>
<body>

<div id="container">
	<form action="signUp.do" method="post">
	<table>
		<tr>
			<th><label>아이디</label></th>
			<td>
				<input type="text" name="id" id="id" placeholder="아이디를 입력해주세요" required>
				<div class="checkFont" id="idCheck"></div>
			</td>
		</tr>
		<tr>
			<th><label>패스워드</label></th>
			<td>
				<input type="password" name="password" placeholder="비밀번호를 입력해주세요" required>
				<div class="checkFont" id="passwordCheck"></div>
			</td>
		</tr>
		<tr>
			<th><label>이름</label></th>
			<td>
				<input type="text" name="name" placeholder="이름 입력해주세요" required>
				<div class="checkFont" id="nameCheck"></div>
			</td>
		</tr>
		<tr>
			<th><label>닉네임</label></th>
			<td><input type="text" name="nickName"></td>
		</tr>
		<tr>
			<th><label>이메일</label></th>
			<td>
				  <input type='text' name="email">
	          	<!--    <input type='text' name="emailDns">
	              <select name="emailaddr">
	                 <option value="">직접입력</option>
	                 <option value="daum.net">daum.net</option>
	                 <option value="gmail.com">gmail.com</option>
	                 <option value="hanmail.net">hanmail.net</option>
	                 <option value="naver.com">naver.com</option>
	                 <option value="nate.com">nate.com</option>
	             </select>
	         -->    
             </td>
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
			<th><label>성별</label></th>
			<td>
				<label>
  				<input type="radio" name="gender" value="남자">남자
				<input type="radio" name="gender" value="여자">여자
  				</label>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="center">
				<input type="submit" id="submit" value="회원가입">
			</td>
		</tr>
	</table>
	</form>	
	
</div>
</body>
<script>

var idJ = /^[a-z0-9]{4,12}$/;

$("#id").blur(function() {
	var userId = $('#id').val();
	$.ajax({
		url : 'userIdCheck.do?id='+ userId,
		type : 'get',
		success : function(data) {
			console.log("1 = 중복o / 0 = 중복x : "+ data);							
			
				if (data == 1) {
					// 1 : 아이디가 중복되는 문구
					$("#idCheck").text("사용중인 아이디입니다");
					$("#idCheck").css("color", "red");
					$("#submit").attr("disabled", true);
					
					} else if(idJ.test(userId)){
						// 0 : 아이디 길이 / 문자열 검사
						$("#idCheck").text("");
						$("#submit").attr("disabled", false);
			
					} else if(userId == ""){
						$('#idCheck').text('아이디를 입력해주세요 :)');
						$('#idCheck').css('color', 'red');
						$("#submit").attr("disabled", true);				
						
					}
				
					else {
						$('#idCheck').text("아이디는 소문자와 숫자 4~12자리만 가능합니다 :) :)");
						$('#idCheck').css('color', 'red');
						$("#submit").attr("disabled", true);
					}
				
				}, error : function() {
					console.log("실패");
			}
		});
	});
</script>
</html>

