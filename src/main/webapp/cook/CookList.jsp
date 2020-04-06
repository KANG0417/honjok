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
	th { background-color: white; }
	.center { text-align: center; }
	.border-none, .border-none td { border: none; }
	
</style>

</head>
<body>
		<jsp:include page="/header.jsp"></jsp:include>
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

						<div class="col-md-4" id="select">
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
<div>
		<a href="http://localhost:8080/app/cook/insert.jsp">
        	<img src="${contextPage.request.contextPath}/app/resources/img/write_btn.png" alt="쓰기">
      	</a>
      	
<!--       	<form action="insert.jsp"> -->
<!--   		 <input type="submit" value="글쓰기"> -->
<!-- 		</form> -->
</div>

 <table class="table">
      <tr class="table-primary">
 		
        <th>글번호</th>
        <th>제목</th>
        <th>글쓴이</th>
        <th>등록일</th>
        <th>조회수</th>
        <th>좋아요</th>
      </tr>
     
    <c:forEach var="cookvo" items="${cookList }">
    <tbody>
     <tr class="table-info">
         <td>${cookvo.comSeq }</td>
         <td><a href="CookDetail.do?comSeq=${cookvo.comSeq }">${cookvo.title }</a></td>
         <td>${cookvo.nickName }</td>
         <td>${cookvo.regdate }</td>
         <td>${cookvo.hit }</td>
         <td>${cookvo.likes }</td>
     </tr>
   	 </c:forEach>  
      </tbody>
     	

</table>

</body>
</html>