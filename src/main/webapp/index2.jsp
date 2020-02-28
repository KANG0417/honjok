<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--CSS 연결 -->
<link
	href="${pageContext.request.contextPath}/resources/css/hojokinfo/style.css"
	rel="stylesheet">
</head>
<body>




<div class="container">
	<div class="row justify-content-center mb-5 pb-3">
		<h2>메인페이지</h2>
	</div>
		<hr>
			<h3>${userSession.id}님 안녕하세요!<a href="logout.do">Log-out</a></h3>
				<div class="row">
					<div class="row"style="width: 100%; height: 300px; margin-bottom: 100px;">
			
					</div>

			<div class="col-md-4" id="select">
				<table>
					<c:forEach var="main" items="${mainList}">
						<tr>
							<td class="center"> 카테고리 : ${main.upperCategory}</td>
							<td>카테고리1: ${main.subCategory}</td>
							<td>카테고리2: ${main.subCategory2}</td>
							<td>가격: ${main.price}</td>
							<td class="center">가격: ${main.price}</td>
							<td>
								<a href ="#">				
									<img id="previewImg" src="/app/resources/img/${main.thumnailImg}" width="150px;" height="150px;"/>
								</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
	  </div>
</div>