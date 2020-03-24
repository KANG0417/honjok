<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<title>글상세보기</title>
<style>
	#main {
		border: 1px solid gray;
		padding: 50px;
		margin: 20px;
		text-align: center;
	}
	
	#container {
		width: 700px;
		margin: 0 auto;
	}
	
	/* 글 상세 */
	.inter-title {
		border-top: 2px solid #4169E1;
		border-bottom: 2px solid #4169E1;
		padding: 20px;
		text-align: center;
		font-size: 20px;
	}
	
	.inter-writer {
		
	}
	
	.parent { 
	  display: grid; 
	  grid-template-areas:
	    "i1 i2 i3"
	    "i4 i4 i4";
	  div {
	    border: 1px solid #000;
	  }
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
</nav>
<div id="container">
	<h1>글 상세</h1>
		<input type="hidden" name="comSeq" id="comSeq" value="${interiorvo.comSeq }">
		<input type="hidden" name="id" id="id" value="${interiorSelect.id }">
			<p class="inter-title">제목</p>
			<p>${interiorSelect.title }</p>
			<p class="inter-writer">작성자</p>
			<p>${interiorSelect.nickName }</p>
			<p class="inter-content">내용</p>
			<p>${interiorSelect.content }</p>
			<p class="inter-regdate">등록일</p>
			<p>${interiorSelect.regdate }</p>
			<p class="inter-hit">조회수</p>
			<p>${interiorSelect.hit }</p>
	
		<!-- 좋아요 -->
		<i id="likes" class="far fa-heart fa-5x">좋아요</i>
<%-- 		<input type="button">좋아요 ${likesCount } --%>

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
		<p></p>
		</div>
		<p><a href="#ex1" rel="modal:open">공유하기</a></p>
		
		<!-- 글수정 -->
	  	<form class="update" action="InBoardUpdate.jsp">
	    <c:set value="${interiorSelect }" var="inter" scope="session"></c:set>
	    <input type="submit" value="글 수정">
		</form>
		
		<!-- 글삭제 -->
		<form action="deleteArticle.do?comSeq=${interiorSelect.comSeq }" id="deleteform">
			<input type="button" onclick="fn_delete()" value="글 삭제">
			<input type="hidden" name="comSeq" id="comSeq" value="${interiorSelect.comSeq }">
		</form>
		
		<a href="${contextPage.request.contextPath}/app/interior/interiorAllList.do">글목록</a>
		
		<!-- 댓글 목록 -->
		<div class="comment-add">
			<ol>
			<li id="reply-class">
			<c:forEach var="comment" items="${commentSelect }">
					<span class="writer">${comment.nickName }</span>
					<span class="date">${comment.regdate}</span>
					<button class="reply-up">수정</button>
					<button class="reply-del">삭제</button>
					<button class="reply-re">답글</button>
					<p class="reply-content">${comment.content }</p>
			</c:forEach>
			<li>
			</ol>
		</div>
		
		<!-- 댓글 입력창 -->
		<div class="container">
    <form id="commentForm" name="commentForm" method="post">
    <input type="hidden" name="id" value="${sessionScope.userSession.id }"> 
    <input type="hidden" name="nickName" value="${sessionScope.userSession.nickName }"> 
	<input type="hidden" name="comSeq" value="${interiorSelect.comSeq }">
    <br><br>
        <div>
            <div>
                <span><strong>댓글입력</strong></span> <span id="cCnt"></span>
            </div>
            <div>
                <table class="table">                    
                    <tr>
                        <td>
                            <c:if test="${sessionScope.userSession.id == null }">
                            <textarea style="width: 1100px" rows="3" cols="30" id="comment"  placeholder="로그인시 댓글입력이 가능합니다"></textarea>
                            <br>
                            <!-- <div>
                                <input type="button" class="btn pull-right btn-success" value="등록" disabled>
                            </div> -->
                            </c:if>
                            <c:if test="${sessionScope.userSession.id != null }">
                           
                            <textarea style="width: 1100px" rows="3" cols="30" id="comment" name="content" placeholder="댓글을 입력하세요"></textarea>
                            <br>
                            <div>
                                <button type="button" onClick="fn_comment()" class="btn pull-right btn-success">등록</button>
                            </div>
                            </c:if>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</div>
<div class="container">
    <form id="commentListForm" name="commentListForm" method="post">
        <div id="commentList">
        </div>
    </form>
</div>
</div>
<script>

	//좋아요
	$('#likes').click(function(){
		if("${sessionScope.userSession.id}" != ""){
			var className = $(this).attr('class');
			if(className == "heart" ){
				$(this).removeClass();
				$(this).addClass("heart");
				var comSeq = '${interiorvo.comSeq}';
				var id = '${sessionScope.userSession.id}';
				$.ajax({
					type:'post',
					url:"insertLike.do",
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
				$(this).addClass("heart");
			}
			} else{
			var result = confirm("로그인이 필요한 서비스입니다. 로그인 하시겠습니까?");
			if(result){
				location.href = "/app/login.jsp";
			}
			}
		});
	
		//댓글 입력
		function fn_comment(){
			 var form = $('#commentForm')[0];
		     var data = new FormData(form);
		   		console.log("클릭은되나요?");
		   		document.data.action = "location.href='addComment.do'".submit();
		   		
		   		location.reload();
	  	}
	
			/* location.reload(); */
/* 	    $.ajax({
	    	type: "POST",
	        url : "addComment.do",
	        data: data,
	        contentType : false,
	        processData : false ,
	        success : function(e){
	        	location.reload();
	        	
	        },
	        error:function(request,status,error){
	            //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	          	alert("전송실패");
	       }
	        
	    }); */
</script>
</body>
</html>