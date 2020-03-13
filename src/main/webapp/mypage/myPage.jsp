<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
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
</style>
</head>
<body>
	<div id="main">
		원마켓
	</div>
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
        <a class="nav-link" href="login.jsp">로그인</a>
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
	<ol id="memberInfo">
	<li><p>회원 정보</p></li>
	<li><p><a href="${contextPage.request.contextPath}/app/mypage/memberUpdate.do">회원정보 수정</a></p></li>
	<li><p><a href="#">회원탈퇴</a></p>
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
</body>
</html>