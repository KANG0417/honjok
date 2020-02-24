<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<!--CSS 연결 -->
<link
	href="${pageContext.request.contextPath}/resources/css/hojokinfo/style.css"
	rel="stylesheet">
</head>
<body>




	<div class="container">
		<div class="row justify-content-center mb-5 pb-3">
			<h2>혼밥의 모든것</h2>
		</div>
		<hr>
		

		
		<c:choose>
			<c:when test="${CommunityVOList == null }">
				<p align="center">
					<b><span style="font-size: 9pt;">등록된 글이 없습니다.</span></b>
				</p>
			</c:when>



			<c:when test="${CommunityVOList != null }">




				<div class="row">
					<div class="row" style="width: 100%; height: 300px;  margin-bottom:100px;">
						이번주 베스트 가게는 ~ <img style="width: 100%; height: 100%;"
							src="/app/resources/img/no.jpg">
					</div>
					<c:forEach var="CommunityVO" items="${CommunityVOList }"
						varStatus="articleNum">

						<div class="col-md-4" id="select">
							<a class="main-img${articleNum.index}"
								href="get.do?com_seq=${CommunityVO.com_seq }"
								class="img w-100 mb-3"> <script>
									var contentimg = '${CommunityVO.content}';
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
									<a href="get.do?com_seq=${CommunityVO.com_seq }">${CommunityVO.title }</a>
								</h3>
								
								
							</div>

							작성자: ${CommunityVO.id } <br> 작성일: ${CommunityVO.regdate }<br>
							작성자닉네임: ${CommunityVO.nick_name }<br> 조회수: ${CommunityVO.hit }
							<br> 좋아요: ${CommunityVO.likes }<br> 종합별점수 :
							${infoList[articleNum.index].sum_star}<br> 매장이름:
							${infoList[articleNum.index].title}<br> 매장위치 :
							${infoList[articleNum.index].adr}<br> 매장업종 :
							${infoList[articleNum.index].category_name}<br> 매장전화번호:
							${infoList[articleNum.index].tel}<br>

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
										href="select.do?section=${section-1}&pageNum=${(section-1)*10 }">이전</a>
								</c:if>

								<a href="select.do?section=${section}&pageNum=${page}">${(section-1)*10 +page }
								</a>

								<c:if test="${page == 10 }">
									<c:if test="${section ==1 }">
										<a href="select.do?section=${section+1}&pageNum=${section }">다음</a>
									</c:if>
									<c:if test="${section != 1 }">
										<a
											href="select.do?section=${section+1}&pageNum=${section - 1}">다음</a>
									</c:if>
								</c:if>
							</c:forEach>
						</c:if>

						<c:if test="${endPage-(endPage%1) == section}">
							<c:forEach var="page" begin="1" end="10" step="1">

								<c:if test="${section > 1 && page == 1}">
									<a
										href="select.do?section=${section-1}&pageNum=${(section-1)*10-10 }">이전</a>
								</c:if>

								<a href="select.do?section=${section}&pageNum=${page}">${(section-1)*10 +page }
								</a>

								<c:if test="${page == 10 }">
									<a href="select.do?section=${section+1}&pageNum=${section - 1}">다음</a>
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
									<a href="select.do?section=${section}&pageNum=${page}">${page }</a>
								</c:when>
								<c:otherwise>
									<a href="select.do?section=${section}&pageNum=${page}">${page }</a>
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
	<form action="insert.jsp">
		<input type="submit" value="글쓰기">
	</form>
</body>
</html>