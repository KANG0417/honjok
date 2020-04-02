<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/app/resources/css/main/main.css" rel="stylesheet">
<title>main header</title>
</head>
<body>
        <!--상단 띠배너-->
        <!--//상단 띠배너-->
 <div id="wrap" class="main">
        <nav id="skip_navi">
            <a href="#">본문 바로가기</a>
            <a href="#">메뉴 바로가기</a>
            <a href="#">하단 정보 바로가기</a>
        </nav>
        <header id="header"> 
            <h1 onclick="location.href='/app/main/getMainList.do'">
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
                            <a href="/app/signUp.jsp">회원가입</a>
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
                    <div class="hashtag" style="display: block-inline; width: 308px; height: 20px; overflow: hidden;"> 
                        <div style="float:left; white-space:nowrap;">
                             <a href="#none" onclick="gokey('모든 고객 10%할인가 + 멤버십 쿠폰!'); return false;"> #모든 고객 10%할인가 + 멤버십 쿠폰!</a>
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
                            <a href="#">
                                <span>고객센터</span>
                                <!--<em></em>-->
                            </a>
                        </li>
                    </ul>
                </nav>
            </section>
        </header>
        </div>
        <br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>