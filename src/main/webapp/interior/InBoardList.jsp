<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/73d0df04d6.js"crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>게시판 css</title>
<style media="screen">
	.wrap {
		/* border: 1px red solid; */
		width: 1600px;
		height: 2000px;
		margin : 0 auto;
	}
	
	body {
	    font-family: 'NotoSansKR', sans-serif;
	}
	
	#image{
		width: 1600px;
		margin:0 auto;
	}
	 
	#image {
        display: flex;
        flex-flow: row wrap;
        text-align: center;
        overflow: hidden;
        
        border-radius: 8px;
 	    transform: scale(1);
	    -webkit-transform: scale(1);
	    -moz-transform: scale(1);
	    -ms-transform: scale(1);
	    -o-transform: scale(1);
	    transition: all 0.3s ease-in-out;
	}
	
	.image-box {
		width: 31.9%;
		margin: 0 auto 100px;
		/* border: 1px red solid; */
	}
	
	.overflowbox{
		width: 476px;
	    height: 294px;
	    overflow: hidden;
	}
	
	img {
		width: 476px;
	    height: 294px;
	    border-radius: 8px;
 	    transform: scale(1);
	    -webkit-transform: scale(1);
	    -moz-transform: scale(1);
	    -ms-transform: scale(1);
	    -o-transform: scale(1);
	    transition: all 0.3s ease-in-out;
	    overflow: hidden;
	}
	
	img:hover{ 
	    width: 476px;
	    height: 294px;
	    border-radius: 8px;
	    transform: scale(1.2);
 	     -webkit-transform: scale(1.2);
	    -moz-transform: scale(1.2);
	    -ms-transform: scale(1.2);
	    -o-transform: scale(1.2);
	    overflow: hidden;
	    cursor: pointer;
	}  
	.center{
	    text-align:center;
		width: 500px;
		margin: 0 auto 50px;
	}
	.center a{
		display:inline-block;
		margin-left: 30px;
		font-size: 25px;
	}
	.selected {
		width: 30px;
	    background-color: #35c5f0;
	    color: #fff;
	    text-decoration: none;
	    border-radious: 8px;
	}
</style>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
	<div class="container">
		</div>
		<br>
		<c:choose>
			<c:when test="${interiorList == null }">
				<p align="center">
					<b><span style="font-size: 9pt;">등록된 글이 없습니다.</span></b>
				</p>
			</c:when>
			<c:when test="${interiorList != null }">
					<div style="width:100%; height:100px;">
					<p class="inter-board">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;인테리어 게시판(게시물 수)</p>
					</div>
				<div id="image">

					<c:forEach var="interiorvo" items="${interiorList }"
						varStatus="articleNum">
						
						<div class="image-box" id="select">
						<div class="overflowbox">
							<a class="main-img${articleNum.index}"
								href="getInterior.do?comSeq=${interiorvo.comSeq }"
								class="img w-100 mb-3">
								 <script>
									var contentimg = '${interiorvo.content}';
									var firstimg = $(contentimg).find(
											'img:first').attr('src');
									console.log(firstimg);
									var image = document.createElement("IMG");
									image.src = firstimg;
									image.height = 294;
									image.width = 476;
									image.alt = "이미지가없습니다.";
									console.log(image);
									$('.main-img${articleNum.index}').html(
											image);
								</script>
							</a>
							</div>	
							<p><a href="getInterior.do?comSeq=${interiorvo.comSeq }">${interiorvo.title }</a></p>
							${interiorvo.regdate }<br>
							${interiorvo.nickName }<br> ${interiorvo.hit } 명이 봤어요
							<br> ${likesCount }<br>
						</div>
					</c:forEach>
					</div>
			</c:when>
			</c:choose>
	<!-- <h4 class="inter-board">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;인테리어 게시판(게시물 수)</h4>
	<br><br><br>
	<div id="wrap">
	<div id="image">
		<div class="image-box">
			<img class="board-thumbnail-image" src="resources/img/interior/인테리어1.png">
			<article class="inter-title">
				제목
			</article>
			<article class="inter-date">
				작성일
			</article>
			<article class="inter-writer">
				작성자
			</article>
			<article class="inter-hit">
				조회수
			</article>
			<article class="inter-like">
				좋아요
			</article>
		</div>
		<div class="image-box">
			<img class="board-thumbnail-image" src="resources/img/interior/인테리어2.jpg">
			<article class="inter-title">
				제목
			</article>
			<article class="inter-date">
				작성일
			</article>
			<article class="inter-writer">
				작성자
			</article>
			<article class="inter-hit">
				조회수
			</article>
			<article class="inter-like">
				좋아요
			</article>
		</div>
		<div class="image-box">
			<img class="board-thumbnail-image" src="resources/img/interior/인테리어3.png">
			<article class="inter-title">
				제목
			</article>
			<article class="inter-date">
				작성일
			</article>
			<article class="inter-writer">
				작성자
			</article>
			<article class="inter-hit">
				조회수
			</article>
			<article class="inter-like">
				좋아요
			</article>
		</div>
		<div class="image-box">
			<img class="board-thumbnail-image" src="resources/img/interior/인테리어4.jpg">
			<article class="inter-title">
				제목
			</article>
			<article class="inter-date">
				작성일
			</article>
			<article class="inter-writer">
				작성자
			</article>
			<article class="inter-hit">
				조회수
			</article>
			<article class="inter-like">
				좋아요
			</article>
		</div>
		<div class="image-box">
			<img class="board-thumbnail-image" src="resources/img/interior/인테리어5.jpg">
			<article class="inter-title">
				제목
			</article>
			<article class="inter-date">
				작성일
			</article>
			<article class="inter-writer">
				작성자
			</article>
			<article class="inter-hit">
				조회수
			</article>
			<article class="inter-like">
				좋아요
			</article>
		</div>
		<div class="image-box">
			<img class="board-thumbnail-image" src="resources/img/interior/인테리어6.jpg">
			<article class="inter-title">
				제목
			</article>
			<article class="inter-date">
				작성일
			</article>
			<article class="inter-writer">
				작성자
			</article>
			<article class="inter-hit">
				조회수
			</article>
			<article class="inter-like">
				좋아요
			</article>
		</div>
		<div class="image-box">
			<img class="board-thumbnail-image" src="resources/img/interior/인테리어7.jpg">
			<article class="inter-title">
				제목
			</article>
			<article class="inter-date">
				작성일
			</article>
			<article class="inter-writer">
				작성자
			</article>
			<article class="inter-hit">
				조회수
			</article>
			<article class="inter-like">
				좋아요
			</article>
		</div>
		<div class="image-box">
			<img class="board-thumbnail-image" src="resources/img/interior/인테리어8.jpg">
			<article class="inter-title">
				제목
			</article>
			<article class="inter-date">
				작성일
			</article>
			<article class="inter-writer">
				작성자
			</article>
			<article class="inter-hit">
				조회수
			</article>
			<article class="inter-like">
				좋아요
			</article>
		</div>
		<div class="image-box">
			<img class="board-thumbnail-image" src="resources/img/interior/인테리어9.jpg">
			<article class="inter-title">
				제목
			</article>
			<article class="inter-date">
				작성일
			</article>
			<article class="inter-writer">
				작성자
			</article>
			<article class="inter-hit">
				조회수
			</article>
			<article class="inter-like">
				좋아요
			</article>
		</div>
		<div class="image-box">
			<img class="board-thumbnail-image" src="resources/img/interior/인테리어10.jpg">
			<article class="inter-title">
				제목
			</article>
			<article class="inter-date">
				작성일
			</article>
			<article class="inter-writer">
				작성자
			</article>
			<article class="inter-hit">
				조회수
			</article>
			<article class="inter-like">
				좋아요
			</article>
		</div>
		<div class="image-box">
			<img class="board-thumbnail-image" src="resources/img/interior/인테리어11.jpg">
			<article class="inter-title">
				제목
			</article>
			<article class="inter-date">
				작성일
			</article>
			<article class="inter-writer">
				작성자
			</article>
			<article class="inter-hit">
				조회수
			</article>
			<article class="inter-like">
				좋아요
			</article>
		</div>
		<div class="image-box">
			<img class="board-thumbnail-image" src="resources/img/interior/인테리어12.jpg">
			<article class="inter-title">
				제목
			</article>
			<article class="inter-date">
				작성일
			</article>
			<article class="inter-writer">
				작성자
			</article>
			<article class="inter-hit">
				조회수
			</article>
			<article class="inter-like">
				좋아요
			</article>
		</div>	
	</div> -->
	
	
		<div class="center">
			<c:if test="${countList != null}">
				<c:choose>
					<c:when test="${countList > 90 }">
						<c:set var="endPage" value="${countList/90 + 1 }" scope="page"></c:set>

						<c:if test="${endPage-(endPage%1) != section}">
							<c:forEach var="page" begin="1" end="10" step="1">

								<c:if test="${section > 1 && page == 1}">
									<a
										href="interiorAllList.do?section=${section-1}&pageNum=${(section-1)*10 }">이전</a>
								</c:if>

								<a href="interiorAllList.do?section=${section}&pageNum=${page}">${(section-1)*10 +page }
								</a>

								<c:if test="${page == 10 }">
									<c:if test="${section ==1 }">
										<a href="interiorAllList.do?section=${section+1}&pageNum=${section }">다음</a>
									</c:if>
									<c:if test="${section != 1 }">
										<a href="interiorAllList.do?section=${section+1}&pageNum=${section - 1}">다음</a>
									</c:if>
								</c:if>
							</c:forEach>
						</c:if>

						<c:if test="${endPage-(endPage%1) == section}">
							<c:forEach var="page" begin="1" end="10" step="1">

								<c:if test="${section > 1 && page == 1}">
									<a 
										href="interiorAllList.do?section=${section-1}&pageNum=${(section-1)*10-10 }">이전</a>
								</c:if>

								<a href="interiorAllList.do?section=${section}&pageNum=${page}">${(section-1)*10 +page }
								</a>

								<c:if test="${page == 10 }">
									<a href="interiorAllList.do?section=${section+1}&pageNum=${section - 1}">다음</a>
								</c:if>
							</c:forEach>
						</c:if>

					</c:when>


					<c:when test="${countList == 90 }">
						<c:forEach var="page" begin="1" end="10" step="1">
							<a href="#">${page }</a>
						</c:forEach>
					</c:when>

					<c:when test="${countList < 90 }">
							<a href="#"><i class="fas fa-angle-double-left"></i></a>
						<c:forEach var="page" begin="1" end="${countList/9 + 0.9  }"
							step="1">
							<c:choose>
								<c:when test="${page == pageNum }">
									<a class="selected" href="interiorAllList.do?section=${section}&pageNum=${page}">${page }</a>
								</c:when>
								<c:otherwise>
									<a href="interiorAllList.do?section=${section}&pageNum=${page}">${page }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
							<a href="#"><i class="fas fa-angle-double-right"></i></a>
					</c:when>

				</c:choose>
			</c:if>
		
	</div>
	
	<c:remove var="endPage" />
  </body>
</html>