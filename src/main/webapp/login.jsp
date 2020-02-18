<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>ȸ������</title>
</head>
<body>
<c:if test="${not empty cookie.userCheck}">
	<c:set var="checked" value="checked"/>
</c:if>
<div class="container">
	<div class="formGroup">
		<label for="inputId">���̵�</label>
		<div>
		<input type="text" id="inputId" name="userId" value="${cookie.userCheck.value}" placeholder="���̵�">
		</div>	
	</div>
	<div class="formGroup">
		<label for="inputPassword">��й�ȣ</label>
		<div>
		<input type="password" id="inputPassword" name="userPassword" placeholder="��й�ȣ">
		</div>
	</div>
	<div class="formGroup">
		<span id="spanLoginCheck"></span>
	</div>
	<div class="formGroup">
		<label>
			<input type="checkbox" id="rememberUs" name="rememberUserId" ${checked}>���̵� ����ϱ� 
		</label>
		<div class="search">
			<a href=""></a>
		</div>
		<div>
			<button id="loginBtn" type="button" class="btn btn-primary btn-block">�α���</button>
		</div>	
	</div>
	<div class="formGroup">
		<a class="btn" href="signUp.jsp">ȸ������</a>
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
						$('#spanLoginCheck').text('�α��� ������ ��Ȯ�� �Է����ּ���')
						$('#spanLoginCheck').css('color', 'red');
					}else if (data == -2){
						$('#spanLoginCheck').text('�̸����� ���� ���ּž��մϴ�')
						$('#spanLoginCheck').css('color', 'red');
					}else{
						location.href="index.jsp"
					}
					
				}
			})
			
	
})
</script>
</html>
