<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원상세페이지</title>
<style>
	#main {
		border: 1px solid gray;
		padding: 50px;
		margin: 20px;
		text-align: center;
	}
	
	#memberInfo {
		list-style: none;
		margin: 10px;
		padding: 10px;
	}
	
	#community {
		margin: 10px;
		padding: 10px;
	}
	
	#qna {
		margin: 10px;
		padding: 10px;
	}
	
	.mem1 {
		
	}
	
	#ss {
		border: 1px solid #929fd8;
		padding: 20px;
		margin: 50px;
		float: left;
	}
</style>
<script>
	function fun() {
		$.ajax({
			url:"",
			type:"",
			dataType:"",
			data : {userid: userid} ,
			success:function(data){
								
				data.id 
				append("<div>"+data.id+"</div>");
				$('#ss').htl
				
			},
			error:function (request,status,error) {
				
			}
		});
	}
	
</script>
</head>
<body>
	<div id="main">원마켓</div>
	<br>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
	  <a class="navbar-brand" href="index.jsp">Home</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	 <div class="collapse navbar-collapse" id="collapsibleNavbar">
    	<ul class="navbar-nav">
      	<li class="nav-item">
        <a class="nav-link" href="signUp.jsp">회원가입</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="login.jsp">${userSession.id}님 안녕하세요!</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${contextPage.request.contextPath }/app/interior/interiorAllList.do">인테리어</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${contextPage.request.contextPath }/app/cook/CookAll.do">레시피</a>
      </li>    
      <li class="nav-item">
        <a class="nav-link" href="${contextPage.request.contextPath }/app/honjokInfo/select.do">혼밥정보</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="/app/admin/productReg.jsp">상품등록</a>
      </li>     
    </ul>
  	</div>
  	
	</nav>
	
<div style="display:flex; flex-direction: row;">
	<div style="width : 20%;">
	<ol id="memberInfo">
	<li><p>회원 정보</p></li>
	<li class="mem1"><p><a href="" onclick="fun()">회원정보수정</a></p></li>
	<li><p><a id="del" href="#">회원탈퇴</a></p>
	<li><p><a href="#">주문내역</a></p>
	<li><p><a href="#">장바구니</a></p>
	<p><a href="#">찜목록</a></p>
	</ol>
	
	<div id="community">
	<p>커뮤니티 정보</p>
	<p><a href="#">내가쓴게시물</a></p>
	<p><a href="#">내가쓴댓글</a></p>
	<p><a href="#">스크랩</a></p>
	</div>
	
	<div id="qna">
	<p>상품문의</p>
	<p><a href="#">문의내역</a></p>
	</div>
	
	</div>	
<form action="/app/selectMypage.do" method="post">	
	<div id="ss" style="width : 79%; margin: 20px; padding:-15px;">
		<c:if test="${userSession.password == null }">
		<p>회원정보를 수정하시려면 비밀번호를 입력해주세요</p>
		<input type="password">
		<input type="button" value="확인" onclick="userUpdateCh()">
		</c:if>
		<c:if test="${userSession.password != null }">
		<input type="submit" value="확인" onclick="userUpdate()">
		</c:if>
	</div>
	
	<input type="hidden" name="userId" id="userId">
	<input type="hidden" name="password" id="password">
	<div class="checkFont" id="passwordCheck"></div>
</form>	
</div>
<script>
	/* $('#del').on("click",function(){
		$('#ss').html("");
		$('#ss').append('<div>회원탈퇴</div>');	
	}) */
	
	/* var empJ = /\s/g; //공백체크 정규표현식
	var pwJ = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/; */
	function userUpdateCh() { 
	         alert("비밀번호를 다시 입력해주세요"); 
	    }
	
	function update() { 
	         alert(""); 
	    }
</script>
</body>
</html>