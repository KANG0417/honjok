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
<c:forEach var="CommunityVO" items="${CommunityVOList }">
	<tr>
		<td>${CommunityVO.com_seq }</td>
		<td><a href="get.do?com_seq=${CommunityVO.com_seq }">${CommunityVO.title }</a></td>
		<td>${CommunityVO.id }</td>
		<td>${CommunityVO.regdate }</td>
		<td>${CommunityVO.hit }</td>
		<td>${CommunityVO.likes }</td>
	</tr>
</c:forEach>
</tbody>

</table>
</body>
</html>