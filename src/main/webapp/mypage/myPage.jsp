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
		list-style: none;
		margin: 10px;
		padding: 10px;
	}
	
	#qna {
		list-style: none;
		margin: 10px;
		padding: 10px;
	}
	
	.memInfo {
		border-bottom-style: solid;
		border-bottom-color: #6482FF;
	}
	
	.memUp {
		cursor: pointer;
	}
	
	.memUp:hover {
		color: #DCEBFF;
	}
	
	.memDel {
		cursor: pointer;
	}
	
	.memDel:hover {
		color: #DCEBFF;
	}
	
	#intro {
		float: left;
		width : 100%; margin: 20px; padding:-120px;
	}
	
	#orderBox {
		border: 1px solid #8C8CF5;
		padding: 80px;
		margin: 50px;
		width: 50px;
		float: left;
	}
	
	#orderBox:hover {
		background: #D5C2EE;
	}

	.orderInfo {
		cursor:pointer;
	}
	
	.orderInfo:hover {
		color: #DCEBFF;
	}
	
	#orderHistory {
		border: 1px solid black;
	}
	
	#memberBox {
		border: 1px solid #8C8CF5;
		padding: 80px;
		margin: 50px;
		width: 50px;
		float: left;
	}
	
	#memberBox:hover {
		background: #D5C2EE;
	}
	
	#wishBox {
		border: 1px solid #8C8CF5;
		padding: 80px;
		margin: 50px;
		width: 50px;
		float: left;
	}
	
	#wishBox:hover {
		background: #D5C2EE;
	}
	
	.wishList {
		cursor: pointer;
	}
	
	.wishList:hover {
		color: #DCEBFF;
	}
	
	#commBox {
		border: 1px solid #8C8CF5;
		padding: 80px;
		margin: 50px;
		width: 50px;
		float: left;
	}
	
	#commBox:hover {
		background: #D5C2EE;
	}
	
	#commBox {
		border: 1px solid #8C8CF5;
		padding: 80px;
		margin: 50px;
		width: 50px;
		float: left;
	}
	
	#commBox:hover {
		background: #D5C2EE;
	}
	
	.commInfo {
		border-bottom-style: solid;
		border-bottom-color: #6482FF;
	}
	
	.commBoard {
		cursor: pointer;
	}
	
	.commBoard:hover {
		color: #DCEBFF;
	}
	
	.commReply {
		cursor: pointer;
	}
	
	.commReply:hover {
		color: #DCEBFF;
	}
	
	.scrap {
		cursor: pointer;
	}
	
	.scrap:hover {
		color: #DCEBFF;
	}
	
	.question {
		border-bottom-style: solid;
		border-bottom-color: #6482FF;
	}
	
	.qHistory {
		cursor: pointer;
	}
	
	.qHistory:hover {
		color: #DCEBFF;
	}
</style>
<script>
	
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
        <a class="nav-link" href="${contextPage.request.contextPath }/app/mypage/myPage.jsp">마이페이지</a>
      </li>
    </ul>
  	</div>
  	
	</nav>
	
<div style="display:flex; flex-direction: row;">
	<div style="width : 20%;">
	<ol id="memberInfo">
	<li><h5 class="memInfo">회원 정보</h5></li>
	<li class="orderInfo"><p>주문내역</p></li>
	<li class="wishList"><p>찜목록</p></li>
	<li class="memUp"><p>회원정보수정</p></li>
	<li class="memDel"><p>회원탈퇴</p></li>
	</ol>
	
	<ol id="community">
	<li><h5 class="commInfo">커뮤니티 정보</h5></li>
	<li class="commBoard"><p>내가쓴게시물</p></li>
	<li class="commReply"><p>내가쓴댓글</p></li>
	<li class="scrap"><p>스크랩</p></li>
	</ol>
	
	<ol id="qna">
	<li><h5 class="question">상품문의</h5></li>
	<li class="qHistory">문의내역</li>
	</ol>
	
	</div>

	<div id="intro">
		<div id="orderBox">
			<h3>주문내역</h3>
		</div>
		<div id=memberBox>
			<h3>회원정보</h3>
		</div>
		<div id=wishBox>
			<h3>관심상품</h3>
		</div>
		<div id=commBox>
			<h3>커뮤니티</h3>
		</div>
	</div>
	
	<input type="hidden" name="userId" id="userId">
	<input type="hidden" name="password" id="password">
	<div class="checkFont" id="passwordCheck"></div>	
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
	
	//주문내역 박스를 눌렀을때 기본페이지 주문내역으로 이동
	$(function(){
        //이벤트를 한 번만 연결(한 번만 실행)
        $("#orderBox").one("click", function(){
           location.href = "myPage.jsp";
        });
	});
	
	//회원정보 클릭시 페이지 전환
	$('.orderInfo').on("click",function(){
		$.ajax({
			 url : ".do",
			 type: "post",
             dataType : "json",
             success : function(data){
                 
                 $("table").html("<tr><th>번호</th><th>이름</th><th>나이</th><th>사는곳</th></tr>");
                 
                 var show = "";
                 
                 $.each(data,function(index, item){
                     
                     show += "<tr><td>"+(index+1)+"</td>";
                     show += "<td>"+item.name+"</td>";
                     show += "<td>"+item.age+"</td>";
                     show += "<td>"+item.loc+"</td></tr>";
                     
                     
                 })
             	}
             })
		})
	
	$('.wishList').on("click",function(){
		$('#intro').html("");
		$('#intro').append('<table><thead><tr><th>찜목록</th></tr></thead></table>');	
	})
	
	$('.memUp').on("click",function(){
		$('#intro').html("");
		$('#intro').append('<table><thead><tr><th>회원정보수정</th></tr></thead></table>');	
	})
	
	$('.memDel').on("click",function(){
		$('#intro').html("");
		$('#intro').append('회원탈퇴를 하시기 전에 안내사항을 꼭 확인해주세요');	
	})
	
	//커뮤니티정보 클릭시 페이지 전환	
	$('.commBoard').on("click",function(){
		$.ajax({
			 url : ".do",
			 type: "post",
            dataType : "json",
            success : function(data){
                
                $("table").html("<tr><th>번호</th><th>이름</th><th>나이</th><th>사는곳</th></tr>");
                
                var show = "";
                
                $.each(data,function(index, item){
                    
                    show += "<tr><td>"+(index+1)+"</td>";
                    show += "<td>"+item.name+"</td>";
                    show += "<td>"+item.age+"</td>";
                    show += "<td>"+item.loc+"</td></tr>";
                })
            	}
            })
		})
	
	$('.commReply').on("click",function(){
		$('#intro').html("");
		$('#intro').append('<table><thead><tr><th>내가 쓴 댓글 목록</th></tr></thead></table>');	
	})
	
	$('.scrap').on("click",function(){
		$('#intro').html("");
		$('#intro').append('<table><thead><tr><th>스크랩한 게시물</th></tr></thead></table>');	
	});
	
	//상품문의 클릭시 페이지 전환
	$('.qHistory').on("click",function(){
		$('#intro').html("");
		$('#intro').append('상품문의');	
	})
</script>
</body>
</html>