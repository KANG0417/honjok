<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ONE-MARKERT</title>
</head>
<style>
    
#wrap.main {
    padding: 182px 0 228px;
}
#wrap {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    min-width: 1140px;
}
body, input, textarea, select, table, button, pre {
    color: #222;
    font-family: 'Nanum Gothic';
    font-size: 14px;
    line-height: 1;
}
body, p, ul, ol, li, dl, dt, dd, form, table, 
th, td, fieldset, input, textarea, select, button, 
h1, h2, h3, h4, h5, h6, pre {
    margin: 0;
    -webkit-text-size-adjust: none;
    padding: 0;
}    

#skip_navi {
    height: 0;
}   

section, article, header, footer, nav, aside, hgroup, figure {
    display: block;
}
    
#skip_navi a {
    position: absolute;
    top: -9999px;
    z-index: 100;
    width: 100%;
    height: 30px;
    background: #eee;
    color: #333;
    font-weight: bold;
    font-size: 15px;
    line-height: 30px;
    text-align: center;
}    
a {
    text-decoration: none;
}
#wrap.main #header {
    margin-top: -182px;
}
    
#header {
    position: relative;
    left: 0;
    top: 0;
    z-index: 102;
    width: 100%;
    min-height: 182px;
    margin-top: -232px;
    background: #fff;
    border-bottom: #bcbcbc solid 1px;
    -webkit-box-sizing: border-box;
}
    
#header h1 {
    position: absolute;
    top: 0;
    left: 50%;
    z-index: 1;
    margin-left: -112px;
    width: 224px;
    height: 114px;
    font-size: 27.7px;
    color: transparent;
    background: url('/image/logo.png') no-repeat 0 0;
        background-size: auto;
    background-size: cover;
    cursor: pointer;
}

h1, h2, h3, h4, h5, h6, strong {
    font-weight: normal;
}
}
#header h1 em, #header h1 span {
    display: block;
    font-size: 14.2px;
}
em {
    font-style: normal;
}
#header h1 {
    font-size: 27.7px;
    color: transparent;
    cursor: pointer;
}    
#header h1 span {
    font-size: 11.7px;
}

#header .top_nav > nav::after {
    content: '';
    display: block;
    clear: both;
}
#header .top_nav > nav {
    height: 36px;
}    
#header .top_nav > nav > ul {
    float: right;
    margin-right: 42px;
}
ul, ol, li {
    list-style: none;
}    
    
#header .top_nav > nav > ul > li::after {
    content: '';
    display: block;
    position: absolute;
    top: 14px;
    right: 0;
    width: 1px;
    height: 10px;
    background: #e9e9e9;
}
#header .top_nav > nav > ul > li {
    position: relative;
    float: left;
    line-height: 36px;
    text-align: center;
}
#header .top_nav > nav > ul > li > a {
    position: relative;
    padding: 0 8px;
    color: #959595;
    font-size: 12px;
}
#header .cf_side::after {
    content: '';
    display: block;
    clear: both;
}    
#header .cf_side {
    position: relative;
    width: 1140px;
    margin: 0 auto;
}
#header .cf_side .campain {
    float: left;
    width: 100%;
    margin-top: 55px;
}
#header .cf_side .campain > a.btn_campain::after {
    content: '';
    display: inline-block;
    margin: -2px 0 0 11px;
    vertical-align: middle;
    width: 8px;
    height: 5px;
    background: url('/image/bg_button.jpg') no-repeat -145px 0;
        background-size: auto;
    background-size: 500px 500px;
} 
#header .cf_side .campain > a.btn_campain::before {
    content: '';
    display: inline-block;
    margin: -3px 6px 0 0;
    vertical-align: middle;
    width: 23px;
    height: 20px;
    background: url('/image/bg_button.jpg') no-repeat -98px 0;
        background-size: auto;
    background-size: 500px 500px;
}
#header .cf_side .campain > a.btn_campain {
    position: relative;
    line-height: 24px;
    font-size: 16px;
    display: block;
    color: #009ee3;
    margin-bottom: 12px;
}
#header .cf_side .fastinfo {
    position: absolute;
    top: 7px;
    right: 0;
}
form {
    display: inline;
}
#header .cf_side .fastinfo .search_cart::after {
    content: '';
    display: block;
    clear: both;
}
#header .cf_side .fastinfo .search_cart .search_faq {
    float: left;
    padding-right: 34px;
}
.search_faq {
    position: relative;
    border-radius: 0;
}

#header .cf_side .fastinfo .search_cart .search_faq input, 
#header .cf_side .fastinfo .search_cart .search_faq input:focus {
    border-bottom-width: 1px !important;
    padding: 8px 10px;
    width: 240px;
    border-color: #8f8f8f;
}
.search_faq input {
    width: 100%;
    padding: 8px 20px;
    border-width: 0 0 2px 0;
        border-bottom-width: 2px;
    box-shadow: none;
    color: #666;
    font-size: 14px;
    -webkit-box-sizing: border-box;
}

input[type="text"], 
input[type="search"],{
    height: 40px;
    border: 1px solid #d9d9d9;
    border-radius: 0;
    background-color: #fff;
}
.search_faq button::after {
    content: ' ';
    display: block;
    position: absolute;
    left: 50%;
    top: 50%;
    width: 22px;
    height: 23px;
    margin: -11px 0 0 -11px;
    background: url('/image/bg_button.jpg') no-repeat 0 0;
        background-size: auto;
    background-size: 500px 500px;
}
#header .cf_side .fastinfo .search_cart .search_faq button {
    width: 34px;
} 
.search_faq button {
    position: absolute;
    right: 0;
    top: 0;
    height: 40px;
    margin-left: -43px;
    background: #fff;
    color: transparent;
}    
button {
    display: inline-block;
    margin: 0;
    padding: 0;
    border: 0;
    text-align: center;
    white-space: nowrap;
    cursor: pointer;
}
button span {
    display: block;
    cursor: pointer;
}
.search_faq button {
    color: transparent;
}
#header .cf_side .fastinfo .btn-cart {
    position: relative;
    float: right;
    display: block;
    width: 34px;
    height: 40px;
    color: transparent;
    background: #fff;
}
#header .cf_side .fastinfo .btn-cart::before {
    content: '';
    display: block;
    position: absolute;
    left: 7px;
    top: 9px;
    width: 22px;
    height: 22px;
    background: url('/image/bg_button.jpg') no-repeat -27px 0;
        background-size: auto;
    background-size: 500px 500px;
}
.hide {
    display: block;
    overflow: hidden;
    position: absolute;
    top: 0;
    left: 0;
    width: 0;
    height: 0;
    text-indent: -9999px;
}
#header .cf_side .fastinfo .btn-cart .count {
    position: absolute;
    top: 0;
    right: -8px;
    width: 20px;
    height: 20px;
    color: #fff;
    font-size: 12px;
    line-height: 20px;
    text-align: center;
    border-radius: 20px;
    background: #009ee3;
}

#header .cf_side .hashtag {
    position: relative;;
    margin-top: 12px;
}
#header .cf_side .hashtag a {
    height: 20px;
    line-height: 20px;
    padding: 0 8px;
    margin-right: 3px;
    background: #f7f7f7;
    color: #666;
    font-size: 12px;
    display: inline-block;
}
#header .gnb_nav {
    border-top: #e9e9e9 1px solid;
    box-sizing: border-box;
}
#header .gnb_nav nav {
    width: 1140px;
    height: 53px;
    margin: 0 auto;
}
#header .gnb_nav nav ul.left {
    float: left;
}
#header .gnb_nav nav ul.left > li:first-child {
    min-width: 105px;
    text-align: left;
}    
#header .gnb_nav nav ul > li {
    position: relative;
    float: left;
    box-sizing: border-box;
}    
#header .gnb_nav nav ul > li > a {
    position: relative;
    color: #222;
    line-height: 53px;
    height: 53px;
    font-size: 16px;
    display: block;
}    
#header .gnb_nav nav ul.left > li:first-child {
    text-align: left;
}    
#header .gnb_nav nav ul > li > a > span {
    position: relative;
    display: block;
    font-family: 'Nanum Gothic';
}    
#header .gnb_nav nav ul.left > li:first-child + li {
    min-width: 117px;
}    
#header .gnb_nav nav ul > li {
    text-align: center;
}
#header .gnb_nav nav ul.left > li:first-child + li + li {
    min-width: 112px;
}
#header .gnb_nav nav ul.left > li:first-child + li + li + li {
    min-width: 111px;
} 
#header .gnb_nav nav ul.right {
    float: right;
}    
#header .gnb_nav nav ul.right > li:first-child {
    min-width: 94px;
}    
#header .gnb_nav nav ul.right > li:last-child {
    min-width: 121px;
}    
body, html {
    position: relative;
    z-index: 1;
    min-height: 100%;
}    
html, body {
    height: 100%;
}
#container {
    position: relative;
    min-height: 100%;
    -webkit-box-sizing: border-box;
}

#contents::after {

    content: '';
    display: block;
    clear: both;

}
#wrap.main #contents {
    width: auto;
}
#contents {
    position: relative;
    min-height: 100%;
    margin: 0 auto 100px;
    -webkit-box-sizing: border-box;
}
#wrap.main #mainslider {
    width: auto !important;
    height: 699px;
    padding: 0 !important;
    z-index: 100;
}
.swiper-container {
    overflow: hidden;
    list-style: none;
}
.swiper-container {
    direction: ltr;
    backface-visibility: hidden;
}
#wrap.main #mainslider .mainslider-prev {
    position: absolute;
    top: 50%;
    left: 0;
    margin-top: -38px;
    width: 50px;
    height: 76px;
    background: url('/images/common/ico_comm_sp.png') no-repeat 0 -129px;
    background-size: 300px 300px;
    z-index: 2;
}
#wrap.main #mainslider .mainslider-next {
    position: absolute;
    top: 50%;
    right: 0;
    margin-top: -38px;
    width: 50px;
    height: 76px;
    background: url('/images/common/ico_comm_sp.png') no-repeat -55px -129px;
        background-size: auto;
    background-size: 300px 300px;
    z-index: 2;
    }
#wrap.main #mainslider .swiper-slide {
    position: relative;
}
.swiper-slide {
    flex-shrink: 0;
    transition-property: transform,-webkit-transform;
}

.swiper-slide {
    float: left;
    box-sizing: content-box;
}   

#wrap.main #contents > div {
    text-align: center;
}
.swiper-container {
    list-style: none;
}
.swiper-container {
    direction: ltr;
}    
#wrap.main #mainslider .swiper-slide a {
    position: absolute;
    width: 100%;
    height: 100%;
    display: block;
}    
#wrap.main #mainslider .swiper-slide .img_banner {
    display: block;
    width: 100%;
    height: 100%;
    background-position: 50% 0;
    background-repeat: no-repeat;
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
        <header id="header">
            <h1 onclick="location.href='getMainList.do'">
                ONE-MARKET
                <em>ONE-MARKET</em>
                <span>전 세계 피부 전문가가 선택한 민감 피부 솔루면</span>
            </h1>
            <section class="top_nav">
                <nav>
                    <ul>
                        <li>
                            <a href="/app/login.jsp">로그인</a>
                        </li>
                        <li>
                            <a href="signUp.jsp">회원가입</a>
                        </li>
                        <li>
                            <a href="#">주문/배송조회</a>
                        </li>
                        <li>
                            <a href="#">고객센터</a>
                        </li>
                    </ul>
                    <!-- 로그인후 -->
                </nav>
            </section>
            <section class="cf_side">
                <div class="campain">
                    <a class="btn_campain" href="#">
                        민감성 피부의 삶을 바꾸는 라로슈포제
                    </a>
                    <!-- 캠페인 배너 -->
                </div>
                <div class="fastinfo">
                    <form id="headersearchForm">
                        <div class="search_cart">
                            <div class="search_faq">
                                <input type="search" title="검색 입력창" name="topSearchKeyword" 
                                       placeholder="지금 꼭! 필요한 안티폴루션 필수템!" maxlength="20">
                                <button type="button" onclick="topSearchKeyword">
                                    <span>검색</span>
                                </button>
                            </div>
                            <a class="btn-cart" href="cart/cart.do">
                                <span class="hide">장바구니</span>
                                <span class="count">0</span>
                            </a>
                        </div>
                    </form>
                    <div class="hashting" style="display: block-inline; width: 308px; height: 20px; overflow: hidden;">
                        <div style="float: left" white-space: nowrap; padding: 0px 308px;>
                            <a href="#none" onclick="gokey('모든 고객 10%할인가 + 멤버십 쿠폰!'); return false;">
                                #모든 고객 10%할인가 + 멤버십 쿠폰!</a>
                            <a href="#none" onclick="gokey('세트 구매시 15%할인 + 세안밴드 증정!'); return false;">
                                세트 구매시 15%할인 + 세안밴드 증정!</a>
                            <a href="#none" onclick="gokey('100% 선물증정!'); return false;">
                                #100% 선물증정!</a>
                        </div>
                    </div>
                </div>
            </section>
            <section class="gnb_nav">
                <nav>
                    <ul class="left">
                        <li>
                            <a href="none">
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
                            <a href="#">
                                <span>스킨케어</span>
                                <!--<em></em>-->
                            </a>
                        </li>
                        <li class="">
                            <a href="#">
                                <span>바디케어</span>
                                <!--<em></em>-->
                            </a>
                        </li>
                        <li class="">
                            <a href="#">
                                <span>UV케어</span>
                                <!--<em></em>-->
                            </a>
                        </li>
                        <li class="">
                            <a href="#">
                                <span>맘/베이비</span>
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
                            <a href="#">
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
                    <div class="swiper-wrapper" style="width: 10080px; height: 699px; transform: translate(-1260px, 0px, 0px);
                                                       transition-duration: 0.3s;">
                        <div class="swiper-slide swiper-slide-duplicate" style="width: 1260px; height: 699px;">
                            <a class="mainView" href="javascript:void(0);" target="_self">
                                <div class="img_banner" style="background-image:url(/upload/20200312094017915.jpg);">
                                    <span class="hide">스팟스캔-바로가기</span>
                                </div>
                            </a>
                        </div>
                        <div class="swiper-slide swiper-slide-visible swiper-slide-active" style="width: 1260px; height: 699px;">
                            <a class="mainView" href="javascript:void(0);" target="_self">
                                <div class="img_banner" style="background-image:url(/upload/20200312094017915.jpg);">
                                    <span class="hide">스팟스캔-바로가기</span>
                                </div>
                            </a>
                        </div>
                        <div class="swiper-slide swiper-slide-visible swiper-slide-active" style="width: 1260px; height: 699px;">
                            <a class="mainView" href="javascript:void(0);" target="_self">
                                <div class="img_banner" style="background-image:url(/upload/20200312094017915.jpg);">
                                    <span class="hide">스팟스캔-바로가기</span>
                                </div>
                            </a>
                        </div>
                    </div>
                    
                </div>
                
                
            </section>
        </section>
    
    </div>
</body>
<script>
	$('.mainslider-prev').on('click', function(e){
        e.preventDefault();
        mainSlider.swipePrev();
    });
    
    $('.mainslider-next').on('click', function(e){
        e.preventDefault();
        mainSlider.swipeNext();
    });    
    
</script>
</html>