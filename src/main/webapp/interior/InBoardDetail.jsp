<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글상세보기</title>
<style>
	#container {
		width: 700px;
		margin: 0 auto;
	}
	h1, h3, p { text-align: center; }
	table { border-collapse: collapse; }
	table, th, td {
		border: 1px solid black;
		margin: 0 auto;
	}
	th { background-color: orange; }
	.center { text-align: center; }
	.border-none, .border-none td { border: none; }
	
	/* /* body{background: #333;} */ */
	
	.like-container{filter: url('#filter');}
	.like-cnt{  
	  position: absolute; 
	  cursor: pointer;
	  left: 50%; 
	  top: 50%; 
	  transform: translate(-50%, -50%);     background: rgba(255,255,255,0.3);     width: 60px; 
	  height: 60px;  
	  border-radius: 50%;
	  text-align: center;
	  line-height: 75px;
	  z-index: 10;
	}
	.like-btn{
	  color: #fff;
	}
	
	.gp-header{font-family: georgia; font-size: 40px; color: #ddca7e; font-style: italic; text-align: center; margin-top: 31px;}
	.gp-footer{position: fixed; color: #fff; bottom: 10px; left: 50%; font-family: georgia; font-style: italic; transform: translateX(-50%);}
	.gp-footer .soc_icons{display: inline-block; color: #ddca7e; margin: 0px 0px; background: #333;}
	
	::-moz-selection { background: transparent;}
	::selection {background: transparent;}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<script>
/* function fn_update(){
    
    
    form.action = "<c:url value='board/updateInterior.do'/>";
    form.submit();
} */
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
		
		function CopyUrlToClipboard()

		{	var obShareUrl = document.getElementById("ShareUrl");
			obShareUrl.value = window.document.location.href;  // 현재 URL 을 세팅해 줍니다.
			obShareUrl.select();  // 해당 값이 선택되도록 select() 합니다
			document.execCommand("copy"); // 클립보드에 복사합니다.

			obShareUrl.blur(); // 선택된 것을 다시 선택안된것으로 바꿈니다.

			alert("URL이 클립보드에 복사되었습니다"); 

		}

}
</script>		
		<script>
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
	    	/* alert("URL이 클립보드에 복사되었습니다");  */

	    }
	    
	    var check_status = false;
	    var like_cnt = $("#like-cnt");
	    var like_parent = $(".like-container");

	    var burst = new mojs.Burst({
	      parent: like_parent,
	      radius:   { 20: 60 },
	      count: 15,
	      angle:{0:30},
	      children: {
	        delay: 250,
	        duration: 700,
	        radius:{10: 0},
	        fill:   [ '#ddca7e' ],
	        easing:         mojs.easing.bezier(.08,.69,.39,.97)
	      }
	    });

	    $("#like-cnt").click(function(){
	      var t1 = new TimelineLite();
	      var t2 = new TimelineLite();
	      if(!check_status){
	        t1.set(like_cnt, {scale:0});
	        t1.set('.like-btn', {scale: 0});
	        t1.to(like_cnt, 0.6, {scale:1, background: '#ddca7e',ease: Expo.easeOut});
	        t2.to('.like-btn', 0.65, {scale: 1, ease: Elastic.easeOut.config(1, 0.3)}, '+=0.2');
			//t1.timeScale(5);
	        check_status=true;
	        //circleShape.replay();
	        burst.replay();
	      }
	      else{
	        t1.to(like_cnt, 1, {scale:1})
	          .to(like_cnt, 1, {scale:1, background: 'rgba(255,255,255,0.3)', ease: Power4.easeOut});
	        t1.timeScale(7);
	        check_status=false;
	      }
	</script>
</head>
<body>
<div id="container">
	<h1>글 상세</h1>
		<input type="hidden" name="comSeq" id="comSeq" value="${interiorvo.comSeq }">
	<table>
		<tr>
			<th>제목</th>
			<td>
				${interiorSelect.title }
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${interiorSelect.nickName }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				${interiorSelect.content }
			</td>
		</tr>
		<tr>
			<th>등록일</th>
			<td>${interiorSelect.regdate }</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${interiorSelect.hit }</td>
		</tr>
		<tr>
			<th>파일이미지</th>
			<td>${interiorSelect.fileImage }</td>
		</tr>
	</table>
			<%-- <c:choose>
				  <c:when test="${id ne null}">
				    <a href='javascript: like_func();'>♡<img src='' id='like_img'></a>
				  </c:when>
				  <c:otherwise>
				    <a href='javascript: login_need();'>♥<img src=''></a>
				  </c:otherwise>
			</c:choose> --%>
			
			<div class="like-container">
			<div class="like-cnt unchecked" id="like-cnt">
			<i class="like-btn material-icons">thumb_up</i>
			</div>
			</div>
			
			<p><a href="#ex1" rel="modal:open">공유하기</a></p>

			  <form class="update" action="InBoardUpdate.jsp">
			   <c:set value="${interiorSelect }" var="inter" scope="session"></c:set>
			   <input type="submit" value="수정">
				</form>
		<form action="deleteArticle.do?com_seq=${interiorSelect.comSeq }" id="deleteform">
			<input type="button" onclick="fn_delete()" value="글 삭제">
			<input type="hidden" name="comSeq" id="comSeq" value="${interiorSelect.comSeq }">
		</form>
		<a href="${contextPage.request.contextPath}/app/interior/interiorAllList.do">글목록</a>
</div>

</body>
</html>