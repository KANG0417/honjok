<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 css</title>
<style media="screen">
.board-thumbnail-image {
    position: relative;
    overflow: hidden;
    border-radius: 8px;
    background-color: #ededed;
    width: 500px;
    heigh: 800px;
    flex-flow: row wrap;
}

#main {
	display: flex;
	
}

</style>
</head>
<body>
<h2>인테리어 게시판</h2>
<h2>전체: </h2>
<div id="main">
	<div>
		<img class="board-thumbnail-image" src="resources/집/인테리어1.png">
	</div>
	<article>
		
	</article>
	<div>
		<img class="board-thumbnail-image" src="resources/집/인테리어2.jpg">
	</div>
	<div>
		<img class="board-thumbnail-image" src="resources/집/인테리어3.png">
	</div>

</div>

  </body>
</html>