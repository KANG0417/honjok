<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>인테리어 게시판</title>
<!-- <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css"> -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<!--CSS 연결 -->
<!-- <style>
	#main {
		border: 1px solid gray;
		padding: 50px;
		margin: 20px;
		text-align: center;
	}
</style> -->
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
	<div class="container">
		<div class="row justify-content-center mb-5 pb-3">
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
					<p>1인 인테리어 게시판</p>
					</div>
				<div class="row">

					<c:forEach var="interiorvo" items="${interiorList }"
						varStatus="articleNum">

						<div class="col-md-4" id="select">
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
									image.height = 300;
									image.width = 300;
									image.alt = "이미지가없습니다.";
									console.log(image);
									$('.main-img${articleNum.index}').html(
											image);
								</script>
							</a>
							<div class="text w-100 text-center">
								<h3>
									<a href="getInterior.do?comSeq=${interiorvo.comSeq }">${interiorvo.title }</a>
								</h3>
							</div>
							${interiorvo.regdate }<br>
							${interiorvo.nickName }<br> ${interiorvo.hit } 명이 봤어요
							<br> ${likesCount }<br>
						</div>

					</c:forEach>

				</div>
			</c:when>

		</c:choose>
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
						<c:forEach var="page" begin="1" end="${countList/9 + 0.9  }"
							step="1">
							<c:choose>
								<c:when test="${page == pageNum }">
									<a href="interiorAllList.do?section=${section}&pageNum=${page}">${page }</a>
								</c:when>
								<c:otherwise>
									<a href="interiorAllList.do?section=${section}&pageNum=${page}">${page }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</c:when>

				</c:choose>
			</c:if>
		</div>

	</div>

	<hr>

	<c:remove var="endPage" />
   <input type="button" value="글쓰기" onclick="checkLogin()">
<script>
	function checkLogin() {
	    var id = '${sessionScope.userSession.id}'; // 수정 ''처리
	    // 수정 ''공백 비교
	    if (id == '') {

	    	var result = confirm("로그인이 필요한 서비스입니다. 로그인 하시겠습니까?")
			if (result) {
				window.open(
							'/app/loginModal.jsp',
							'pop01',
							'top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no');
			}
		}else {
	        location.href = 'InBoardInsert.jsp';
	    
	    } 
	    }
	
</script>
</body>
</html>