<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내꺼 요리게시판임</title>
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
<table>
	<caption>글 목록</caption>
	<thead>
		<tr class="title">
			<th class="no">번호</th>
			<th class="subject">제목</th>
			<th class="writer">글쓴이</th>
			<th class="regdate">날짜</th>
			<th class="hit">조회수</th>
			<th class="likes">좋아요</th>
			<th class="p_num">상품번호</th>
		</tr>
	</thead>
<tbody>

   <c:forEach var="cookvo" items="${cookList }">
      <tr>
         <td>${cookvo.com_seq }</td>
         <td><a href="getInterior.do?com_seq=${interiorvo.com_seq }">${interiorvo.title }</a></td>
         <td>${cookvo.nickname }</td>
         <td>${cookvo.regdate }</td>
         <td>${cookvo.hit }</td>
         <td>${cookvo.likes }</td>
         <td>${cookvo.p_num }</td>
      </tr>
    </c:forEach>

</tbody>   
</table>

<form action="cook/insert.jsp">
   <input type="submit" value="글쓰기">
</form>
</body>
</html>