<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>Insert title here</title>

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
   rel="stylesheet" type="text/css">
<link
   href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
   rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--CSS 연결 -->

<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link
   href="${pageContext.request.contextPath}/resources/css/hojokinfo/honjokList.css"
   rel="stylesheet">
<link
   href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
   rel="stylesheet">
</head>

<link rel="stylesheet" type="text/css"
   href="/app/resources/css/hojokinfo/swiper.css">


<style>
body {
   background: #ffffff;
   font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
   font-size: 14px;
   color: #000;
   margin: 0;
   padding: 0;
}

.swiper-container {
   width: 100%;
   height: 400px;
   padding: 50px;
}

.swiper-slide {
   background-position: center;
   background-size: cover;
   width: 600px;
   height: 400px;
}
</style>

<body>


   <div style="max-width: 1500px; margin: 0 auto; height: 100%;">
      <h2 class="text-center">혼밥의 모든것</h2>

      <div class="layout div1" style="height: 100%;">검색영역</div>
      <div class="container div2">

         <c:choose>
            <c:when test="${CommunityVOList == null }">
               <p align="center">
                  <b><span style="font-size: 9pt;">등록된 글이 없습니다.</span></b>
               </p>
            </c:when>

            <c:when test="${CommunityVOList != null }">
               <div class="row ">
                
                  <div class="swiper-container">
                     <div class="swiper-wrapper">
                        <c:forEach var="best5" items="${bset5_List}" varStatus="i" >
                         <script>
                               var contentimg = '${bset5_List[i.index].content}';
                              var firstimg = $(contentimg).find(
                                    'img:first').attr('src');
                              console.log(firstimg);
                               $('.swiper-wrapper').append('<a href="get.do?comSeq=${best5.comSeq }" class="swiper-slide" style="background-repeat:no-repeat; background-size: 300px 400px; background-image: url('+firstimg+'"></a>'); 
                           </script> 
                           </c:forEach> 
                     </div>
                     <div class="swiper-pagination"></div>
                  </div>
               


                  <!-- <div class="row"
                  style="width: 100%; height: 300px; margin-bottom: 100px;">
                  이번주 베스트 가게는 ~ <img style="width: 100%; height: 100%;"
                     src="/app/resources/img/no.jpg">
               </div>  -->

                  <c:forEach var="CommunityVO" items="${CommunityVOList }"
                     varStatus="articleNum">

                     <div class="col-md-4" id="select">

                        <div class="single-blog">

                           <a class="main-img${articleNum.index}"
                              href="get.do?comSeq=${CommunityVO.comSeq }"
                              class="img w-100 mb-3"> <script>
                                 var contentimg = '${CommunityVO.content}';
                                 var firstimg = $(contentimg).find(
                                       'img:first').attr('src');
                                 console.log(firstimg);
                                 var image = document
                                       .createElement("IMG");
                                 image.src = firstimg;
                                 image.height = 300;
                                 image.width = 300;
                                 image.alt = "이미지가없습니다.";
                                 console.log(image);
                                 $('.main-img${articleNum.index}')
                                       .html(image);
                              </script>
                           </a>



                           <div class="text w-100 text-center">
                              <h3>
                                 <a href="get.do?comSeq=${CommunityVO.comSeq }">${CommunityVO.title }</a>
                              </h3>
                              <div class="likes">
                                 <i class="fa fa-thumbs-o-up"></i>좋아요: ${CommunityVO.likes } <i
                                    class="fa fa-comment-o"> 댓글수 : 3</i> 조회수:${CommInfoVO.hit }
                              </div>
                              <br>
                              <p class="blog-meta">작성자: ${CommunityVO.nickName } /
                                 작성일:${CommunityVO.regdate }</p>

                              <span>#혼술가능</span> <span>#바테이블</span>
                           </div>



                        </div>
                        <!-- single-blog끝  -->

                        <%--          작성자: ${CommunityVO.id } <br> <br> <br> 조회수:
                     ${CommunityVO.hit } <br> <br> 종합별점수 :
                     ${infoList[articleNum.index].sumStar}<br> 매장이름:
                     ${infoList[articleNum.index].title}<br> 매장위치 :
                     ${infoList[articleNum.index].adr}<br> 매장업종 :
                     ${infoList[articleNum.index].categoryName}<br> 매장전화번호:
                     ${infoList[articleNum.index].tel}<br> --%>

                     </div>
                     <!--col-md-4 끝  -->

                  </c:forEach>




               </div>
               <!-- row 끝  -->



               <div class="number">
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
                                       <a
                                          href="select.do?section=${section+1}&pageNum=${section }">다음</a>
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
                                    <a
                                       href="select.do?section=${section+1}&pageNum=${section - 1}">다음</a>
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
            </c:when>

         </c:choose>
         <c:remove var="endPage" />
         <div>
            <form action="insert.jsp">
               <input type="submit" value="글쓰기">
            </form>
         </div>

      </div>
      <!--컨테이너끝 -->

   </div>
   <!-- 마지막 div -->

   <script type="text/javascript"
      src="/app/resources/js/hojokinfo/swiper.js"></script>
   <script>
      var swiper = new Swiper('.swiper-container', {
         effect : 'coverflow',
         grabCursor : true,
         centeredSlides : true,
         slidesPerView : 'auto',
         coverflowEffect : {
            rotate : 50,
            stretch : 0,
            depth : 100,
            modifier : 1,
            slideShadows : true,
         },
         pagination : {
            el : '.swiper-pagination',
         },
      });
   </script>

</body>
</html>