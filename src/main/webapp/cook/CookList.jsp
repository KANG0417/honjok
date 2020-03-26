<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<title>1인 레시피 게시판입니다.</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
	/* Make the image fully responsive */
	  .carousel-inner img {
	    width: 100%;
	    height: 100%;
	  }
      #columns{
        column-width:350px;
        column-gap: 15px;
      }
      #columns figure{
        display: inline-block;
        border:1px solid rgba(0,0,0,0.2);
        margin:0;
        margin-bottom: 15px;
        padding:10px;
        box-shadow: 2px 2px 5px rgba(0,0,0,0.5);;
      }
      #columns figure img{
        width:100%;
      }
      #columns figure figcaption{
        border-top:1px solid rgba(0,0,0,0.2);
        padding:10px;
        margin-top:11px;
      }
</style>
<style>
	#container {
		width: 700px;
		margin: 0 auto;
	}
	h1, h3, p { text-align: center; }
 	table { border-collapse: collapse; } 
 	table, th, td { 
 		margin: 0 auto; 
 	} 
	th { background-color: yellow; }
	.center { text-align: center; }
	.border-none, .border-none td { border: none; }
	
</style>

</head>
<body>

<div id="myCarousel" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="${contextPage.request.contextPath}/app/resources/img/cook.jpg" alt="Los Angeles" width="1100" height="500">
      <div class="carousel-caption">
        <h3>혼밥하세요</h3>
        <p>밥은 혼자 먹어야 맛있어!</p>
      </div> 
    </div>
  </div>
  
<!--   <!-- Left and right controls --> 
<!--   <a class="carousel-control-prev" href="#myCarousel" data-slide="prev"> -->
<!--     <span class="carousel-control-prev-icon"></span> -->
<!--   </a> -->
<!--   <a class="carousel-control-next" href="#myCarousel" data-slide="next"> -->
<!--     <span class="carousel-control-next-icon"></span> -->
<!--   </a> -->
  

   
		<hr>
		<c:choose>
			<c:when test="${cookList == null }">
				<p align="center">
					<b><span style="font-size: 9pt;">등록된 글이 없습니다.</span></b>
				</p>
			</c:when>
			<c:when test="${cookList != null }">
					
				<div class="row">

					<c:forEach var="cookvo" items="${cookList }"
						varStatus="articleNum">

						<div class="col-md-2" id="select">
							<a class="main-img${articleNum.index}"
								href="CookDetail.do?comSeq=${cookvo.comSeq }"
								class="img w-100 mb-3"> 
								 <script>
									var contentimg = '${cookvo.content}';
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
									<a href="CookDetail.do?comSeq=${cookvo.comSeq }">${cookvo.title }</a>
								</h3>
								 <h6>좋아요: ${cookvo.likes }</h6>
							</div>
						</div>
					</c:forEach>
				</div>
			</c:when>

		</c:choose>
		
		<div class="center">
			<c:if test="${allCount != null}">
				<c:choose>
					<c:when test="${allCount > 60 }">
						<c:set var="endPage" value="${allCount/90 + 1 }" scope="page"></c:set>

						<c:if test="${endPage-(endPage%1) != section}">
							<c:forEach var="page" begin="1" end="10" step="1">

								<c:if test="${section > 1 && page == 1}">
									<a
										href="CookAll.do?section=${section-1}&pageNum=${(section-1)*10 }">이전</a>
								</c:if>

								<a href="CookAll.do?section=${section}&pageNum=${page}">${(section-1)*10 +page }
								</a>

								<c:if test="${page == 10 }">
									<c:if test="${section ==1 }">
										<a href="CookAll.do?section=${section+1}&pageNum=${section }">다음</a>
									</c:if>
									<c:if test="${section != 1 }">
										<a
											href="CookAll.do?section=${section+1}&pageNum=${section - 1}">다음</a>
									</c:if>
								</c:if>
							</c:forEach>
						</c:if>

						<c:if test="${endPage-(endPage%1) == section}">
							<c:forEach var="page" begin="1" end="10" step="1">

								<c:if test="${section > 1 && page == 1}">
									<a
										href="CookAll.do?section=${section-1}&pageNum=${(section-1)*10-10 }">이전</a>
								</c:if>

								<a href="CookAll.do?section=${section}&pageNum=${page}">${(section-1)*10 +page }
								</a>

								<c:if test="${page == 10 }">
									<a href="CookAll.do?section=${section+1}&pageNum=${section - 1}">다음</a>
								</c:if>
							</c:forEach>
						</c:if>

					</c:when>


					<c:when test="${allCount == 90 }">
						<c:forEach var="page" begin="1" end="10" step="1">
							<a href="#">${page }</a>
						</c:forEach>
					</c:when>

					<c:when test="${allCount < 90 }">
						<c:forEach var="page" begin="1" end="${allCount/9 + 0.9  }"
							step="1">
							<c:choose>
								<c:when test="${page == pageNum }">
									<a href="CookAll.do?section=${section}&pageNum=${page}">${page }</a>
								</c:when>
								<c:otherwise>
									<a href="CookAll.do?section=${section}&pageNum=${page}">${page }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</c:when>

				</c:choose>
			</c:if>
		</div>


	<hr>

	<c:remove var="endPage" />


   
<div class="container">
  <hr>
  <h3>레시피 목록 </h3>
   <!-- Search Widget -->
        <div class="card my-4">
          <h5 class="card-header">Search</h5>
          <div class="card-body">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search for...">
              <span class="input-group-btn">
                <button class="btn btn-secondary" type="button">Go!</button>
              </span>
            </div>
          </div>
        </div>
<div class="container mt-3">
<!--   <p>혼밥 레시피는 늘어나는 1~2인 가구 및 간편식 라이프스타일에 맞춘 브랜드로<br> 조리 편의성과 소용량 제품을 원하는 고객 니즈를 반영했다.</p> -->
  <hr>
</div>

 <table class="table">
      <tr>
        <th>글번호</th>
        <th>제목</th>
        <th>글쓴이</th>
        <th>등록일</th>
        <th>조회수</th>
        <th>좋아요</th>
      </tr>
     
    <c:forEach var="cookvo" items="${cookList }">
    <tbody>
     <tr class="table-warning">
         <td>${cookvo.comSeq }</td>
         <td><a href="CookDetail.do?comSeq=${cookvo.comSeq }">${cookvo.title }</a></td>
         <td>${cookvo.nickName }</td>
         <td>${cookvo.regdate }</td>
         <td>${cookvo.hit }</td>
         <td>${cookvo.likes }</td>
     </tr>
       </c:forEach>  
      </tbody>
     	<form action="insert.jsp">
  		 <input type="submit" value="글쓰기">
		</form>

</table>

</body>
</html>