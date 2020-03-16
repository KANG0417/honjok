<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>삶은 null이다  . . .</title>
<style>
#video-background {
  position: absolute;
  right: 0; 
  bottom: 0;
  min-width: 100%; 
  min-height: 100%;
  width: auto; 
  height: auto;
  z-index: -100;
}

.overlay {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color:rgba(0,0,0,0.2);
}

header h1 {
  position: absolute;
  top: 50%;
  width: 100%;
  font-size: 36px;
  letter-spacing: 3px;
  color: #fff;
  text-align: center;
  color:skyblue;
  margin-top:5px;
  border-radius:40%;
  color:green;
  
}
.main{
    text-align:center;
    margin:150px;
    color:#fff;
    position:absolute;
    padding-left:25px;
}

</style>
</head>
<body>
<div class="text-center">
<!--   <h2>삶은 null이다? </h2> -->
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
  <a class="navbar-brand" href="index.jsp">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="signUp.jsp">회원가입</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="login.jsp">로그인</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${contextPage.request.contextPath }/app/interior/interiorAllList.do">인테리어</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${contextPage.request.contextPath }/app/cook/CookAll.do">레시피</a>
      </li>    
      <li class="nav-item">
        <a class="nav-link" href="${contextPage.request.contextPath }/app/honjokInfo/select.do">혼밥정보</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="/app/admin/productReg.jsp">상품등록</a>
      </li>     
    </ul>
  </div>  
</nav>
 <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="index.jsp">혼자왔니?</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="/app/mypage/myPage.jsp">MyPage
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">CS</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
<header>
    <div class="overlay">
        <h1></h1>
    </div>
    <video autoplay="" loop="" id="video-background">
        <source src="https://storage.coverr.co/videos/coverr-matukad-island-1558720187591?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6IjExNDMyN0NEOTRCMUFCMTFERTE3IiwiaWF0IjoxNTcyNDg0ODMyfQ.iePAwahyOV0FoHyMEei4ghH6VsYFhfgZmzVLBnO0SzE" type="video/mp4">Your browser does not support the video tag. I suggest you upgrade your browser.
    </video>
</header>
<h1 class="main d-none">Travel The World</h1>
  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; 혼족 : Honjok 2020<br>
      02-3486-9600서울 서초구 강남대로 459</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
