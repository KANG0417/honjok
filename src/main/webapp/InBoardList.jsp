<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인테리어 게시판</title>
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
</head>
<body>
<div id="bbs">
<table>
	<caption>게시글 목록</caption>
	<thead>
		<tr class="title">
			<th class="no">번호</th>
			<th class="subject">제목</th>
			<th class="writer">글쓴이</th>
			<th class="regdate">날짜</th>
			<th class="hit">조회수</th>
		</tr>
	</thead>
	
	<tbody>
		<c:choose>
		<c:when test="${empty interiorList }">
			<tr>
				<td colspan="5">
					<h2>현재 등록된 게시글이 없습니다.</h2>
				</td>
			</tr>
		</c:when>
		<c:otherwise>
	<c:forEach var="interiorvo" items="${interiorList }">
		<tr>
			<td class="center">${interiorvo.com_seq }</td>
			<td>
			 	<a href="getInterior.do?seq=${interiorvo.com_seq }">
					${interiorvo.comm.title }
				</a>
			</td>
			<td>${interiorvo.comm.id }</td>
			<td>${interiorvo.comm.regdate }</td>
			<td class="center">${interiovo.comm.hit }</td>
			<td><input type="hidden" value="${type }"></td>
		</tr>
	</c:forEach>
		</c:otherwise>
		</c:choose>
	</tbody>
	
	<tfoot>
		<tr>
			<td colspan="5">
				<ol class="paging">
				<%--[이전으로]에 대한 사용여부 처리 --%>
				<c:choose>
					<%--사용불가(disable) : 첫번째 블록인 경우 --%>
					<c:when test="${paging.beginPage == 1}">
						<li class="disable">이전으로</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="getInterior.do?cPage=${paging.beginPage - 1}&type=getInterior&selValue=${selValue }">이전으로</a>
						</li>
					</c:otherwise>
				</c:choose>
				
				<%-- 블록내에 표시할 페이지 표시(시작페이지~끝페이지) --%>
				<c:forEach var="k" begin="${paging.beginPage }" end="${paging.endPage }">
				<c:choose>
					<c:when test="${k == paging.nowPage}">
						<li class="now">${k }</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="getInterior.do?cPage=${k}&type=getInterior&selValue=${selValue }">${k}</a>
						</li> 
					</c:otherwise>
				</c:choose>
				</c:forEach>
				
				<%--[다음으로]에 대한 사용여부 처리 --%>
				<c:choose>
					<%--사용불가(disable) : 
						endPage가 전체페이지 수보다  크거나 같으면 --%>
					<c:when test="${paging.endPage >= paging.totalPage }">
						<li class="disable">다음으로</li>
					</c:when>
					<c:otherwise>
						<li><a href="getInterior.do?cPage=${paging.endPage + 1}&type=getInterior&selValue=${selValue }">다음으로</a></li>
					</c:otherwise>
				</c:choose>
				</ol>	
			</td>
			
		</tr>
	</table>
	<a href="insertInteriorboard.jsp"><input type="button" value="글쓰기"></a>
</div>
</body>
</html>