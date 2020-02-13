<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>

<thead>

   <tr>
      <th>글번호</th>
      <th>제목</th>
      <th>작성자</th>
      <th>작성일</th>
      <th>조회수</th>
      <th>좋아요</th>
   </tr>

</thead>




<tbody>
<c:choose>
  <c:when test="${CommunityVOList == null }" >
    <tr>
      <td colspan="6">
         <p align="center">
            <b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
        </p>
      </td>  
    </tr>
  </c:when>
   <c:when test="${CommunityVOList != null }">
   <c:forEach var="CommunityVO" items="${CommunityVOList }" varStatus="articleNum">
      <tr>
         <td>${CommunityVO.com_seq }</td>
         <td><a href="get.do?com_seq=${CommunityVO.com_seq }">${CommunityVO.title }</a></td>
         <td>${CommunityVO.id }</td>
         <td>${CommunityVO.regdate }</td>
         <td>${CommunityVO.hit }</td>
         <td>${CommunityVO.likes }</td>
      </tr>
   </c:forEach>
   </c:when>
</c:choose>
</tbody>   
</table>
   <c:if test="${countList != null}">
      <c:choose>
         <c:when test="${countList > 100 }">
         <c:set var="endPage" value="${countList/100 + 1 }" scope="page"></c:set>
         <p>엔드페이지계산${endPage-(endPage%1) }</p>
         
         <p> ${section }</p>
         <p>${(countList % 100 / 10) + (1-(countList % 100 / 10)%1)%1 }</p>
         
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
            <c:forEach var="page" begin="1" end="${(countList % 100 / 10) + (1-(countList % 100 / 10)%1)%1}" step="1">
            
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
<hr>
<c:remove var="endPage"/> 
   ${section }
   ${pageNum }
<form action="insert.jsp">
   <input type="submit" value="글쓰기">
</form>
</body>
</html>