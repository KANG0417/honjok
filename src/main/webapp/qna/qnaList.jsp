<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript">

function fn_search(page) {
	
	frm = document.searchForm;
	
	frm.currentPage.value = page;
	
	if(frm.searchType.value != "" && frm.searchWord.value == ""){
		alert("검색어를 입력하시오");
		return;
	}
	
	frm.submit();
	
}


</script>


<body>
<h3 align="center">나의 문의내역</h3>



<form action="qnaList" name="searchForm" method="post" class="form-inline">
	<p>
	<input type="hidden" name="currentPage">
	
		<select name="searchType" class="form-control">
			<option value="">전체</option>
		<option value="01" ${param.searchType == '01' ? 'selected' : '' }>제목</option>
			<option value="02" ${param.searchType == '02' ? 'selected' : '' }>내용</option>
			<option value="03" ${param.searchType == '03' ? 'selected' : '' }>제목+내용</option>
			<option value="04" ${param.searchType == '04' ? 'selected' : '' }>글쓴이</option>
		</select>
		<input type="text" class="form-control" name="searchWord" value="${param.searchWord }">
		<input type="button" value="검색" class="btn btn-primary" onclick="fn_search('1')">
	
	</p>
	<p>
<!-- 		<div style="display: inline;"> -->
<%-- 			<label>총 게시물 수 : ${pagingUtil.totalCount}</label> --%>
<!-- 		</div> -->
		<div align="justify">
			<input type="button" class="btn btn-primary" value="글쓰기" onclick="location.href='qnaForm.jsp'">
		</div>
		<div style="float: right;">
			<label>페이지 수 </label>
			<select name="pageSize" class="form-control">
				<option value="10" ${param.pageSize ==10 ?  'selected' : ''}>10개</option>
				<option value="20" ${param.pageSize ==20 ? 'selected' : ''}>20개</option>
				<option value="50" ${param.pageSize ==50 ?  'selected' : ''}>50개</option>
				<option value="100" ${param.pageSize ==100 ? 'selected' : ''}>100개</option>
			</select>
		</div>
		
	</p>

</form>


<p>

<table class="table table-bordered table-striped table-hover">
	<thead>
		<tr>
			<th style="text-align: center;">번호</th>
			<th style="text-align: center; width: 10%">썸네일</th>
			<th style="text-align: center; width: 50%">제목</th>
			<th style="text-align: center;">작성자</th>
			<th style="text-align: center;">조회수</th>
			<th style="text-align: center; width: 20%">등록일</th>
		</tr>
	</thead>
	<tbody>
<%-- 		<c:if test="${not empty qnaList}"> --%>
			<c:forEach var="qna" items="${qnaList}">
				<tr>
					<td>${qna.comSeq}</td>
					<td><img src="upload/${vo.upload }" width="50px" height="50px"></td>
					<td><a href="QnaDetail.do?comSeq=${qna.comSeq}">${qna.title }</a></td>
					<td>${qna.regdate }</td>
					<td>${qna.hit }</td>
					<td>${qna.nickName }</td>
				</tr>
				</c:forEach>
<%-- 			</c:if> --%>
			<c:if test="${empty qnaList}">
				<tr>
					<td colspan="7" style="text-align: center;">조회된 결과가 없습니다.</td>
				</tr>
			</c:if>
		
	</tbody>

</table>



</body>
</html>