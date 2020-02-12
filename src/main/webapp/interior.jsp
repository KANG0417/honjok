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
<div>
	<table>
	<c:forEach var="interiorvo" items="${interiorList }">
		<tr>
			<td class="center">${interiorvo.com_seq }</td>
			<td>
			 	<a href="getInteriorList.do?seq=${interiorvo.com_seq }">
					${interiorvo.comm.title }
				</a>
			</td> 
			<td>${interiorvo.comm.id }</td>
			<td>${interiorvo.comm.regdate }</td>
			<td class="center">${interiovo.comm.hit }</td>
		</tr>
	</c:forEach>
	</table>
	<a href="insertInteriorb.jsp"><input type="button" value="글쓰기"></a>
</div>
</body>
</html>