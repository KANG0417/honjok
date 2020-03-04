<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
s<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>가격</th>
			<td>
				${mainSelect.pName}
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${mainSelect.nick_name }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				${interiorSelect.content }
			</td>
		</tr>
		<tr>
			<th>등록일</th>
			<td>${interiorSelect.regdate }</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${interiorSelect.hit }</td>
		</tr>
		<tr>
			<th>파일이미지</th>
			<td>${interiorSelect.file_image }</td>
		</tr>
	</table>
</body>
</html>