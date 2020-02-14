<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

 <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!--CSS 연결 -->
   <link href="${pageContext.request.contextPath}/resources/css/hojokinfo/style.css" rel="stylesheet">
</head>
<body>




    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-3">
            <h2 >혼밥 정보</h2>
        </div>
        
  <c:choose>
   <c:when test="${CommunityVOList == null }" >
	         <p align="center">
	            <b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
	        </p>
  </c:when>
  
  
     <c:when test="${CommunityVOList != null }">
  
      <tr>
         <td>${CommunityVO.com_seq }</td>
         <td><a href="get.do?com_seq=${CommunityVO.com_seq }">${CommunityVO.title }</a></td>
         <td>${CommunityVO.id }</td>
         <td>${CommunityVO.regdate }</td>
         <td>${CommunityVO.hit }</td>
         <td>${CommunityVO.likes }</td>
      </tr>

        <div class="row">
         <c:forEach var="CommunityVO" items="${CommunityVOList }" varStatus="articleNum">
        	<div class="col-md-4">
        			<a href="get.do?com_seq=${CommunityVO.com_seq }" class="img w-100 mb-3"> <img class="img w-100 mb-3" src="${pageContext.request.contextPath}/resources/img/no.jpg"></a>
        			<div class="text w-100 text-center">
        				<h3><a href="get.do?com_seq=${CommunityVO.com_seq }">${CommunityVO.title }</a></h3>
        				작성자: ${CommunityVO.id }
        				작성일: ${CommunityVO.regdate }
        				작성자: ${CommunityVO.id }
        				조회수: ${CommunityVO.hit }
        				좋아요: ${CommunityVO.likes }
        			</div>
        	
        		</div>
        	</c:forEach>
       
    	</div>
   </c:when>
    	
    	</c:choose>
 


<div class="center"> 
   <c:if test="${countList != null}">
      <c:choose>
         <c:when test="${countList > 60 }">
         <c:set var="endPage" value="${countList/60 + 1 }" scope="page"></c:set>
       
         <c:if test="${endPage-(endPage%1) != section}">
            <c:forEach var="page" begin="1" end="10" step="1">
            
               <c:if test="${section > 1 && page == 1}">
                  <a href="select.do?section=${section-1}&pageNum=${(section-1)*10 }">이전</a>
               </c:if>
               
                  <a href="select.do?section=${section}&pageNum=${page}">${(section-1)*10 +page } </a>
            
               <c:if test="${page == 10 }">
                  <c:if test="${section ==1 }">
                     <a href="select.do?section=${section+1}&pageNum=${section }">다음</a>
                  </c:if>
                  <c:if test="${section != 1 }">
                     <a href="select.do?section=${section+1}&pageNum=${section - 1}">다음</a>
                  </c:if>
               </c:if>
            </c:forEach>
            </c:if>
            
         <c:if test="${endPage-(endPage%1) == section}">
            <c:forEach var="page" begin="1" end="${(countList % 60 / 10) + (1-(countList % 60 / 10)%1)%1}" step="1">
            
               <c:if test="${section > 1 && page == 1}">
                  <a href="select.do?section=${section-1}&pageNum=${(section-1)*10-10 }">이전</a>
               </c:if>
               
                  <a href="select.do?section=${section}&pageNum=${page}">${(section-1)*10 +page } </a>
            
               <c:if test="${page == 10 }">
                  <a href="select.do?section=${section+1}&pageNum=${section - 1}">다음</a>
               </c:if>
            </c:forEach>
            </c:if>
         
         </c:when>
      
         
         <c:when test="${countList == 100 }">
            <c:forEach var="page" begin="1" end="10" step="1">
               <a href="#">${page }</a>
            </c:forEach>
         </c:when>
         
            <c:when test="${countList < 100 }">
            <c:forEach var="page" begin="1" end="${countList/10 + 1 }" step="1">
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

<c:remove var="endPage"/> 
<form action="insert.jsp">
   <input type="submit" value="글쓰기">
</form>
</body>
</html>