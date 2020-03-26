<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<head>
<meta charset="UTF-8">
<title>글상세보기</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/blog-home.css" rel="stylesheet">

<script>
function fn_delete() {
	var frmDel = document.frm;
	/* //비밀번호 일치여부 확인
	if (frmDel.pwd.value == "${bvo.pwd}") {
		//비밀번호 일치하는 경우  */
		var isDelete = confirm("정말 삭제 할까요?");
		if (isDelete) {
/*				frmDel.submit(); 
			location.href="deleteArticle.do?com_seq="+seq; */
			document.getElementById('deleteform').submit();

		} else {
			history.back();
		}
}

</script>
</head>
<body>
<!-- Page Content -->
    <div class="container">

      <!-- Page Heading -->
      <h1 class="my-4">오늘의 요리
        <small>Secondary Text</small>
      </h1>

      <!-- Project One -->
      <div class="row">
        <div class="col-md-7">
          <a href="#">
            <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/700x300" alt="">
          </a>
        </div>
        <div class="col-md-5">
          <h3>Project One</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>
          <a class="btn btn-primary" href="#">View Project</a>
        </div>
      </div>
      <!-- /.row -->

      <hr>
      
<div id="container">
			<input type="hidden" name="comSeq" value="${cookDetail.comSeq }">
<!-- 		<tr> -->
<!-- 			<th>제목</th> -->
<!-- 			<td> -->
<%-- 				${cookDetail.title } --%>
<!-- 			</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<th>작성자</th> -->
<%-- 			<td>${cookDetail.nickName }</td> --%>
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<th>내용</th> -->
<!-- 			<td> -->
<%-- 				${cookDetail.content } --%>
<!-- 			</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<th>등록일</th> -->
<%-- 			<td>${cookDetail.regdate }</td> --%>
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<th>조회수</th> -->
<%-- 			<td>${cookDetail.hit }</td> --%>
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<th>좋아요</th> -->
<%-- 			<td>${cookDetail.likes }</td> --%>
<!-- 		</tr> -->
		
		
		
		 <a href="insert.jsp">글등록</a>
		<a href="${contextPage.request.contextPath}/app/cook/CookAll.do">글목록</a>
		<form class="update" action="update.jsp">
		   <c:set value="${cookDetail}" var="ckvo" scope="session"></c:set>
		   <input type="submit" value="수정">
		</form>
		
		<form action="delete.do?comSeq=${cookDetail.comSeq}" id="deleteform">
		   <input type="submit" onclick="fn_delete()" value="삭제">
		   <input type="hidden" name="comSeq" id="comSeq" value="${cookDetail.comSeq }">
		</form>
</div>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <!-- Blog Entries Column -->
      <div class="col-md-8">

        <h1 class="my-4">레시피
        </h1>

        <!-- Blog Post -->
        <div class="card mb-4">
          <div class="card-body">
            <h2 class="card-title">${cookDetail.title }</h2>
            <p class="card-text">${cookDetail.content }</p>
            <a href="#" class="btn btn-primary">Read More &rarr;</a>
          </div>
          <div class="card-footer text-muted">
            Posted on ${cookDetail.regdate } by
            <a href="#">${cookDetail.nickName }</a>
          </div>
        </div>


        <!-- Pagination -->
        <ul class="pagination justify-content-center mb-4">
          <li class="page-item">
            <a class="page-link" href="#">&larr; Older</a>
          </li>
          <li class="page-item disabled">
            <a class="page-link" href="#">Newer &rarr;</a>
          </li>
        </ul>

      </div>

      <!-- Sidebar Widgets Column -->
      <div class="col-md-4">

        <!-- Search Widget -->
        <div class="card my-4">
          <h5 class="card-header">Search</h5>
          <div class="card-body">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search for...">
              <span class="input-group-btn">
                <button class="btn btn-secondary" type="button">Go!</button>
              </span>
            </div>
          </div>
        </div>

        <!-- Categories Widget -->
        <div class="card my-4">
          <h5 class="card-header">Categories 음식분류..</h5>
          <div class="card-body">
            <div class="row">
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#">간편식</a>
                  </li>
                  <li>
                    <a href="#">보양식</a>
                  </li>
                  <li>
                    <a href="#">Junk Food</a>
                  </li>
                </ul>
              </div>
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#">한식</a>
                  </li>
                  <li>
                    <a href="#">일식</a>
                  </li>
                  <li>
                    <a href="#">양식</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <!-- Side Widget -->
        <div class="card my-4">
          <h5 class="card-header">Side Widget</h5>
          <div class="card-body">
            Locate any Ad here !<br>
            Locate any Ad here !<br>
            Locate any Ad here !<br>
             
          </div>
        </div>

      </div>

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</body>
</html>