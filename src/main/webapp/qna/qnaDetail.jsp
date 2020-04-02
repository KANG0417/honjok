<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%
    	request.setCharacterEncoding("UTF-8");
    %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">
	function fn_delete() {
		location.href = "${pageContext.request.contextPath}/board/qna/qnaDelete?qna_num="
				+ $
		{
			qna.qna_num
		}
		;//EL 표기로 사용가능함
	}
	function fn_update(qna_num) {
		location.href = "${pageContext.request.contextPath}/board/qna/qnaEdit/${qna.qna_num}";//EL 표기로 사용가능함
	}
</script>

<body>
	<h3>게시판 상세보기</h3>
	
	<table class="table table-bordered">
		<tr>
			<td width="20%">제목</td>
			<td>${qna.qna_title}</td>
		</tr>
		<tr>
			<td>글쓴이</td>
			<td>${qna.mem_id}</td>
		</tr>
		<tr>
			<td>작성일자</td>
			<td>${qna.reg_date}</td>
		</tr>
		<tr>
			<td>조회수</td>
			<td>${qna.qna_hit}</td>
		</tr>
		
		<tr>
			<td>첨부파일</td>
			<td>
				<p>
				<c:forEach var="fileItem" items="${board.fileItemList}">
				<div>
					<a href="${pageContext.request.contextPath}/common/download/${fileItem.file_seq_no}">${fileItem.file_name}</a> ${fileItem.file_fancy_size}
				</div>
				</c:forEach>
				
				</p>
				
			</td>
		</tr>

		<tr>
			<td colspan="2" style="white-space: pre-wrap;">${qna.qna_content}</td>
		</tr>

		<tr>
			<td colspan="2" align="center">
				<%-- <c:if test="${board.bo_writer} == ${member.mem_id}"> --%> 
				<c:if test="${not empty LOGIN_USER and (LOGIN_USER.mem_id eq qna.mem_id)}">
					<input type="button" class="btn btn-default" value="수정"
						onclick="fn_update('${qna.qna_num}')">
					<input type="button" class="btn btn-default" value="삭제"
						onclick="fn_delete('${qna.qna_num}')">
				</c:if> <input type="button" class="btn btn-default" value="목록"
				onclick="location.href='${pageContext.request.contextPath}/board/qna/qnaList'">
			</td>
		</tr>
	</table>

</body>
</html>