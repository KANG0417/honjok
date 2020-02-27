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
	</script>
</head>
<body>
<div id="container">
	<h1>글 상세</h1>
		<input type="hidden" name="com_seq" id="com_seq" value="${interiorvo.com_seq }">
	<table>
		<tr>
			<th>제목</th>
			<td>
				${interiorSelect.title }
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${interiorSelect.nick_name }</td>
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
			<td>${interiorSelect.file_image }</td>
		</tr>
	</table>
			<p>좋아요 ${interiorSelect.likes }</p>
				<div id="ex1" class="modal">
				<p><input type="text" id = "ShareUrl">
				<span class="btn-type1"><button OnClick="javascript:CopyUrlToClipboard()">URL 복사</button></span>
				</p>
				</div>
			<p><a href="#ex1" rel="modal:open">공유하기</a></p>

			  <form class="update" action="InBoardUpdate.jsp">
			   <c:set value="${interiorSelect }" var="inter" scope="session"></c:set>
			   <input type="submit" value="수정">
				</form>
		<form action="deleteArticle.do?com_seq=${interiorSelect.com_seq }" id="deleteform">
			<input type="button" onclick="fn_delete()" value="글 삭제">
			<input type="hidden" name="com_seq" id="com_seq" value="${interiorSelect.com_seq }">
		</form>
		<a href="${contextPage.request.contextPath}/app/interior/interiorAllList.do">글목록</a>
</div>

</body>
</html>