<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>회원가입</title>
</head>
<body>
<c:if test="${not empty cookie.userCheck}">
	<c:set var="checked" value="checked"/>
</c:if>
<div class="container">
	<div class="formGroup">
		<label for="inputId">아이디</label>
		<div>
		<input type="text" id="inputId" name="userId" value="${cookie.userCheck.value}" placeholder="아이디">
		</div>	
	</div>
	<div class="formGroup">
		<label for="inputPassword">비밀번호</label>
		<div>
		<input type="password" id="inputPassword" name="userPassword" placeholder="비밀번호">
		</div>
	</div>
	<div class="formGroup">
		<span id="spanLoginCheck"></span>
	</div>
	<div class="formGroup">
		<label>
			<input type="checkbox" id="rememberUs" name="rememberUserId" ${checked}>아이디 기억하기 
		</label>
		<div class="search">
			<a href=""></a>
		</div>
		<div>
			<button id="loginBtn" type="button" class="btn btn-primary btn-block">로그인</button>
		</div>	
	</div>
	<div class="formGroup">
		<a class="btn" href="signUp.jsp">회원가입</a>
	</div>
</div>
</body>
<script>
	$('#loginBtn').click(function(){
		var id = $('#inputId').val();
		var password = $('#inputPassword').val();
		var rememberUs = $('#rememberUs').is(':checked');
			$.ajax({
			type : "post",
			url : 'login.do',
			data : {
				id : id,
				password : password,
				rememberUserId : rememberUs
			},
					success : function(data){
					
					if(data == 0){
						$('#spanLoginCheck').text('로그인 정보를 정확히 입력해주세요')
						$('#spanLoginCheck').css('color', 'red');
					}else if (data == -2){
						$('#spanLoginCheck').text('이메일을 인증 해주셔야합니다')
						$('#spanLoginCheck').css('color', 'red');
					}else{
						location.href="getMainList.do"
					}
					
				}
			})
			
	
})
</script>
</html>
