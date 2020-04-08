<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/73d0df04d6.js" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>    
<script src="https://unpkg.com/swiper/js/swiper.min.js"></script>    
<link href="/app/resources/css/main/main.css" rel="stylesheet">
<title>ONE-MARKERT</title>
</head>
<style>
	.sticky {
	  position: fixed;
	  top: 0;
	  width: 100%;
	  background: white;
	  border-bottom: 1px solid silver;
	}
	
	/* 맨위로 css */
	a#MOVE_TOP_BTN {
	    position: fixed;
	    right: 2%;
	    bottom: 50px;
	    display: none;
	    z-index: 999;
	    cursor: pointer;
	}

</style>
<body>

    <div id="wrap" class="main">
        <!--상단 띠배너-->
        <!--//상단 띠배너-->
        <nav id="skip_navi">
            <a href="#">본문 바로가기</a>
            <a href="#">메뉴 바로가기</a>
            <a href="#">하단 정보 바로가기</a>
        </nav>
        <!-- 맨위로 -->
        	<a  id="MOVE_TOP_BTN" onclick="">
        	 <i class="fas fa-arrow-alt-circle-up fa-4x" style="color:#4682B4;"></i>
       		</a>
        <header id="header">
            <h1 onclick="location.href='/app/main/getMainList.do'">
            </h1>
            <section class="top_nav">
                <nav>
                    <ul>
                    <c:if test="${empty sessionScope.userSession.id}">
                        <li><a href="${contextPage.request.contextPath}/app/login.jsp">로그인</a></li>
                    </c:if>
                    <c:if test="${!empty sessionScope.userSession.id}">
                        <li>${userSession.id}님 안녕하세요!<a href="/app/logout.do">로그 아웃</a></li>
                    </c:if>
                        <li>
                            <a href="/app/signUp.jsp">회원가입</a>
                        </li>
                        <li>
                            <a href="#">주문/배송조회</a>
                        </li>
                        <li>
                            <a href="/app/qna/cs.jsp">고객센터</a>
                        </li>
                    </ul>
                    <!-- 로그인후 -->
                </nav>
            </section>
            <section class="cf_side">
                <div class="campain">
                    <a class="btn_campain" href="#">
                   			 혼족을 위한 맞춤형 쇼핑몰 원마켓
                    </a>
                    <!-- 캠페인 배너 -->
                </div>
                <div class="fastinfo">
                    <form id="headersearchForm">
                        <div class="search_cart">
                            <div class="search_faq">
                                <input type="search" title="검색 입력창" name="topSearchKeyword" 
                                       placeholder="지금 꼭! 필요한 안티폴루션 필수템!" maxlength="20">
                                <button type="submit" onclick="topSearchKeyword">
                                    <span>검색</span>
                                </button>
                            </div>
                            <a class="btn-cart" href="/app/getCartList.do?memId=${userSession.id }">
                                <span class="hide">장바구니</span>
                                <span class="count">${basketCount != null? basketCount : 0}</span>
                            </a>
                        </div>
                    </form>
                    <div class="hashtag" style="display: block-inline; width: 308px; height: 20px; overflow: hidden;"> 
                        <div style="float:left; white-space:nowrap;">
                             <a href="#none" onclick="gokey('모든 고객 10%할인가 + 멤버십 쿠폰!'); return false;"> #모든 고객 10%할인가 + 멤버십 쿠폰!</a>
                        </div>
                    </div>  
                </div>
            </section>
            <section class="gnb_nav" id="navbar">
                <nav>
                    <ul class="left">
                        <li>
                            <a href="/app/Product/ProductList.do">
                                <span>스토어</span>
                               <!--<em></em>-->
                            </a>
                            <div class="sub contain" style="display: none; opacity: 1;">
                                <div class="menu">
                                    <ul>
                                        <li>
                                            <a href="#">베스트</a>
                                        </li>
                                        <li>
                                            <a href="#">단독구성</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="">
                            <a href="${contextPage.request.contextPath}/app/interior/interiorAllList.do">
                                <span>인테리어</span>
                                <!--<em></em>-->
                            </a>
                        </li>
                        <li class="">
                            <a href="/app/honjokInfo/select.do">
                                <span>혼족 정보</span>
                                <!--<em></em>-->
                            </a>
                        </li>
                        <li class="">
                            <a href="/app/cook/CookAll.do">
                                <span>혼족레시피</span>
                                <!--<em></em>-->
                            </a>
                        </li>

                    </ul>
                    <ul class="right">
                       <li class="">
                            <a href="#">
                                <span>이벤트</span>
                                <!--<em></em>-->
                            </a>
                        </li>
                            <li class="">
                            <a href="/app/qna/cs.jsp">
                                <span>고객센터</span>
                                <!--<em></em>-->
                            </a>
                        </li>
                    </ul>
                </nav>
            </section>
        </header>
        <section id="container">
            <section id="contents">
                <div id="mainslider" class="swiper-container">
                    <button class="mainslider-prev" type="button">
                        <span class="hide">이전</span>
                    </button>
                    <button class="mainslider-next" type="button">
                        <span class="hide">다음</span>
                    </button>
                    <div class="swiper-wrapper" style="width: 10080px; height: 699px; transform: translate(-1260px, 0px, 0px);                        transition-duration: 0.3s;">
                        <div class="swiper-slide swiper-slide-duplicate" style="width: 1140px; height: 699px;">
                            <a class="mainView" href="javascript:void(0);" target="_self">
                                <div class="img_banner" style="background-image:url(/app/resources/img/main/banner1.png);">
                                    <span class="hide">스팟스캔-바로가기</span>
                                </div>
                            </a>
                        </div>
                        <div class="swiper-slide swiper-slide-visible swiper-slide-active" style="width: 1140px; height: 699px;">
                            <a class="mainView" href="javascript:void(0);" target="_self">
                                <div class="img_banner" style="background-image:url(/app/resources/img/main/banner2.jpg);">
                                    <span class="hide">스팟스캔-바로가기</span>
                                </div>
                            </a>
                        </div>
                        <div class="swiper-slide swiper-slide-visible swiper-slide-active" style="width: 1140px; height: 699px;">
                            <a class="mainView" href="javascript:void(0);" target="_self">
                                <div class="img_banner" style="background-image:url(/app/resources/img/main/banner1.png);">
                                    <span class="hide">스팟스캔-바로가기</span>
                                </div>
                            </a>
                        </div>
                    </div>               
                </div>
                <div class="bestseller">
                    <h2>
                      	  베스트 셀러
                        <em>오늘의 베스트! 실시간 가장 hot한 상품</em>
                    </h2>
                    <div class="bestseller_slider">
                        <button class="bsprd-prev" type="button">
                            <span class="hide">이전</span>
                        </button>
                        <button class="bsprd-next" type="button">
                            <span class="hide">다음</span>
                        </button>
                        <div id="bsprd" class="swiper-container">
                            <div id="bestList" class="swiper-wrapper" style="width: 5700px;height:490px; transform: translate3d(0px, 0px, 0px);
                                    transition-duration: 0.3s;">
                                <c:forEach var="main" items="${mainList}">  
                                <div class="swiper-slide prdlist swiper-slide-duplicate swiper-slide-visible swiper-slide-active" style="width:285px; height: 490px;">
                                    <a href="/app/Product/Product.do?pNum=${main.pNum}">
                                        <span class="ico"></span>
                                        <span class="photo">
                                            <img src="/app/resources/img/${main.thumnailImg}" alt="상품명입력">
                                        </span>
                                        <span class="hash">#저렴하게!</span>
                                        <span class="tit">
                                            <strong>${main.brandName}</strong>
                                          	 ${main.pName}
                                        </span>
                                        <span class="star">
                                            <div class="star-rating star5">
                                                <span class="c50">
                                                    <em class="hide">별점 5개</em>
                                                </span>
                                            </div>
                                       
                                            <em>(264)</em>
                                        </span>
                                        <span class="price">
                                          ${main.price}
                                            <i>원</i>    
                                        </span>
                                    </a>
                                    <div class="over">
                                        <button class="detailview" onclick="prdtViewLink();">자세히보기</button>
                                        <button class="addCart basket">장바구니 담기</button>
                                    </div>
                                </div>
                            </c:forEach>    
                            </div>                                         
                        </div>
                    </div>
                </div>
                <div class="linkbanner">
                    <a class="left" href="#" >
                        <img src="/app/resources/img/main/advertise1.jpg" style="width: 560px; height: 180px;"alt=""/>
                    </a>
                    <a class="right" href="#">
                        <img src="/app/resources/img/main/advertise2.jpg" style="width: 560px; height: 180px;"alt=""/>
                    </a>
                </div>
                <div class="onlyone_hotdeal">
                    <div class="left">
                        <h2>
                            <i>원마켓 특가</i>
                            <em>오직 ONE-MARKET에만 있는 ONE-MARKET 추천템!</em>
                        </h2>
                        <div id="only_on1" class="prdlist">
                            <a href="#">
                                <span class="photo">
                                    <img src="/app/resources/img/main/b0d4deb5b124f0d950ad3acabac883b3.jpg" alt="미세먼지out"/>
                                </span>
                                <span class="hash">#저렴하게!</span>
                                <span class="tit">
                                    <strong>똘러리앙</strong>
                                    	미세먼지 OUT 3STEP 세트
                                </span>
                                <span CLASS="star">
                                    <div class="star-rating star5">
                                        <span class="c50">
                                            <em class="hide">별점 5개</em>
                                        </span>
                                    </div>
                                    <em>(100)</em>
                                </span>
                                <span class="price">
                                    <em class="sale">15%</em>
                                    
                                    <del>
                                        73,000
                                        <em>원</em>
                                    </del>
                                    62,050
                                    <i>원</i>
                                </span>
                                <span class="gift">
                                    <i class="ico-_sale">세일</i>
                                </span>
                            </a>
                            <div class="over">
                                <button class="detailview" onclick="prdtviewLink=#">자세히보기</button>
                                <button class="addcart basket">장바구니 담기</button>
                            </div>
                        </div>
                        <div id="only_on2" class="prdlist">
                            <a href="#">
                               <span class="photo">
                                    <img src="/app/resources/img/main/22750_shop1_883579.jpg" alt="미세먼지out"/>
                                </span>
                                <span class="hash">#미세먼지 OUT</span>
                                <span class="tit">
                                    <strong>똘러리앙</strong>
                                    미세먼지 OUT 3STEP 세트
                                </span>
                                <span CLASS="star">
                                    <div class="star-rating star5">
                                        <span class="c50">
                                            <em class="hide">별점 5개</em>
                                        </span>
                                    </div>
                                    <em>(100)</em>
                                </span>
                                <span class="price">
                                    <em class="sale">15%</em>
                                    
                                    <del>
                                        73,000
                                        <em>원</em>
                                    </del>
                                    62,050
                                    <i>원</i>
                                </span>
                                <span class="gift">
                                    <i class="ico-_sale">세일</i>
                                </span>
                            </a>
                            <div class="over">
                                <button class="detailview" onclick="prdtviewLink=#">자세히보기</button>
                                <button class="addcart basket">장바구니 담기</button>
                            </div>
                        </div>
                    </div>
                    <div class="right">
                        <h2>
                            <i>핫딜</i>
                            <em>이건 사야해 ONE-MARKET 세일템!</em>
                        </h2>
                        <div id="only_on3" class="prdlist">
                            <a href="#">
                                <span class="photo">
                                    <img src="/app/resources/img/main/22236_shop1_493001.jpg" alt="미세먼지out"/>
                                </span>
                                <span class="hash">#미세먼지 OUT</span>
                                <span class="tit">
                                    <strong>똘러리앙</strong>
                                	    미세먼지 OUT 3STEP 세트
                                </span>
                                <span CLASS="star">
                                    <div class="star-rating star5">
                                        <span class="c50">
                                            <em class="hide">별점 5개</em>
                                        </span>
                                    </div>
                                    <em>(100)</em>
                                </span>
                                <span class="price">
                                    <em class="sale">15%</em>
                                    
                                    <del>
                                        73,000
                                        <em>원</em>
                                    </del>
                                    62,050
                                    <i>원</i>
                                </span>
                                <span class="gift">
                                    <i class="ico-_sale">세일</i>
                                </span>
                            </a>
                            <div class="over">
                                <button class="detailview" onclick="prdtviewLink=#">자세히보기</button>
                                <button class="addcart basket">장바구니 담기</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="skinsolution_warp">
                    <div class="skinsolution">
                        <h2>
                      	      자취 필수아이템
                            <em>자취 필수 추천아이템 모음! 이건 사야해!</em>
                        </h2>
                        <div class="skinsolution_slider">
                            <div id="skinprd" class="swiper-container">
                                <div class="swiper-wrapper" style="width: 4680px; height: 478px; transform: translate3d(-1170px;, 0px, 0px);
                                                                  transition-duration: 0s;">
                                    <div class="swiper-slide swiper-slide-duplicate" style="width: 390px; height: 478px;">
                                        <a href="#">
                                            <img src="/app/resources/img/main/bannergagu1.png" alt="" style= "width:366px; height: 400px;">
                                            <span style="background-image:url(/image/2.png)"></span>
                                            <i style="background-image: url(/image/2.png)"></i>
                                            <em style="background-image: url(image/2.png)"></em>
                                        </a>
                                    </div>
                                    <div class="swiper-slide swiper-slide-duplicate" style="width: 390px; height: 478px;">
                                        <a href="#">
                                            <img src="/app/resources/img/main/bannergagu2.png" alt="" style= "width:366px; height: 400px;">
                                            <span style="background-image:url(/image/2.png) "></span>
                                            <i style="background-image: url(/image/2.png)"></i>
                                            <em style="background-image: url(image/2.png)"></em>
                                        </a>
                                    </div>
                                    <div class="swiper-slide swiper-slide-duplicate" style="width: 390px; height: 478px;">
                                        <a href="#">
                                            <img src="/app/resources/img/main/bannergagu3.png" alt="" style= "width:366px; height: 400px;">
                                            <span style="background-image:url(/image/2.png) "></span>
                                            <i style="background-image: url(/image/2.png)"></i>
                                            <em style="background-image: url(image/2.png)"></em>
                                        </a>
                                    </div>
                                    <div class="swiper-slide swiper-slide-duplicate" style="width: 390px; height: 478px;">
                                        <a href="#">
                                            <img src="/image/1.png" alt="">
                                            <span style="background-image:url(/image/2.png) "></span>
                                            <i style="background-image: url(/image/2.png)"></i>
                                            <em style="background-image: url(image/2.png)"></em>
                                        </a>
                                    </div>
                                </div>
                            </div>     
                            <button class="skinprd-prev" type="button">
                                <span class="hide">이전</span>
                            </button>
                            <button class="skinprd-next" type="button">
                                <span class="hide">다음</span>
                            </button>   
                        </div>
                    </div>
                </div>
                <div class="membership">
                    <div class="left">
                        <h2>
                            <a href="#">
                                ONE-MARKET 
                                <em>원마켓 특별혜택!</em>
                            </a>
                        </h2>
                    </div>
                    <div class="right">
                        <ul>
                            <li>
                                <a href="#">
                                    <strong>회원가입 완료 시</strong>
                                    <span>5,000원 할인쿠폰 + 무료배송</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <strong>첫 구매 확정 시</strong>
                                    <span>10,000원 할인 쿠폰</span>
                                </a>
                            </li>
                            <li>
                                <a>
                                    <strong>생일 축하 기념</strong>
                                    <span>5,000원 할인 쿠폰</span>
                                </a>
                            </li>
                            <li>
                                <a>
                                    <strong>구매 확정 시</strong>
                                    <span>등급 별 3~10% 적립</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="movie_warp">
                    <div class="movie">
                        <h2>
                                                         리얼꿀팁
                            <em>영상으로 만나는 리얼꿀팁!</em>
                        </h2>
                        <div id="youtube">
                            <a href="javascript:PlayYoutube();">
                                <img src="/app/resources/img/main/maxresdefault.png" alt="영상실행">
                            </a> 
                            <script>
                                    function PlayYoutube(){
                                         document.getElementById('youtube').innerHTML = '<iframe src="https://www.youtube.com/embed/u37t9rxBHF0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';
                                        }   	
                            </script>
                        </div>
                    </div>
                </div>    
                <div class="realreview_warp">
                    <div class="realreview">
                        <h2>
                        	리얼리뷰 
                            <em>원마켓 인테리어 제품 리얼 생생 리뷰</em>
                        </h2>
                        <div class="realreview_slider">
                            <div id="realprd" class="swiper-container">
                                <div class="swiper-wrapper" style="width: 4560px; height: 540px; transform: translate3d(-2280px, 0px, 0px); transition-duration: 0.3s;">
                                    <c:forEach var="Review" items="${productReviewList }">
                                    <div class="swiper-slide swiper-slice-duplicate" style="285px; height:540px">
                                        <a class="layer-pop" href="/app/Product/Product.do?pNum=${Review.pNum}">                                            <span class="img">
                                                <img src="/app/resources/img/review/${Review.photoImage1}" alt="">
                                            </span>
                                            <span class="hash">
                                                #태그 #태그
                                            </span>
                                            <span class="tit">
                                                <strong>${Review.pName}</strong>
                    								${Review.title}
                                            </span>
                                            <span class="reply">
                                              	${Review.title}
                                            </span>
                                            <span class="data">
                                                <span class="userNick">${Review.nickName}</span>
                                                <c:forEach var="i" begin="0" end="5" step="1">
	                                                <c:if test="${i < Review.rating+0}">
		                                                 <span class="star-rating blue">
		                                                </span>
		                                             </c:if>
		                                             
		                                             <c:if test="${i > Review.rating+0}">
		                                                 <span class="star-rating small">
		                                                </span>
		                                             </c:if>

                                                </c:forEach>
                                            </span>
                                        </a>
                                    </div>
                                    </c:forEach>
                                    
                                </div>      
                                                                 
                            </div>
                            <button class="realprd-prev" type="button">
                                <span class="hide">이전</span>
                            </button>    
                            <button class="realprd-next" type="button">
                                <span class="hide">다음</span>
                            </button>
                            </div>
                        </div>
                    </div>
                <div class="instagram">
                    <h2>
                      	  커뮤니티
                        <em>이번주 인기 게시글을 한 눈에 알아보자!</em>
                    </h2>
                    <div class="best">
                  	      이번주 베스트 인테리어는?
                    </div>
                    <ul>
                    	<c:forEach var="interList" items="${CommInteriorList}"  varStatus="articleNum">
	                        <li>
	                            <a href="/app/interior/getInterior.do?comSeq=${interList.comSeq }">
	                                <div class="image-box image-box${articleNum.index}">
	                                    <script>
	                   
                                 var contentimg = '${interList.content}';
                                 var firstimg = $(contentimg).find(
                                       'img:first').attr('src');
                                 console.log(firstimg);
                                 var image = document
                                       .createElement("IMG");
                                 image.src = firstimg;
                                 image.height = 250;
                                 image.width = 250;
                                 image.alt = "이미지가없습니다.";
                                 console.log(image);
                                 $('.image-box${articleNum.index}')
                                       .html(image);
                              </script>
	                                </div>
	                                <div class="subcontent"> 
	                                    <span class="hash">#우리집 자랑</span>
	                                    <span class="tit">${interList.title }</span>
	                                    <span class="userNick">${interList.nickName }</span>
	                                    <span class="views">${interList.hit }명이 봤어요</span>
	                                </div>
	                            </a>
	                        </li>
                        </c:forEach>
                    </ul>
                </div>
                
                <div class="underline"></div>
                <div class="instagram">
                    <div class="best">
                      	  이번주 베스트 혼족정보는?
                    </div>
                    <ul>
                    <c:forEach var="infoList" items="${CommInfoList}"  varStatus="articleNum">
	                        <li>
	                            <a href="/app/honjokInfo/get.do?comSeq=${infoList.comSeq }">
	                                <div class="image-box image-info${articleNum.index}">
	                                    <script>
	                   
                                 var contentimg = '${infoList.content}';
                                 var firstimg = $(contentimg).find(
                                       'img:first').attr('src');
                                 console.log(firstimg);
                                 var image = document
                                       .createElement("IMG");
                                 image.src = firstimg;
                                 image.height = 250;
                                 image.width = 250;
                                 image.alt = "이미지가없습니다.";
                                 console.log(image);
                                 $('.image-info${articleNum.index}')
                                       .html(image);
                              </script>
	                                </div>
	                                <div class="subcontent"> 
	                                    <span class="hash">#혼족 정보</span>
	                                    <span class="tit">${infoList.title }</span>
	                                    <span class="userNick">${infoList.nickName }</span>
	                                    <span class="views">${infoList.hit }명이 봤어요</span>
	                                </div>
	                            </a>
	                        </li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="underline"></div>
                <div class="instagram">
                    <div class="best">
               	         이번주 베스트 레시피는?
                    </div>
                    <ul>
                    <c:forEach var="cookList" items="${CommCookList}"  varStatus="articleNum">
	                        <li>
	                            <a href="/app/cook/CookDetail.do?comSeq=${cookList.comSeq }">
	                                <div class="image-box image-cook${articleNum.index}">
	                                    <script>
	                   
                                 var contentimg = '${cookList.content}';
                                 var firstimg = $(contentimg).find(
                                       'img:first').attr('src');
                                 console.log(firstimg);
                                 var image = document
                                       .createElement("IMG");
                                 image.src = firstimg;
                                 image.height = 250;
                                 image.width = 250;
                                 image.alt = "이미지가없습니다.";
                                 console.log(image);
                                 $('.image-cook${articleNum.index}')
                                       .html(image);
                              </script>
	                                </div>
	                                <div class="subcontent"> 
	                                    <span class="hash">#레시피 정보</span>
	                                    <span class="tit">${cookList.title }</span>
	                                    <span class="userNick">${cookList.nickName }</span>
	                                    <span class="views">${cookList.hit }명이 봤어요</span>
	                                </div>
	                            </a>
	                        </li>
                        </c:forEach>
  <!--                       <li>
                            <a href="#">
                                <div class=image-box>
                                    <img src="image/%EC%A7%81%EC%9E%A5%EC%9D%B8%EB%93%A4%EC%9D%98%EB%A7%9B%EC%A7%91.jpg" alt="">
                                </div>
                                <div class="subcontent"> 
                                    <span class="hash">#일인맛집 #직장인</span>
                                    <span class="tit">직장인들의 핫플레이스!</span>
                                    <span class="userNick">신환탁</span>
                                    <span class="views">5000명이 봤어요</span>
                                </div>
                            </a>
                        </li> -->
                    </ul>
                </div>
            </section>
        </section>
        <div class="include-footer">
            <footer id="footer">
                <section class="foot_nav">
                    <nav>
                        <ul class="left">
                            <li>
                                <a href="#">ABOUT</a>
                            </li>
                            <li>
                                <a href="#">이용약관</a>
                            </li>
                            <li>
                                <a href="#">개인정보처리방침</a>
                            </li>
                            <li class="facebook">
                                <a href="#" target="_blank"></a>
                            </li>
                            <li class="naver_post">
                                <a href="#" target="_blank"></a>
                            </li>
                            <li class="youtube">
                                <a href="#" target="_blank"></a>
                            </li>
                        </ul>
                        <ul class="right">
                            <li>
                                <a href="#" target="_blank">GLOBAL SITE</a>
                            </li>
                        </ul>
                    </nav>
                </section>
                <section class="foot_contents">
                    <ul class="foot_link">
                        <li>
                            <span>원마켓(주)</span>
                        </li>
                        <li>
                           <span>대표:강지향</span> 
                        </li>
                        <li>
                            <a class="flink_info" href="#foot link">
                                <span>사업자 정보 확인</span>
                            </a>    
                        </li>
                    </ul>
                    <ul class="foot_cs">
                        <li>구매/배송/사이트 이용문의 080-777-7777</li>
                        <li>
                  	          제품
                            <i class="bar"></i>
                     	       상담 시간 : 평일 09:30 ~ 17:30
                        </li>
                        <li class="bull">점심시간 12:30 ~ 13:30 / 주말, 법정공휴일 휴무</li>
                        <li class="bull">1:1 상담을 이용하시면 보다 신속하게 답변 받으실 수 있습니다.</li>
                    </ul>
                    <address>
                        <span>서울특별시 강남구 영동대로 517(삼성동, 아셈타워 31층)</span>
                        <span>사업자 등록번호 220-81-73483</span>
                        <span>통신판매업신고번호 2012-서울강남-01663</span>
                        <span>개인정보보호책임자 강지향 (IMC-commerce Director)</span>
                        <span>호스팅서비스사업자 : (주)아이네트</span>
                        <span class="escrow">
                      	      원마켓은 고객님의 안전한 전자상거래를 위해 퍼스트데이터코리아(유)에서
                        	    제공하는 구매안전서비스(에스크로)를 이용하고 있습니다.
                        </span>
                    </address>
                    <small>
                        <span>KOREA</span>
                        COPYRIGHT © 2018 LA ROCHE-POSAY ALL RIGHTS RESERVED
                    </small>
                </section>
            </footer>
        </div>
    </div>
</body>
<script>
$(function(){    
    var mainSlider = new Swiper('#mainslider', {
		    pagination: '.mainslider-pagination',
		    loop:true,
            speed: 600,
		    paginationClickable: true,
		    autoplay: {
                delay : 5000,
            },
            navigation:{
                nextEl: '.mainslider-next',
                prevEl: '.mainslider-prev',
            },
    });
    
    var bsprdSlider = new Swiper('#bsprd',{ 
         slidesPerView: 4,
         slidesPerGroup: 3,
         navigation:{
                nextEl: '.bsprd-next',
                prevEl: '.bsprd-prev',
            },    
    });
    
      var bsprdSlider = new Swiper('#skinprd',{ 
         slidesPerView: 3,
         slidesPerGroup: 1,
         navigation:{
                nextEl: '.skinprd-next',
                prevEl: '.skinprd-prev',
            },    
    });
     var bsprdSlider = new Swiper('#realprd',{ 
         slidesPerView: 4,
         slidesPerGroup: 2,
         navigation:{
                nextEl: '.realprd-next',
                prevEl: '.realprd-prev',
            },    
    });
});

window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}

$(function() {
    $(window).scroll(function() {
        if ($(this).scrollTop() > 500) {
            $('#MOVE_TOP_BTN').fadeIn();
        } else {
            $('#MOVE_TOP_BTN').fadeOut();
        }
    });
    
    $("#MOVE_TOP_BTN").click(function() {
        $('html, body').animate({
            scrollTop : 0
        }, 400);
        return false;
    });
});
</script>
</html>