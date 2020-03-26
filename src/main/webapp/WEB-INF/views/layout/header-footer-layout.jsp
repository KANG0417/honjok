<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
 
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
 
<!DOCTYPE html PUBLIC"-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<head>
 <title>테스트 페이지</title>
  
 <!-- 공통 CSS -->
 
  
 
 <!-- 공통 JS -->
  
 <decorator:head />
</head>
 
  
<!-- Navigation -->

  <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
  <a class="navbar-brand" href="${contextPage.request.contextPath }/app/index.jsp">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="${contextPage.request.contextPath }/app/signUp.jsp">회원가입</a>
      </li>
      <li class="nav-item" style="valign: right">
        <a class="nav-link" href="${contextPage.request.contextPath }/app/login.jsp">로그인</a>
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
  
 <div>
  <decorator:body />
 </div>
  
 <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; 혼족 : Honjok 2020<br>
      02-3486-9600서울 서초구 강남대로 459</p>
    </div>
  </footer>


