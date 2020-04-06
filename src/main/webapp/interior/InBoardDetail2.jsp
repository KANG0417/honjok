<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<title>인테리어 글 상세</title>
<style>
	#main {
		border: 1px solid gray;
		padding: 50px;
		margin: 20px;
		text-align: center;
	}
	
	body {
		background-color: #f1f2f6;
	}
	
	/* 글 테두리 */
	#inter-border {
		background-color: white;
		width: 900px;
		heigh: 800px;
		margin: 20px;
	}
	
	/* 글 상세 */
	.inter-title {
		padding: 20px;
		margin: 30px;
		text-align: left;
		font-size: 30px;
		font-weight: bold;
		color: #226b80;
	}
	
	.inter-writer {
		text-align: left;
		font-size: 15px;
	}
	
	.inter-hit {
		float: right;
	}
	
	.inter-regdate {
		float: right;
	}
	
	.inter-content {
		padding: 120px;
	}
	
	.r-sidebar {
		float: right;
		width: 300px;
		height: 500px;
		margin-right: 20px;
		border: 2px solid red;
		background-color: #ffe7d5;
	}
	
	/* 댓글 */
	.comment-list {
		list-style: none;
	}
	
	.comment-title {
		border: 1px solid black;
		padding: 20px;
		margin: 10px;
	}
	
	.content {
		width: 1100px;
		padding: 20px;
		margin-bottom: 50px;
	}
	
	.parent { 
	  display: grid; 
	  grid-template-areas:
	    "i1 i2 i3"
	    "i4 i4 i4";
	    
	  /* div {
	    border: 1px solid #000;
	  } */
	  
	 .writer {
	    grid-area: i1;
	  }
	 .date {
	    grid-area: i2;
	  }
	 .reply-re {
	    grid-area: i3;
	  }
	 .reply-content {
	    grid-area: i4;
	  }
	}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js">
</script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://kit.fontawesome.com/73d0df04d6.js"
	crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<script>
	//게시물 삭제
	function fn_delete() {
		var frmDel = document.frm;
		/* //비밀번호 일치여부 확인
		if (frmDel.pwd.value == "${bvo.pwd}") {
			//비밀번호 일치하는 경우  */
			var isDelete = confirm("정말 삭제 할까요?");
			if (isDelete) {
/*				frmDel.submit(); 
				location.href="deleteArticle.do?com_seq="+seq; */
				document.getElementById('deleteform').submit();
 
			} else {
				history.back();
			}
/* 		} else {
			//비밀번호 불일치
			
			alert("비밀번호가 일치하지 않습니다.");
			frmDel.pwd.value = "";
			frmDel.pwd.focus();
			return;
		} */
	}
		//게시물 공유하기
	    $('a[href="#ex7"]').click(function(event) {
	      event.preventDefault();
	 
	      var obShareUrl = document.getElementById("ShareUrl");
		  obShareUrl.value = window.document.location.href;
	      $(this).modal({
	        fadeDuration: 250
	      });
	    });
	    
	    function CopyUrlToClipboard()
	    {	var obShareUrl = document.getElementById("ShareUrl");
	    
	    	obShareUrl.value = window.document.location.href;  // 현재 URL 을 세팅해 줍니다.
	    	obShareUrl.select();  // 해당 값이 선택되도록 select() 합니다
	    	document.execCommand("copy"); // 클립보드에 복사합니다. 
	    	obShareUrl.blur(); // 선택된 것을 다시 선택안된것으로 바꿈니다.
	    	alert("URL이 클립보드에 복사되었습니다");
	    }
		
	    function shareKakaotalk() {
	    	 Kakao.Link.createScrapButton({
	 	        container: '#kakao-link-btn',
	 	        requestUrl: 'https://developers.kakao.com'
	 	      });
	    };

</script>

</head>
<body>
<div id="main">원마켓</div>
<%-- <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
  <a class="navbar-brand" href="index.jsp">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="signUp.jsp">회원가입</a>
      </li>
      <c:if test="${sessionScope.userSession.id == null }">
      	<li class="nav-item">
      	<a class="nav-link" href="${contextPage.request.contextPath }/app/login.jsp">로그인</a>
      	</li>
      </c:if>
      <c:if test="${sessionScope.userSession.id != null }">
      	<li class="nav-item">${userSession.id} 님 안녕하세요!</li><a href="${contextPage.request.contextPath }/app/logout.do">Log-out</a>
      </c:if>
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
</nav> --%>

		<!-- 본문 내용 -->
	<section id="sBox">
		<input type="hidden" name="comSeq" id="comSeq" value="${interiorvo.comSeq }">
		<input type="hidden" name="id" id="id" value="${interiorSelect.id }">
		<div id="inter-border">
			<div class="inter-title">
				${interiorSelect.title }
			</div>
			<div>
			<span class="inter-writer">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${interiorSelect.nickName }
			</span>
			<span class="inter-hit">
				${interiorSelect.hit }&nbsp;&nbsp;&nbsp;&nbsp;
			</span>
			<span class="inter-regdate">
				&nbsp;&nbsp;&nbsp;${interiorSelect.regdate }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</span>
			</div>
			<article class="inter-content">
				${interiorSelect.content }
			</article>
	
		<!-- 검색 사이드바 -->
		<div class="r-sidebar">
			<p>검색</p>
		</div>
		
		<!-- 좋아요 -->
		<i id="likes" class="far fa-heart fa-5x"></i><span>좋아요</span>${likesCount }

		<!-- 공유하기 -->
		<div id="ex1" class="modal">
		<p><input type="text" id = "ShareUrl">
		<div class="rgyShare">
	    <h3>이 글을 공유합시다</h3>
	    <div class="rgyShare-inner">
	        <a href="#" target="_blank" onclick="javascript:window.open( 'https://www.facebook.com/sharer/sharer.php?u=' + encodeURIComponent( document.URL )+'&t=' + encodeURIComponent( document.title ), 'jb-share-window-facebook', 'menubar=no, toolbar=no, resizable=yes, scrollbars=yes, width=600, height=600' ); return false;" title="페이스북"><img src="../img/logo_facebook.png" alt="facebook"></a>
	        <a href="#" target="_blank" onclick="javascript:window.open( 'https://twitter.com/intent/tweet?text=' + encodeURIComponent( document.title ) + '%20(' + encodeURIComponent( document.URL ) + ')', 'jb-share-window-google-plus', 'menubar=no, toolbar=no, resizable=yes, scrollbars=yes, width=600, height=600' ); return false;" title="트위터"><img src="../img/logo_twitter.png" alt="twitter"></a>
	        <a href="javascript:shareKakaotalk()" title="카카오톡"><img src="../img/logo_kakao.png" alt="kakaoTalk"></a>
	        <a href="#" target="_blank" onclick="javascript:window.open( 'https://story.kakao.com/share?url=' + encodeURIComponent( document.URL ), 'jb-share-window-kakostory', 'menubar=no, toolbar=no, resizable=yes, scrollbars=yes, width=600, height=600' ); return false;" title="카카오스토리"><img src="../img/logo_kakaostory.png" alt="kakaostory"></a>
	        <a href="#" target="_blank" onclick="javascript:window.open( 'https://share.naver.com/web/shareView.nhn?url=' + encodeURIComponent( document.URL ) + '&title=' + encodeURIComponent( document.title ), 'jb-share-window-naver', 'menubar=no, toolbar=no, resizable=yes, scrollbars=yes, width=600, height=600' ); return false;" title="네이버"><img src="../img/logo_naver.png" alt="naver"></a>
	    </div>
		</div>
		<span class="btn-type1"><button OnClick="javascript:CopyUrlToClipboard()">URL 복사</button></span>
		</div>
		<p><a href="#ex1" rel="modal:open">공유하기</a></p>
		
		<div>
		<!-- 글수정 -->
	  	<form class="update" action="InBoardUpdate.jsp">
		<span>
	    <c:set value="${interiorSelect }" var="inter" scope="session"></c:set>
	    		<input type="submit" value="글 수정">
		</span>
		</form>
		
		<!-- 글삭제 -->
		<form action="deleteArticle.do?comSeq=${interiorSelect.comSeq }" id="deleteform">
		<span>
			<input type="button" onclick="fn_delete()" value="글 삭제">
			<input type="hidden" name="comSeq" id="comSeq" value="${interiorSelect.comSeq }">
		</span>
		</form>
		</div>
		
		<a href="${contextPage.request.contextPath}/app/interior/interiorAllList.do">글목록</a>
		</div>
		
		<!-- 댓글 목록 -->
		<div class="comment-add">
			<ol class="comment-list">
				<li>
				<div class="comment-title">댓글</div>
				<c:forEach var="comment" items="${commentSelect }">
					<span class="writer">${comment.nickName }</span>
					<span class="date">${comment.regdate}</span>
					<c:if test="${empty c_list }"> <!-- 댓글이 없을시 step:0, lev:0 -->
						<input type="hidden" name="step" value="0">
						<input type="hidden" name="lev" value="0">
					</c:if>
					<c:if test="${stepResult >= 1 }">
						<input type="hidden" name="step" value="${stepResult}">
						<input type="hidden" name="lev" value="0">
					</c:if>
					<button class="reply-re">답글</button>
				<c:if test="${ sessionScope.userSession.nickName == comment.nickName }">
					<button class="reply-up">수정</button>
					<button class="reply-del">삭제</button>
				</c:if>
					<p class="reply-content">${comment.content }</p>
			</c:forEach>
				</li>
			</ol>
		</div>
		
		<!-- 댓글 입력창 -->
		<div class="comment-wri">
                <span><strong>댓글입력</strong></span> <span id="cCnt"></span>
                <hr>
                    <c:if test="${sessionScope.userSession.id == null }">
                    <textarea class="content" placeholder="로그인시 댓글입력이 가능합니다" readonly></textarea>
                    <br>
                    </c:if>
                    <c:if test="${sessionScope.userSession.id != null }">
           		<form method="post" action="addComment.do">
	           		<input type="hidden" name="id" value="${sessionScope.userSession.id }"> 
				    <input type="hidden" name="nickName" value="${sessionScope.userSession.nickName }"> 
					<input type="hidden" name="comSeq" value="${interiorSelect.comSeq }">
					
					
					<c:if test="${empty c_list }"> <!-- 댓글이 없을시 idx:0, lev:0 -->
						<input type="hidden" name="idx" value="0">
						<input type="hidden" name="lev" value="0">
					</c:if>
					<c:if test="${stepResult >= 1 }">
						<input type="hidden" name="idx" value="${stepResult}">
						<input type="hidden" name="lev" value="0">
					</c:if>
					
                    <textarea style="width: 1100px" rows="3" cols="30" id="comment" name="content" placeholder="댓글을 입력하세요"></textarea>
                    <br>
                    <div>
                    <input type="submit" class="comment-push" value="등록">
                    </div>
				</form>
                   </c:if>
            </div>
</section>

<script>

	//좋아요
	$('#likes').click(function(){
		if("${sessionScope.userSession.id}" != ""){
			var className = $(this).attr('class');
			if(className == "far fa-heart fa-5x" ){
				$(this).removeClass();
				$(this).addClass("far fa-heart fa-5x");
				var comSeq = '${interiorSelect.comSeq}';
				console.log('${interiorSelect.comSeq}');
				var id = '${sessionScope.userSession.id}';
				$.ajax({
					type:'post',
					url:"updateLike.do",
					data:{comSeq :comSeq,
							id:id
						},
					success:function(json){
						console.log("성공");
					},error: function(jqXHR, textStatus, errorThrown) {
						alert("오류가 발생하였습니다.");
					}
				});
			} else{
				$(this).removeClass();
				$(this).addClass("far fa-heart fa-5x");
			}
			} else{
			var result = confirm("로그인이 필요한 서비스입니다. 로그인 하시겠습니까?");
			if(result){
				location.href = "/app/login.jsp";
			}
			}
		});
	
	
		//댓글 수정
		$('.reply-up').click(function(){
				var form = $('comment-wri');
				var data = new FormData(form);
			$.ajax({
				type:'post',
				url:"upComment.do",
				data:{ comSeq:comSeq,
						idx:idx },
				success:function(form){
					console.log("성공");
					$('.comment-wri').('<span><strong>댓글입력</strong></span> <span id="cCnt"></span>\
			                <hr>\
		                    <c:if test="${sessionScope.userSession.id == null }">\
		                    <textarea class="content" placeholder="로그인시 댓글입력이 가능합니다" readonly></textarea>\
		                    <br>\
		                    </c:if>\
		                    <c:if test="${sessionScope.userSession.id != null }">\
		           		<form method="post" action="addComment.do">\
			           		<input type="hidden" name="id" value="${sessionScope.userSession.id }">\
						    <input type="hidden" name="nickName" value="${sessionScope.userSession.nickName }"> \
							<input type="hidden" name="comSeq" value="${interiorSelect.comSeq }">\
							<c:if test="${empty c_list }">\
								<input type="hidden" name="step" value="0">\
								<input type="hidden" name="lev" value="0">\
							</c:if>\
							<c:if test="${stepResult >= 1 }">\
								<input type="hidden" name="step" value="${stepResult}">\
								<input type="hidden" name="lev" 
								value="0">\
							</c:if>\
		                    <textarea style="width: 1100px" rows="3" cols="30" id="comment" name="content" placeholder="댓글을 입력하세요"></textarea>\
		                    <br>\
		                    <div>\
		                    <input type="submit" class="comment-push" value="등록">\
		                    </div>\
						</form>\
		                   </c:if>');
					
				},error: function(jqXHR, textStatus, errorThrown) {
					alert("오류가 발생하였습니다.");
				}
			});
		})
</script>
</body>
</html>