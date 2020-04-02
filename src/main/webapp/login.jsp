<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>회원가입</title>
<!-- CSS 연결 -->
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
<link rel="stylesheet" type="text/css"
  
   href="/app/resources/css/main/main.css">
<link rel="stylesheet" type="text/css"
   href="/app/resources/css/login/login.css">
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>

<c:if test="${not empty cookie.userCheck}">
	<c:set var="checked" value="checked"/>
</c:if>
<div class="container">
	<div class="formGroup1">
		<!-- <label for="inputId"></label> -->
		<!-- <img src="../app/img/user-2517433_960_720.png" class="user-icon"> -->
		<input class="user-icon" type="text" id="inputId" name="userId" value="${cookie.userCheck.value}" placeholder="아이디">
	</div>
	<br style="clear:both">
	<div class="formGroup2">
		<!-- <label for="inputPassword">비밀번호</label> -->
		<!-- <img src="../app/img/iconfinder-lock-4341303_120563.png" class="pwd-icon"> -->
		<input type="password" id="inputPassword" name="userPassword" placeholder="비밀번호">
	</div>
	<div class="formGroup3">
		<span id="spanLoginCheck"></span>
	</div>
	<div class="formGroup4">
		<div class="search">
			<a href=""></a>
		</div>
		<div>
			<button id="loginBtn" type="button" class="btn btn-primary btn-block">로그인</button>
		<span>
			<button id="sign-upBtn" onclick="location.href='signUp.jsp' ">회원가입</button>
		</span>
		<span>
			<label>
			<input type="checkbox" id="rememberUs" name="rememberUserId" ${checked}>아이디 기억하기 
			</label>
		</span>
		</div>
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