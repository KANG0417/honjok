<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://kit.fontawesome.com/73d0df04d6.js"crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<title>인테리어 글 상세</title>
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
	    
	    $( document ).ready(function() {
	 		
	    	$('.comment-feed__form__submit').on('click',function(){
	    		
	    		var content = $('.comment-content-input__text').html();
	    		console.log(content)
	    		
	    		$('.content').val(content);
	    		$('.comment-feed__form').submit();
	    		
	    	});
	    	
	    });

</script>
<style>
.app_wrap.v40 {
    margin: 0;
    height: 100%;
}    
.app_wrap {
    background: #fff;
}    
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption,header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: top;
    box-sizing: border-box;
}   
body {
    margin: 0;
    height: 100%;
    line-height: 1;
    font-family: 'NotoSansKR', sans-serif;
}   
.app_wrap.v40 #app {
    height: 100%;
}    
#app {
    z-index: 400;
    min-height: 627px;
    height: auto;
    padding-top: 103px;
}    
.app_wrap.v40 #app #content {
    min-height: calc(100% - 273px);
    padding-bottom: 70px;
    box-sizing: border-box;
}    
._container {
    width: 972px;
    margin: 0 auto;
}    
.pt-5 {
    padding-top: 50px;
}    
article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
    display: block;
}   
.product_detail_info .product_detail_main_thumbnail {
    width: 100%;
    height: 500px;
    position: relative;
    overflow: hidden;
}    
.product_detail_info .product_detail_main_thumbnail img {
    position: absolute;
    top: 50%;
    transform: translate(0, -50%);
}   
.width_100 {
    width: 100%;
}    
.pt-3 {
    padding-top: 30px;
}   
.text_center {
    text-align: center;
}    
.pb-3 {
    padding-bottom: 30px;
}    
.bold_text {
    font-weight: bold;
}    
.dark_text {
    color: #1d1d1d;
}  
.f-26 {
    font-size: 26px;
}    
.pb-2 {
    padding-bottom: 20px;
}    
.f-16 {
    font-size: 16px;
}    
.product_detail_info .product_detail_spec {
    width: 100%;
    padding: 20px 0;
    position: relative;
    background-color: #ffffff;
    border: 1px solid #dddddd;
    border-radius: 2px;
}  
    
ol, ul {
    list-style: none;
}    


.product_detail_info .product_detail_spec .product_detail_spec_list .product_detail_spect_item{
    width: 20%;
    float: left;

}    
    
.product_detail_info .product_detail_spec .product_detail_spec_list .product_detail_spect_item img {
    width: 35px;
    height: 35px;
}    
 
.mb-1 {
    margin-bottom: 10px;
}  
.gray_text {
    color: #999999;
}
.f-14 {
    font-size: 14px;
}    
.pb-1 {
    padding-bottom: 10px;
}   
.product_detail_story {
    padding-top: 50px;
}  
 
.clfix::before, .clfix::after {
    content: " ";
    display: table;
}
.clfix::after, .clb {
    clear: both;
}    
.product_detail_story .product_detail_content {
    text-align: center;
}    
.product_detail_story .product_detail_content .product_detail_content_item {
    display: inline-block;
    margin-bottom: 70px;
}    
.relative {
    position: relative;
}    
.image_100 {
    max-width: 100%;
}    
.product_detail_story .product_detail_content .product_detail_content_item .product_detail_thumbnail img.image_100 {
    max-height: 972px;
}    

#content #comment_panel {
    padding-bottom: 50px;
}
#content #description_wrap, #content #metadata_wrap, #content #contents_panel, #content #comment_panel {
    width: 100%;
    padding: 0 15px;
        padding-bottom: 0px;
} 
#content #description_wrap, #content #metadata_wrap, #content #contents_panel, #content #comment_panel {
    float: left;
    width: 800px;
    padding: 0 50px;
    box-sizing: border-box;
    background-color: #ffffff;
}    
#content #comment_panel .comment-feed__header {
    margin-top: 15px;
}    
.comment-feed__header {
    font-weight: 700;
    color: #000;
    margin: 10px 0 20px;
        margin-top: 10px;
    font-size: 16px;
}    
.comment-feed__form {
    margin-bottom: 30px;
}    
.comment-feed__form {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-flex;
    display: -ms-flexbox;
    display: flex;
    position: relative;
}    
.comment-feed__form__user {
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 auto;
    -moz-box-flex: 0;
    -moz-flex: 0 0 auto;
    -ms-flex: 0 0 auto;
    flex: 0 0 auto;
}    
.comment-feed__form__user > img {
    width: 30px;
    height: 30px;
    margin: 5px 10px 0 0;
    border-radius: 100%;
}    
.comment-feed__form__content, .comment-feed__form__input {
    -webkit-box-flex: 1;
    -webkit-flex: 1 1 0px;
    -moz-box-flex: 1;
    -moz-flex: 1 1 0px;
    -ms-flex: 1 1 0px;
    flex: 1 1 0px;
    min-width: 0;
}    
.comment-feed__form__input {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-flex;
    display: -ms-flexbox;
    display: flex;
    position: relative;
    max-width: 100%;
    border: 1px solid #dbdbdb;
    border-radius: 4px;
}    
.comment-content-input {
    position: relative;
}    
.comment-feed__form__content__text {
    display: block;
    width: 100%;
    min-height: 38px;
    border: none;
    background: none;
    color: #424242;
    margin: 0;
    padding: 8px 15px 9px;
    font-family: inherit;
    font-size: 15px;
    line-height: 1.4;
    resize: none;
    overflow: hidden;
    word-wrap: break-word;
    box-sizing: border-box;
}    
.comment-feed__form__actions {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 auto;
    -moz-box-flex: 0;
    -moz-flex: 0 0 auto;
    -ms-flex: 0 0 auto;
    flex: 0 0 auto;
    padding: 7px 15px 7px 0;
    margin: 0 -7.5px;
    font-size: 0;
}    
.comment-feed__form__submit {
    color: #35c5f0;
    font-size: 15px;
    font-weight: 700;
}    

.comment-feed__form__submit {

    color: #35c5f0;
    font-size: 15px;
    font-weight: 700;

}
.comment-feed__form__photo, .comment-feed__form__submit {

    margin: 0 7.5px;
    padding: 0;
    border: none;
    background: none;
    transition: opacity .2s;

}
 input[type="submit"] {
    cursor: pointer;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    -moz-appearance: textfield; 
    border-radius: 0; 
}    
ol, ul {
    list-style: none;
}    
.comment-feed__item {
    margin-bottom: 20px;
    padding-left: 40px;
}    
.comment-feed__item__content {
    position: relative;
    margin: -4px 0 4px;
    min-width: 0;
    max-width: 100%;
    text-overflow: ellipsis;
    word-wrap: break-word;
    overflow-wrap: break-word;
    font-size: 15px;
    line-height: 1.67;
}    
.comment-feed__item__content__author {
    display: block;
    margin: 0 0 -5px;
    font-size: 0;
    line-height: 20px;
}    
a {
    color: inherit;
    text-decoration: none;
}    
a,  input[type="submit"]{
    -ms-touch-action: manipulation;
    touch-action: manipulation;
}    
.comment-feed__item__content__author__image {
    position: absolute;
    width: 30px;
    height: 30px;
    top: 2px;
    left: -40px;
    margin-right: 10px;
    border-radius: 100%;
    background-color: #dbdbdb;
}    
.comment-feed__item__content__author__name {
    color: #424242;
    font-weight: 700;
    font-size: 15px;
}    
.comment-feed__item__content__content {
    white-space: pre-line;
}    
.comment-feed__item__footer {
    color: #757575;
    font-size: 13px;
    font-weight: 700;
}    
 footer {
    box-sizing: border-box;
    position: relative;
    display: block;
}
.comment-feed__item__footer__time {
    font-weight: 400;
}    

.width{
	width:778px;
	margin-left:92px;
}
.comment-feed__header__count {
    color: #35c5f0;
}
.comment-feed__item__footer > .comment-feed__item__footer__delete-btn, .comment-feed__item__footer > .comment-feed__item__footer__report-btn {
    font-weight: 400;
    color: #bdbdbd;
}
.comment-feed__item__footer > a, .comment-feed__item__footer > button {
    background: none;
    border: none;
    color: inherit;
    padding: 0;
    font-size: 13px;
    font-weight: inherit;
    font-family: inherit;
}
</style>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
    <div class="app_wrap height100 v40 gnb_not_border">
        <div id="app" style="">
            <div id="content">
                <div>
                    <div class="pt-5 _container">
                        <section class="product_detail_info">
                            <div class="product_detail_main_thumnail">
                                <img class="width_100" src="/app/resources/img/interior/20200323180000816_obP1iGbndP.jpg">
                            </div>
                            <div class="text_center pt-3 pb-3">
                                <h3 class="f-26 dark_text bold_text pb-2">${interiorSelect.title}</h3>
                                <p class="f-16 drak_text">${interiorSelect.nickName}</p>
                            </div>
                            <div class="product_detail_spec">
                                <ul class="product_detail_spec_list clfix">
                                    <li class="product_detail_spect_item text_center">
                                        <img class="mb-1" src="/app/resources/img/interior/internet.png">
                                        <p class="f14 gray_text pb-1">건물</p>
                                        <p class="f-16 dark_text">빌라</p>
                                    </li>
                                    <li class="product_detail_spect_item text_center">
                                        <img class="mb-1" src="/app/resources/img/interior/iconmonstr-construction-35-240.png">
                                        <p class="f14 gray_text pb-1">평수</p>
                                        <p class="f-16 dark_text">11평</p>
                                    </li>
                                        <li class="product_detail_spect_item text_center">
                                        <img class="mb-1" src="/app/resources/img/interior/hammer.png">
                                        <p class="f14 gray_text pb-1">스타일</p>
                                        <p class="f-16 dark_text">내츄럴</p>
                                    </li> 
                                        <li class="product_detail_spect_item text_center">
                                        <img class="mb-1" src="/app/resources/img/interior/calendar.png">
                                        <p class="f14 gray_text pb-1">기간</p>
                                        <p class="f-16 dark_text">3개월</p>
                                    </li>  
                                        <li class="product_detail_spect_item text_center">
                                        <img class="mb-1" src="/app/resources/img/interior/iconmonstr-coin-2-240.png">
                                        <p class="f14 gray_text pb-1">예산</p>
                                        <p class="f-16 dark_text">150만원</p>
                                    </li>  
                                </ul>    
                            </div>
                        </section>
                        <section class="product_detail_story">
                            <div>
                                <div class="product_detail_content">
                                    <div class="product_detail_content_item relative">
                  						<p>${interiorSelect.content}</p>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <c:if test="${ sessionScope.userSession.nickName == comment.nickName }">
            				<input type="button" value="수정" onclick="checkLogin()">
				       	</c:if>
						<c:if test="${ sessionScope.userSession.nickName == comment.nickName }">
				            <input type="button" value="삭제" onclick="checkLogin()">
				        </c:if>
                         <div class="comment_panel" class="ui-comment">
                            <div class="wrap">
                                <div class="commentFeed">
                                    <section class="comment-feed width">
                                        <h1 class="comment-feed__header">댓글 (${countReList })
                                            <span class="comment-feed__header__count"></span>
                                        </h1>
                                        <form class="comment-feed__form" method="post" action="addComment.do">
                                            <input type="hidden" name="id" value="${sessionScope.userSession.id }"> 
                                            <input type="hidden" name="nickName" value="${sessionScope.userSession.nickName }"> 
                                            <input type="hidden" name="comSeq" value="${interiorSelect.comSeq }">
                                            <input class="content" type="hidden" name="content" value="">
                                            <div class="comment-feed__form__user">
                                                <img src="/app/resources/img/interior/smile.png">
                                            </div>
                                            <div class="comment-feed__form__input">
                                                <div class="comment-feed__form__content">
                                                	<c:if test="${sessionScope.userSession.id == null }">
                                                    <div class="comment-content-input__text comment-feed__form__content__text"
                                                         contenteditable="true">
                                                    </div>
                                                    </c:if>
                                                    <c:if test="${sessionScope.userSession.id != null }">
                                                     <div id="comment-content-input__text" class="comment-content-input__text comment-feed__form__content__text"
                                                         contenteditable="true">
                                                    </div>
                                                    </c:if>
                                                    <c:if test="${empty c_list }">
														<input type="hidden" name="idx" value="0">
													    <input type="hidden" name="lev" value="0">
													</c:if>
													<c:if test="${stepResult >= 1 }">
														<input type="hidden" name="idx" value="${stepResult}">
														<input type="hidden" name="lev" value="0">
													</c:if>
                                                 </div>
                                                 <div class="comment-feed__form__actions">
                                                    <button type="button" class="comment-feed__form__submit" aria-label="등록">등록</button>
                                                </div>
                                            </div>
                                        </form>
                                        <ul class="comment-feed__list">
                                        	<c:forEach var="comment" items="${commentSelect}">
                                            <li class="comment-feed__list__item">
                                                <article class="comment-feed__item">
                                                    <p class="comment-feed__item__content">
                                                        <a class="comment-feed__item__content__author">
                                                            <img class="/app/resources/img/interior/user.png">
                                                            <span class="comment-feed__item__content__author__name">${comment.nickName}</span>
                                                        </a>
                                                        <span class="comment-feed__item__content__content">${comment.content}</span>
                                                    </p>
                                                    <footer class="comment-feed__item__footer">
                                                        <time class="comment-feed__item__footer__time">
                                                            ${comment.regdate}
                                                        </time>
                                                        <c:if test="${ sessionScope.userSession.nickName == comment.nickName }">
															<button class="reply-up">수정</button>
															<button class="comment-feed__item__footer__delete-btn">삭제</button>
														</c:if>
                                                    </footer>
                                                </article>
                                            </li>
                                            </c:forEach>
                                        </ul>
                                    </section>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>	
		<!-- 댓글 목록 
		<div class="comment-add">
			<ol class="comment-list">
				<li>
				<div class="comment-title">댓글</div>
				<c:forEach var="comment" items="${commentSelect }">
					<span class="writer">${comment.nickName }</span>
					<span class="date">${comment.regdate}</span>-->
					<!--<c:if test="${empty c_list }"> 
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
		</div>-->
		
		<!-- 댓글 입력창 
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
					<input type="hidden" name="comSeq" value="${interiorSelect.comSeq }">-->
					
					
					<!--<c:if test="${empty c_list }">
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
            </div>-->

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