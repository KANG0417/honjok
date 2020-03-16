<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://kit.fontawesome.com/73d0df04d6.js" crossorigin="anonymous"></script>
    <style>
        html,
        body,
        div,
        span,
        applet,
        object,
        iframe,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        p,
        blockquote,
        pre,
        a,
        abbr,
        acronym,
        address,
        big,
        cite,
        code,
        del,
        dfn,
        em,
        img,
        ins,
        kbd,
        q,
        s,
        samp,
        small,
        strike,
        strong,
        sub,
        sup,
        tt,
        var,
        b,
        u,
        i,
        center,
        dl,
        dt,
        dd,
        ol,
        ul,
        li,
        fieldset,
        form,
        label,
        legend,
        table,
        caption,
        tbody,
        tfoot,
        thead,
        tr,
        th,
        td,
        article,
        aside,
        canvas,
        details,
        embed,
        figure,
        figcaption,
        footer,
        header,
        hgroup,
        menu,
        nav,
        output,
        ruby,
        section,
        summary,
        time,
        mark,
        audio,
        video {
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            font: inherit;
            vertical-align: baseline;
        }

        /* HTML5 display-role reset for older browsers */
        article,
        aside,
        details,
        figcaption,
        figure,
        footer,
        header,
        hgroup,
        menu,
        nav,
        section {
            display: block;
        }

        body {
            line-height: 1;

        }

        ol,
        ul {
            list-style: none;
        }

        blockquote,
        q {
            quotes: none;
        }

        blockquote:before,
        blockquote:after,
        q:before,
        q:after {
            content: '';
            content: none;
        }

        table {
            border-collapse: collapse;
            border-spacing: 0;
        }

        /* css 리셋 */



        /* 카테고리 정렬*/
        .production-selling-overview__category ol li,
        .production-selling-navigation__content ol li,
        .production-review__paginator li,
        .production-question-feed__paginator li {
            display: inline;
        }

        .production-selling-navigation__content {
            width: auto;
        }

        .production-selling-overview__cover-image-wrap,
        .carousel__list-wrap,
        .production-selling__detail,
        .production-selling__detail__content {
            display: flex;
        }

    

        /* 컬럼 중앙정렬 */
        .production-selling-overview__container
        {
            margin: 0 5%;
            border: salmon 1px solid;
             
        }
        .production-selling__detail-wrap{
            margin: 0 5%;
            border: salmon 1px solid;
        }

    



        /* 메인 이미지 크기 왼쪽 */
        .production-selling-cover-image__entry__image {
            width: 558.33px;
            height: 558.33px;
            border-radius: 5%;
        }

        .image {
            width: 56px;
            height: 56px;
            border-radius: 5%;
        }

        /*버튼 이미지 초기화*/
        .production-selling-cover-image__list button,
        .production-selling-header__content button {
            border: 0px;
            outline: 0;
            background-color: white;
        }

        /*공유 칸 부모*/
        .production-selling-header__content {
            position: relative;
        }

        /*스크랩 및 공유 */
        .production-selling-header__action {
            display: flex;
            position: absolute;
            right: 1%;
        }

        /*카테고리 마진 바텀*/
        .production-selling-overview__category {
            margin-bottom: 20px;
        }

        /* 메인 이미지 오른쪽*/
        .production-selling-header__title__brand-wrap {
            margin-bottom: 1rem;
        }

        .production-selling-header__title,
        .production-selling-header__content {
            margin-bottom: 20px;
        }

        .production-selling-header__content p {
            padding: 1px;
        }

        .production-selling-header__price__discount span:first-child {
            font-size: 45px;
            color: #35c5f0;
        }

        .production-selling-header__delivery span {
            display: block;
            padding-bottom: 3px;
        }

        .production-selling-overview__content {
            margin-left: 50px;
        }

        .production-selling-option-form {
            margin-top: 30px;
        }

        .production-selling-header {
            padding-top: 40px;
        }

        /* 메인 이미지 오른쪽 끝*/

        /*상품 css*/
        .production-selling-description__content img{
            width: 100%;
        }
        .production-selling__detail__content{
            margin-right: 1rem;
        }

        /*리뷰 css*/
        .production-selling-section__header {
            display: flex;

        }

        .production-selling-section__header {
            margin-top: 100px;
        }

        .production-review-feed {
            margin-top: 20px;
        }

        .production-selling-section__right {
            margin-left: 10%;
        }

        /* 페이지 css*/
        .production-selling-header__title__name {
            font-size: 25px;
        }

        .production-review__paginator,
        .production-question-feed__paginator {
            text-align: center;
        }

        /*리뷰 css 끝*/


        /* 메인 이미지 크기 끝*/

        /* 스티키 설정 */
        .production-selling-navigation-wrap {
            background-color: rgb(240, 93, 93);
            position: sticky;
            top: 0px;
        }

        .prodproductionuction-selling-navigation__list {
            margin-left: 50px;
            padding: 2%;
        }

        .prodproductionuction-selling-navigation__list li {
            margin-right: 35px;
        }

        /*상품 마진*/
        .production-selling-content {
            margin-right: 50px;
        }

        .production-review-item__writer__info {
            display: inline-block;
            margin-bottom: 10px;
            margin-top: 60px;
        }
    </style>
</head>

<body>






    <div class="production-selling-overview container">
        <!-- 상품 태그 시작-->

        <!-- 상품 디테일 페이지 왼쪽 표시 -->
        <div class="production-selling-overview__container row">

            <nav class="commerce-category-breadcrumb-wrap production-selling-overview__category">
                <!-- 네비게이션 시작 -->

                <ol class="commerce-category-breadcrumb">
                    <li class="commerce-category-breadcrumb__entry">
                        <a class="link"
                            href="#">${productvo.upperCategory }</a>
                   </li>
                    <li class="commerce-category-breadcrumb__entry">
                        <a class="link"
                            href="#">${productvo.subCategory }</a>
   					</li>
                </ol>
            </nav>

            <div class="production-selling-overview__cover-image-wrap col-12 col-md-6 col-lg-7" style="overflow: scroll;">


                <div class="carousel production-selling-cover-image production-selling-overview__cover-image"
                    role="region" aria-roledescription="carousel">

                    <div class="carousel__list-wrap production-selling-cover-image__carousel-wrap">

                        <div>
                            <ul class="production-selling-cover-image__list">

                            <script>
                              var contentimg = '${productvo.description}';
                              var firstimg = $(contentimg).find('img').attr('src');
                              console.log(firstimg.length);
                              
                              for(var i in firstimg){
                              	 $('.production-selling-cover-image__list').append(' <li class="production-selling-cover-image__list__item"><button class="production-selling-cover-image__list__btn production-selling-cover-image__list__btn--selected"type="button"><img class="image" src="'+firstimg+'"></button></li>');
                               } 

                           </script>  
                             
                             <!-- 
                                <li class="production-selling-cover-image__list__item"><button
                                        class="production-selling-cover-image__list__btn" type="button"
                                        aria-label="8개 중 2번째 항목">
                                        <img class="image"
                                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/157898667308487965.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1"
                                            srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/157898667308487965.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/157898667308487965.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/157898667308487965.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;webp=1 3x">
                                    </button>
                                </li>
                               <li class="production-selling-cover-image__list__item">
                                    <button class="production-selling-cover-image__list__btn" type="button"
                                        aria-label="8개 중 3번째 항목">
                                        <img class="image"
                                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/157830626663754284.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1"
                                            srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/157830626663754284.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/157830626663754284.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/157830626663754284.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;webp=1 3x">
                                    </button>
                                </li> -->
                            </ul>
                        </div>

                        <!-- 상품 메인  이미지 -->
                        <div class="carousel__list" aria-live="polite" style="transform: translateX(0%);">
                            <div class="carousel__list__entry production-selling-cover-image__entry" role="group"
                                aria-roledescription="slide" aria-label="1 of 8" style="width: 100%;">
                                <img class="production-selling-cover-image__entry__image" tabindex="0"
                                    src="/app/resources/img/${productvo.thumnailImg}">
                            </div>
                            <!-- 상품 메인  이미지 끝 -->
                        </div>
                    </div>
                </div>


                <!--상품 디테일 페이지 왼쪽 표시 끝 -->


                <!-- 상품 디테일 페이지 오른쪽 표시 시작-->
                <div class="production-selling-overview__content col-12 col-md-6 col-lg-5">
                    <div class="production-selling-header">
                        <h1 class="production-selling-header__title">
                            <p class="production-selling-header__title__brand-wrap">
                                <a class="production-selling-header__title__brand"
                                    href="/brands/home?query=%EB%A1%9C%EB%AF%B8%ED%99%88&amp;affect_type=ProductSaleDetail&amp;affect_id=131836">로미홈
                                </a>
                            </p>
                            <span class="production-selling-header__title__name">[자취특가] 9존 마약매트리스 침대 접이식 바닥 토퍼
                                (MS/SS/Q)</span>
                        </h1>


                        <!--별점부터 적립-->
                        <div class="production-selling-header__content">
                            <div class="production-selling-header__action">
                                <!-- 스크랩 -->
                                <button
                                    class="production-selling-header__action__button production-selling-header__action__button-scrap"
                                    type="button">
                                    <span class="count far fa-bookmark fa-2x"></span>
                                </button>
                                <!--스크랩 끝-->

                                <!--스크랩 공유(카톡,페이스북,카스,블로그) 시작-->
                                <div class="drop-down">
                                    <button class="production-selling-header__action__button" type="button">
                                        <span class="count fas fa-share-alt fa-2x"></span>
                                    </button>
                                </div>
                                <!--스크랩 공유(카톡,페이스북,카스,블로그) 끝-->

                            </div>


                            <!-- 종합 리뷰 별점  -->
                            <p class="production-selling-header__review-wrap">
                                <a class="production-selling-header__review" href="#production-selling-review">
                                    <!-- 종합별점 별모양 -->
                                    <span class="production-selling-header__review__icon" aria-label="별점 4.6점">
                                        <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet"
                                            viewBox="0 0 16 16">
                                            <defs>
                                                <path id="star-path-270"
                                                    d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z">
                                                </path>
                                                <clipPath id="star-clip-270">
                                                    <rect x="0" y="0" width="16" height="16"></rect>
                                                </clipPath>
                                            </defs>
                                            <use xlink:href="#star-path-270" fill="#DBDBDB"></use>
                                            <use clip-path="url(#star-clip-270)" xlink:href="#star-path-270"></use>
                                        </svg>
                                        <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet"
                                            viewBox="0 0 16 16">
                                            <defs>
                                                <path id="star-path-271"
                                                    d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z">
                                                </path>
                                                <clipPath id="star-clip-271">
                                                    <rect x="0" y="0" width="16" height="16"></rect>
                                                </clipPath>
                                            </defs>
                                            <use xlink:href="#star-path-271" fill="#DBDBDB"></use>
                                            <use clip-path="url(#star-clip-271)" xlink:href="#star-path-271"></use>
                                        </svg>
                                        <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet"
                                            viewBox="0 0 16 16">
                                            <defs>
                                                <path id="star-path-272"
                                                    d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z">
                                                </path>
                                                <clipPath id="star-clip-272">
                                                    <rect x="0" y="0" width="16" height="16"></rect>
                                                </clipPath>
                                            </defs>
                                            <use xlink:href="#star-path-272" fill="#DBDBDB"></use>
                                            <use clip-path="url(#star-clip-272)" xlink:href="#star-path-272"></use>
                                        </svg>
                                        <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet"
                                            viewBox="0 0 16 16">
                                            <defs>
                                                <path id="star-path-273"
                                                    d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z">
                                                </path>
                                                <clipPath id="star-clip-273">
                                                    <rect x="0" y="0" width="16" height="16"></rect>
                                                </clipPath>
                                            </defs>
                                            <use xlink:href="#star-path-273" fill="#DBDBDB"></use>
                                            <use clip-path="url(#star-clip-273)" xlink:href="#star-path-273"></use>
                                        </svg>
                                        <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet"
                                            viewBox="0 0 16 16">
                                            <defs>
                                                <path id="star-path-274"
                                                    d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z">
                                                </path>
                                                <clipPath id="star-clip-274">
                                                    <rect x="0" y="0" width="9.439999999999998" height="16">
                                                    </rect>
                                                </clipPath>
                                            </defs>
                                            <use xlink:href="#star-path-274" fill="#DBDBDB"></use>
                                            <use clip-path="url(#star-clip-274)" xlink:href="#star-path-274"></use>
                                        </svg>
                                    </span>
                                    <!--리뷰 갯수-->
                                    <span class="production-selling-header__review__text"><span
                                            class="number">350</span>
                                        <span class="postfix">개 리뷰</span>
                                    </span>
                                </a>
                            </p>
                            <!-- 종합 리뷰 별점  끝 -->

                            <p class="production-selling-header__price">
                                <span class="production-selling-header__price__row">
                                    <span class="production-selling-header__price__discount">
                                        <span class="number">61</span>
                                        <span class="percent">%</span>
                                        &nbsp;
                                    </span>
                                    <span class="production-selling-header__price__price-wrap">
                                        <del class="production-selling-header__price__original">
                                            <span class="number">74,900</span>
                                            <span class="won">원</span>
                                        </del>
                                        <span class="production-selling-header__price__separator"></span>
                                        <span class="production-selling-header__price__price">
                                            <span class="number">28,900</span>
                                            <span class="won">원</span>
                                            <span class="production-selling-header__price__badge">
                                                <svg class="icon" aria-label="최저가" width="37" height="20"
                                                    viewBox="0 0 37 20" preserveAspectRatio="xMidYMid meet">
                                                    <g fill="none" fill-rule="evenodd">
                                                        <rect width="37" height="20" fill="#F77" rx="4"></rect>
                                                        <path fill="#FFF"
                                                            d="M5.1 8.04V7.02h5.34v1.02H8.5c.21.83 1.27 1.54 2.23 1.66l-.6 1.02a3.98 3.98 0 0 1-2.29-1.6 3.89 3.89 0 0 1-2.43 1.86L4.77 10c1.18-.26 2.2-1.03 2.37-1.95H5.09zM12.65 5v9.8h-1.3V5h1.3zm-1.8 6.73l.1.98c-1.79.24-4.44.34-6.27.34l-.19-1.04c.9 0 1.8 0 2.66-.03v-1.6h1.3v1.55c.88-.03 1.7-.11 2.4-.2zM6.35 6.48v-1h2.92v1H6.35zm13.67 5.34l-.72.95a5.58 5.58 0 0 1-2.36-2.67 4.88 4.88 0 0 1-2.36 2.86l-.8-.94c1.63-.9 2.48-2.4 2.48-4.46v-.5h-1.97V6h5.21v1.06h-1.9v.5c0 2.06.95 3.46 2.42 4.26zm2.08 2.98h-1.29V9.47h-1.65v-1.1h1.65V5h1.29v9.8zm10.48-4.97h-1.42v4.97H29.9V5h1.27v3.76h1.42v1.07zM28.6 6a7.8 7.8 0 0 1-4.39 7.03l-.78-.97a6.46 6.46 0 0 0 3.77-5h-3.18V6h4.58z">
                                                        </path>
                                                    </g>
                                                </svg>
                                            </span>
                                        </span>
                                    </span>
                                </span>
                            </p>
                            <div class="production-selling-header__promotion">
                                <p class="production-selling-header__promotion__entry">
                                    <b>289P</b>
                                    적립해드립니다.
                                </p>
                            </div>
                        </div>
                        <p class="production-selling-header__delivery">
                            <span class="production-selling-header__delivery__type">
                                <span>일반택배</span>
                            </span>

                            <span class="production-selling-header__delivery__fee">
                                <span>무료배송</span>
                            </span>

                            <span class="production-selling-header__delivery__disclaimer-wrap">
                                <span class="production-selling-header__delivery__disclaimer">조건에 따라 추가비용 발생 가능 (상품 상세
                                    정보 참고)</span>
                            </span>
                        </p>

                        <!-- <a class="production-selling-header__seller production-selling-header__seller--simple" href="/brands/home?query=%EB%A1%9C%EB%AF%B8%ED%99%88&amp;affect_type=ProductSaleDetail&amp;affect_id=131836">
        <span class="production-selling-header__seller__text">
            <svg class="icon" width="20" height="20" fill="currentColor" viewBox="0 0 20 20" preserveAspectRatio="xMidYMid meet"><path d="M16.67 3.33H3.33V5h13.34V3.33zm.83 8.34V10l-.83-4.17H3.33L2.5 10v1.67h.83v5h8.34v-5H15v5h1.67v-5h.83zM10 15H5v-3.33h5V15z"></path>
            </svg>로미홈 브랜드홈
        </span>
    </a> -->

                        <!--production-selling-header 끝-->
                    </div>


                    <div class="production-selling-option-form production-selling-overview__option-form">
                        <section class="selling-option-form-content production-selling-option-form__form">
                            <div class="selling-option-form-content__form">
                                <div class="selling-option-select-input">
                                    <div
                                        class="input-group select-input selling-option-select-input__option selling-option-select-input__option-1 focused">
                                        <select class="form-control empty">
                                            <option value="" disabled="">매트리스 선택</option>
                                            <option value="0">9존 마약매트리스 6cm 멀티싱글(28,900원)</option>
                                            <option value="1">9존 마약매트리스 6cm 슈퍼싱글(48,900원)</option>
                                        </select>
                                        <span class="select-input__icon">
                                            <svg class="icon" width="10" height="10" preserveAspectRatio="xMidYMid meet"
                                                style="fill: currentcolor;">
                                                <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                                            </svg>
                                        </span>
                                    </div>

                                    <div
                                        class="input-group select-input selling-option-select-input__option selling-option-select-input__option-2">
                                        <select class="form-control empty">
                                            <option value="" disabled="">색상 선택</option>
                                        </select><span class="select-input__icon">
                                            <svg class="icon" width="10" height="10" preserveAspectRatio="xMidYMid meet"
                                                style="fill: currentcolor;">
                                                <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                                            </svg>
                                        </span>
                                    </div>
                                    <div
                                        class="input-group select-input selling-option-select-input__option selling-option-select-input__option-extra">
                                        <select class="form-control empty">
                                            <option value="" disabled="">추가상품을 선택해주세요.</option>
                                            <option value="0">버클 결합벨트(2EA) (6,000원)</option>
                                            <option value="1">방수속커버 멀티싱글 (15,900원)</option>

                                        </select>
                                        <span class="select-input__icon">
                                            <svg class="icon" width="10" height="10" preserveAspectRatio="xMidYMid meet"
                                                style="fill: currentcolor;">
                                                <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                                            </svg>
                                        </span>
                                    </div>
                                </div>
                                <!--selling-option-form-content__form" 끝-->
                            </div>
                            <ul class="selling-option-form-content__list"></ul>
                            <p class="selling-option-form-content__price">
                                <span class="selling-option-form-content__price__left">주문금액</span>
                                <span class="selling-option-form-content__price__right"><span
                                        class="selling-option-form-content__price__number">0</span>원</span>
                            </p>
                        </section>
                        <div class="production-selling-option-form__footer">
                            <button class="button button--color-blue-inverted button--size-55 button--shape-4"
                                type="button">장바구니</button>
                            <button class="button button--color-blue button--size-55 button--shape-4"
                                type="button">바로구매</button>
                        </div>
                    </div>
                </div>

            </div>
            <!--production-selling-overview__container row 끝-->
        </div>


        <!-- 상품 정보 및 리뷰 문의 배송 환불 추천 !-->
        <div data-sticky-enabled="false" data-sticky-always="false" data-direction="top" data-offset="80"
            class="sticky-container production-selling-navigation-wrap" style="width: 100%; height: 100%;">
            <div class="sticky-child production-selling-navigation" style="position: relative;">
                <nav class="production-selling-navigation__content">
                    <ol class="prodproductionuction-selling-navigation__list">
                        <li>
                            <a class="production-selling-navigation__item"
                                href="#production-selling-information">상품정보</a>
                        </li>
                        <li>
                            <a class="production-selling-navigation__item" href="#production-selling-review">리뷰
                                <span class="production-selling-navigation__item__count">350</span>
                            </a>
                        </li>
                        <li>
                            <a class="production-selling-navigation__item" href="#production-selling-question">문의
                                <span class="production-selling-navigation__item__count">126</span>
                            </a>
                        </li>
                        <li><a class="production-selling-navigation__item" href="#production-selling-delivery">배송/환불<a>
                        </li>
                        <li>
                            <a class="production-selling-navigation__item production-selling-navigation__item--active"
                                href="#production-selling-suggestion">추천</a>
                        </li>
                    </ol>
                </nav>
            </div>
        </div>

        <div class="production-selling__detail-wrap container">

            <div class="production-selling__detail row">

                <div class="production-selling__detail__content col-12 col-lg-8" style="width: 70%; border: solid 5px royalblue;">
                    <div class="production-selling-content">
                        <a id="production-selling-information"></a>
                        <section class="production-selling-section">
                            <header
                                class="production-selling-section__header production-selling-section__header__hidden">
                                <h1 class="production-selling-section__title">상품정보</h1>
                            </header>
                            <div class="production-selling-description">
                                <div class="production-selling-description__expand-wrap">
                                    <button
                                        class="button button--color-blue button--size-60 button--shape-4 production-selling-description__expand"
                                        type="button">펼치기
                                        <svg class="icon" width="1em" height="1em" viewBox="0 0 16 16"
                                            preserveAspectRatio="xMidYMid meet">
                                            <path fill="currentColor" fill-rule="evenodd"
                                                d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path>
                                        </svg>
                                    </button>
                                </div>
                                <a class="production-selling-description__production-event"
                                    href="https://ohou.se/exhibitions/1095">
                                    <img class="production-selling-description__production-event__image production-selling-description__production-event__image--pc "
                                        src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/productions/event/158323970651177877.png?gif=1&amp;w=720&amp;webp=1"
                                        srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/productions/event/158323970651177877.png?gif=1&amp;w=1080&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/productions/event/158323970651177877.png?gif=1&amp;w=1440&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/productions/event/158323970651177877.png?gif=1&amp;w=2560&amp;webp=1 3x">
                                    <img class="production-selling-description__production-event__image production-selling-description__production-event__image--mobile "
                                        src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/productions/event/158323970844063051.png?gif=1&amp;w=720&amp;webp=1"
                                        srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/productions/event/158323970844063051.png?gif=1&amp;w=1024&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/productions/event/158323970844063051.png?gif=1&amp;w=1360&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/productions/event/158323970844063051.png?gif=1&amp;w=2048&amp;webp=1 3x">
                                </a>
                                <div class="production-selling-description__content">
                                    <p>&nbsp;</p>
                                    <p>
                                        <img
                                            src="https://exit.ohou.se/6d7525807c20d412c6f67f7a62c376a5be2dff43/ai.esmplus.com/saeromi0871/R_Intro/R_intro.jpg">
                                        <br>
                                        <img
                                            src="https://exit.ohou.se/6324854b276fc5081c23ccc3b1c677b41b4a1db7/ai.esmplus.com/saeromi0871/R_9Zone_/event_9Zone_oh.jpg">
                                        <br>
                                        <!--   <img src="https://exit.ohou.se/5bf26c60b467d6d0960c3df9724057e172aef5a5/ai.esmplus.com/saeromi0871/R_9Zone_/01.jpg">
                        <br>
                        <img src="https://exit.ohou.se/e328923597eb2272d6a991377ec851d5d4a225bc/ai.esmplus.com/saeromi0871/R_9Zone_/02.gif">
                        <br>
                        <img src="https://exit.ohou.se/4df52f818f226633c56d7d1a6855b684e9722386/ai.esmplus.com/saeromi0871/R_9Zone_/03.jpg">
                        <br>
                        <img src="https://exit.ohou.se/7d28ac48592827f55735f6ffe7040fe2729c6711/ai.esmplus.com/saeromi0871/R_9Zone_/04.gif">
                         <br>
                        <img src="https://exit.ohou.se/5adc5c68c5aed29f5b8333ef9f862ea904903afd/ai.esmplus.com/saeromi0871/R_9Zone_/05.jpg">
                        <br>
                        <img src="https://exit.ohou.se/26bcff565b62830a965df06c9e89b5566e0336bb/ai.esmplus.com/saeromi0871/R_9Zone_/06.gif">
                        <br>
                        <img src="https://exit.ohou.se/f9f283435233ce1b891aa9f51f9fe15fc1ac675e/ai.esmplus.com/saeromi0871/R_9Zone_/07.jpg">
                        <br>
                        <img src="https://exit.ohou.se/dbcb6eca7d6ff9c4d68e01eae47bf5d4a86c989a/ai.esmplus.com/saeromi0871/R_9Zone_/08.gif">
                        <br>
                        <img src="https://exit.ohou.se/f40d27746f29313a2c3e21243a48a0e97a99f9bf/ai.esmplus.com/saeromi0871/R_9Zone_/09.jpg">
                        <br>
                        <img src="https://exit.ohou.se/c1152d8f521b7bb2acdb35a57a5d5b09493f5081/ai.esmplus.com/saeromi0871/R_9Zone_/10.jpg">
                        <br>
                        <img style="display: block; margin-left: auto; margin-right: auto;" src="https://exit.ohou.se/622d64c6ed940673432984382bb219f63690d4bb/ai.esmplus.com/saeromi0871/R_9Zone_/11.gif">
                        <br>
                        <img src="https://exit.ohou.se/3cd901fb2b0e13af1044e12f1b91ef4e88febad1/ai.esmplus.com/saeromi0871/R_9Zone_/12.jpg">
                        <br>
                        <img src="https://exit.ohou.se/cae378d1b1d92ab75e9805f71338d21db50daac5/ai.esmplus.com/saeromi0871/R_pillow/D.jpg">
                        <br>
                        <img src="https://exit.ohou.se/545e2c3102e7c920e4b22d77dfb45cd74e87eda3/ai.esmplus.com/saeromi0871/R_9Zone_/13.jpg"> -->
                                    </p>
                                </div>
                                <table
                                    class="production-selling-table production-selling-description__information-noti">
                                    <tbody>
                                        <tr>
                                            <th>품명</th>
                                            <td>로미홈 9존 마약매트리스</td>
                                        </tr>
                                        <tr>
                                            <th>KC 인증 필 유무</th>
                                            <td>해당없음</td>
                                        </tr>
                                        <tr>
                                            <th>색상</th>
                                            <td>상세페이지 참조</td>
                                        </tr>
                                        <tr>
                                            <th>구성품</th>
                                            <td>매트리스 본품 1개 + 사은품</td>
                                        </tr>
                                        <tr>
                                            <th>주요 소재</th>
                                            <td>폴리우레탄폼</td>
                                        </tr>
                                        <tr>
                                            <th>제조자, 수입품의 경우 수입자를 함께 표기</th>
                                            <td>새로미</td>
                                        </tr>
                                        <tr>
                                            <th>제조국</th>
                                            <td>대한민국</td>
                                        </tr>
                                        <tr>
                                            <th>크기</th>
                                            <td>멀티싱글 (75 x 200) / 슈퍼싱글 (110 x 200) / 퀸 (150 x 200)</td>
                                        </tr>
                                        <tr>
                                            <th>배송, 설치비용</th>
                                            <td>전국 무료배송 (제주도 +7,000원 추가)</td>
                                        </tr>
                                        <tr>
                                            <th>품질보증기준</th>
                                            <td>제품 이상시 공정거래위원회 고시 소비자분쟁해결기준에 의거 보상합니다.</td>
                                        </tr>
                                        <tr>
                                            <th>A/S 책임자와 전화번호</th>
                                            <td>070-4464-0822</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </section>
                        <!--상품 끝-->


                        <a id="production-selling-review"></a>
                        <section class="production-selling-section">
                            <header class="production-selling-section__header">
                                <h1 class="production-selling-section__title">리뷰
                                    <span class="count">350</span>
                                </h1>
                                <div class="production-selling-section__right">
                                    <button type="button">리뷰쓰기</button>
                                </div>
                            </header>


                            <div class="production-review-feed">
                                <div class="production-review-feed__header">
                                    <div class="production-review-feed__header__stars">
                                        <span class="badge">4.6</span>
                                        <span class="icon" aria-label="별점 4.6점">
                                            별점 총점
                                        </span>
                                    </div>
                                </div>

                                <div class="filter">
                                    <div class="production-review-feed__filter-wrap">
                                        <div class="production-review-feed__filter">
                                            <div class="production-review-feed__filter__order-list">
                                                <button
                                                    class="production-review-feed__filter__order production-review-feed__filter__order--active"
                                                    aria-pressed="true" type="button">베스트순</button>
                                                <button class="production-review-feed__filter__order"
                                                    aria-pressed="false" type="button">최신순</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="production-review-feed__list">
                                    <div class="production-review-item__container">
                                        <article class="production-review-item">
                                            <div class="production-review-item__writer">
                                                <img src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-1577349074_kakao_961302371.jpg/80/80"
                                                    class="production-review-item__writer__img" alt="">
                                                <div class="production-review-item__writer__info">
                                                    <p class="production-review-item__writer__info__name">
                                                        작성자
                                                    </p>

                                                    <button
                                                        class="production-review-item__writer__info__total-star-wrap"
                                                        type="button">
                                                        <span class="production-review-item__writer__info__total-star"
                                                            aria-label="별점 5.0점">
                                                            준 별점 표시
                                                        </span>
                                                    </button>

                                                    <span class="production-review-item__writer__info__date">2020.01.01
                                                        ∙ 오늘의집 구매(구매일)</span>
                                                </div>
                                            </div>
                                            <p class="production-review-item__name">매트리스 선택: 9존 마약매트리스 8cm 멀티싱글 / 색상 선택:
                                                멜란지차콜</p>
                                            <button type="button" class="production-review-item__img__btn">
                                                <img class="production-review-item__img"
                                                    src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/1577885718_oKYDhk6.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
                                                    srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/1577885718_oKYDhk6.jpeg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/1577885718_oKYDhk6.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/1577885718_oKYDhk6.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 3x">
                                            </button>
                                            <p class="production-review-item__description">
                                                180/85 땅에서 자면 허리 아파하는데 급하게 사서 자보니 허리안아프고 8센치 거의 땅 안느껴집니다. 나중에 접을거 생각해도
                                                딱인거같아요.냄새는 아침에 널고 밤에 썼을때 안났던거같아요.
                                            </p>
                                        </article>
                                    </div>
                                </div>
                                <ul class="list-paginator production-review__paginator">
                                    <li>
                                        <button class="list-paginator__page sm selected" type="button">1</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__page sm" type="button">2</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__page sm" type="button">3</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__page sm" type="button">4</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__page sm" type="button">5</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__page" type="button">6</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__page" type="button">7</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__page" type="button">8</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__page" type="button">9</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__next" type="button">
                                            <svg width="26" height="26" viewBox="0 0 26 26"
                                                preserveAspectRatio="xMidYMid meet">
                                                <g fill="none" fill-rule="evenodd" transform="matrix(-1 0 0 1 26 0)">
                                                    <rect width="25" height="25" x=".5" y=".5" stroke="#DCDCDC" rx="4">
                                                    </rect>
                                                    <g stroke="#424242" stroke-linecap="square" stroke-width="2">
                                                        <path d="M14.75 8.263L10.25 13M10.25 13l4.5 4.737"></path>
                                                    </g>
                                                </g>
                                            </svg>
                                        </button>
                                    </li>
                                </ul>
                                <!--production-review-feed 끝-->
                            </div>
                        </section>

                        <a id="production-selling-question"></a>
                        <section class="production-selling-section">
                            <header class="production-selling-section__header">
                                <h1 class="production-selling-section__title">문의<span class="count">126</span></h1>
                                <div class="production-selling-section__right">
                                    <a href="/users/sign_in?redirect_to=%2Fproductions%2F131836%2Fselling">문의하기</a>
                                </div>
                            </header>
                            <div class="production-question-feed">
                                <div class="production-question-feed__list">
                                    <article class="production-question-feed__item" data-qna-id="850329">
                                        <header class="production-question-feed__item__header">구매 | 반품 |
                                            <span class="answered">답변완료</span>
                                        </header>
                                        <p class="production-question-feed__item__author">호잇** | 2020년 03월 11일 17시 02분
                                        </p>
                                        <div class="production-question-feed__item__question">
                                            <span class="production-question-feed__item__badge">Q&nbsp;</span>
                                            <p class="production-question-feed__item__content">
                                                <span class="production-question-feed__item__content__option-name">9존
                                                    마약매트리스 12cm 슈퍼싱글 / 멜란지차콜
                                                    <br>
                                                </span>안녕하세요 반품하고자합니다 반품비는 어떻게 결제하고 포장지는 어떻게하면 되나요? 비닐에만 배송이왔는데 비닐로 다시싸서
                                                비닐찢은부분은 테이프로 붙이면 되나요?
                                            </p>
                                        </div>
                                        <div class="production-question-feed__item__answer">
                                            <span class="production-question-feed__item__badge">A&nbsp;</span>
                                            <p class="production-question-feed__item__answer__author">
                                                <span class="author">(주) 더릭스</span>&nbsp;
                                                <span class="date"> 2020년 03월 11일 17시 31분</span>
                                            </p>
                                            <p class="production-question-feed__item__content">안녕하세요 고객님
                                                반품접수해주시면 수거접수해드리니 접수해주시고
                                                이동에 훼손되지않게 이중 포장으로 받으실때처럼 포장부탁드립니다
                                                반품비는
                                                기업 01041710871 박승희 12,000원 입금해주시면 됩니다감사합니다
                                            </p>
                                        </div>
                                    </article>
                                </div>
                                <ul class="list-paginator production-question-feed__paginator">
                                    <li>
                                        <button class="list-paginator__page sm selected" type="button">1</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__page sm" type="button">2</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__page sm" type="button">3</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__page sm" type="button">4</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__page sm" type="button">5</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__page" type="button">6</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__page" type="button">7</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__page" type="button">8</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__page" type="button">9</button>
                                    </li>
                                    <li>
                                        <button class="list-paginator__next" type="button">
                                            <svg width="26" height="26" viewBox="0 0 26 26"
                                                preserveAspectRatio="xMidYMid meet">
                                                <g fill="none" fill-rule="evenodd" transform="matrix(-1 0 0 1 26 0)">
                                                    <rect width="25" height="25" x=".5" y=".5" stroke="#DCDCDC" rx="4">
                                                    </rect>
                                                    <g stroke="#424242" stroke-linecap="square" stroke-width="2">
                                                        <path d="M14.75 8.263L10.25 13M10.25 13l4.5 4.737"></path>
                                                    </g>
                                                </g>
                                            </svg>
                                        </button>
                                    </li>
                                </ul>
                            </div>
                        </section>

                        <a id="production-selling-delivery"></a>
                             <section class="production-selling-section">
                            <header class="production-selling-section__header">
                                <h1 class="production-selling-section__title">배송</h1>
                            </header>
                            <table class="production-selling-table">
                                <tbody>
                                    <tr>
                                        <th>배송</th>
                                        <td>일반택배</td>
                                    </tr>
                                    <tr>
                                        <th>배송비</th>
                                        <td>무료배송</td>
                                    </tr>
                                    <tr>
                                        <th>도서산간 추가 배송비</th>
                                        <td>7,000원 </td>
                                    </tr>
                                    <tr>
                                        <th>배송불가 지역</th>
                                        <td>배송불가 지역이 없습니다.</td>
                                    </tr>
                                </tbody>
                            </table>
                        </section>
                        <section class="production-selling-section">
                            <header class="production-selling-section__header">
                                <h1 class="production-selling-section__title">교환/환불</h1>
                            </header>
                            <div class="production-selling-refund">
                                <table class="production-selling-table production-selling-refund__table">
                                    <tbody>
                                        <tr>
                                            <th>반품배송비</th>
                                            <td>6,000원 (최초 배송비가 무료인 경우 12,000원 부과)</td>
                                        </tr>
                                        <tr>
                                            <th>교환배송비</th>
                                            <td>12,000원</td>
                                        </tr>
                                        <tr>
                                            <th>보내실 곳</th>
                                            <td>(17608) 경기 안성시 서운면 송정리 101-1 (송정리) 새로미</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <h2 class="production-selling-refund__title">반품/교환 사유에 따른 요청 가능 기간</h2>
                                <p class="production-selling-refund__note">반품 시 먼저 판매자와 연락하셔서 반품사유, 택배사, 배송비, 반품지 주소 등을
                                    협의하신 후 반품상품을 발송해 주시기 바랍니다.</p>
                                <ol class="production-selling-refund__list">
                                    <li>구매자 단순 변심은 상품 수령 후 7일 이내&nbsp;
                                        <small>(구매자 반품배송비 부담)</small>
                                    </li>
                                    <li>표시/광고와 상이, 상품하자의 경우 상품 수령 후 3개월 이내 혹은 표시/광고와 다른 사실을 안 날로부터 30일 이내.
                                        <br>둘 중 하나 경과 시 반품/교환 불가&nbsp;
                                        <small>(판매자 반품배송비 부담)</small>
                                    </li>
                                </ol>
                                <h2 class="production-selling-refund__title">반품/교환 불가능 사유</h2>
                                <p class="production-selling-refund__note">아래와 같은 경우 반품/교환이 불가능합니다.</p>
                                <ol class="production-selling-refund__list">
                                    <li>반품요청기간이 지난 경우</li>
                                    <li>구매자의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우&nbsp;
                                        <small>(단, 상품의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외)</small>
                                    </li>
                                    <li>포장을 개봉하였으나 포장이 훼손되어 상품가치가 현저히 상실된 경우&nbsp;
                                        <small>(예: 식품, 화장품)</small>
                                    </li>
                                    <li>구매자의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우&nbsp;
                                        <small>(라벨이 떨어진 의류 또는 태그가 떨어진 명품관 상품인 경우)</small>
                                    </li>
                                    <li>시간의 경과에 의하여 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우&nbsp;
                                        <small>(예: 식품, 화장품)</small>
                                    </li>
                                    <li>고객주문 확인 후 상품제작에 들어가는 주문제작상품</li>
                                    <li>복제가 가능한 상품 등의 포장을 훼손한 경우&nbsp;
                                        <small>(CD/DVD/GAME/도서의 경우 포장 개봉 시)</small>
                                    </li>
                                </ol>
                            </div>
                        </section>

                        <a id="production-selling-suggestion"></a>
                        <section class="production-selling-section">
                            <header class="production-selling-section__header">
                                <h1 class="production-selling-section__title">이 상품이 포함된 기획전 <span class="count">2</span>
                                </h1>
                            </header>

                            <div class="scroller-wrap production-selling-exhibition-list scroller-wrap--enabled">
                                <div class="scroller">

                                    <div class="scroller__content-wrap" tabindex="-1">
                                        <div class="scroller__content" style="transform: translateX(0px);">
                                            <ul class="production-selling-exhibition-list__list">
                                                <article class="production-selling-exhibition-list__item-wrap">
                                                    <a class="production-selling-exhibition-list__item"
                                                        href="/exhibitions/1068?affect_type=ProductSaleDetailExhibition&amp;affect_id=">
                                                        <div class="production-selling-exhibition-list__item__image">
                                                            <img alt=""
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/uploads/exhibitions/cover_image/157959530335084918.jpg?gif=1&amp;w=360&amp;h=240&amp;c=c&amp;webp=1"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/exhibitions/cover_image/157959530335084918.jpg?gif=1&amp;w=512&amp;h=342&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/exhibitions/cover_image/157959530335084918.jpg?gif=1&amp;w=720&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/exhibitions/cover_image/157959530335084918.jpg?gif=1&amp;w=1024&amp;h=683&amp;c=c&amp;webp=1 3x">
                                                            <span
                                                                class="production-selling-exhibition-list__item__badge">56개
                                                                상품</span>
                                                        </div>
                                                        <h1 class="production-selling-exhibition-list__item__title">
                                                            매트리스, 체형 따라 고른다?</h1>
                                                        <p class="production-selling-exhibition-list__item__sub-title">
                                                            실패없는 매트리스 구매가이드</p>
                                                    </a>
                                                </article>

                                                <article class="production-selling-exhibition-list__item-wrap">
                                                    <a class="production-selling-exhibition-list__item"
                                                        href="/exhibitions/1095?affect_type=ProductSaleDetailExhibition&amp;affect_id=">
                                                        <div class="production-selling-exhibition-list__item__image">
                                                            <img alt=""
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/uploads/exhibitions/cover_image/158225315010244065.jpg?gif=1&amp;w=360&amp;h=240&amp;c=c&amp;webp=1"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/exhibitions/cover_image/158225315010244065.jpg?gif=1&amp;w=512&amp;h=342&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/exhibitions/cover_image/158225315010244065.jpg?gif=1&amp;w=720&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/exhibitions/cover_image/158225315010244065.jpg?gif=1&amp;w=1024&amp;h=683&amp;c=c&amp;webp=1 3x">
                                                            <span
                                                                class="production-selling-exhibition-list__item__badge">468개
                                                                상품</span>
                                                        </div>
                                                        <h1 class="production-selling-exhibition-list__item__title">이거
                                                            없으면 자취 불가!</h1>
                                                        <p class="production-selling-exhibition-list__item__sub-title">
                                                            국민 아이템 몽땅 최저가</p>
                                                    </a>
                                                </article>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="scroller__ui">
                                        <div class="scroller__ui__left scroller-hide scroller-fixed"
                                            style="top: 112px;">
                                            <svg class="inactive" width="40" height="40" viewBox="0 0 40 40"
                                                preserveAspectRatio="xMidYMid meet">
                                                <g fill="none">
                                                    <circle cx="20" cy="20" r="20" fill="#FFF" class="circle"></circle>
                                                    <path fill="#424242"
                                                        d="M17 20l7.5 7.5-1.4 1.4-8.4-8.4-.5-.5.5-.5 8.4-8.4 1.4 1.4-7.5 7.5z"
                                                        class="arrow"></path>
                                                </g>
                                            </svg>
                                            <svg class="active" width="40" height="40" viewBox="0 0 40 40"
                                                preserveAspectRatio="xMidYMid meet">
                                                <g fill="none">
                                                    <circle cx="20" cy="20" r="20" fill="#35C5F0"></circle>
                                                    <path fill="#FFF"
                                                        d="M17 20l7.5 7.5-1.4 1.4-8.4-8.4-.5-.5.5-.5 8.4-8.4 1.4 1.4-7.5 7.5z">
                                                    </path>
                                                </g>
                                            </svg>
                                        </div>
                                        <div class="scroller__ui__right scroller-hide scroller-fixed"
                                            style="top: 112px;">
                                            <svg class="inactive" width="40" height="40" viewBox="0 0 40 40"
                                                preserveAspectRatio="xMidYMid meet">
                                                <g fill="none" transform="matrix(-1 0 0 1 40 0)">
                                                    <circle cx="20" cy="20" r="20" fill="#FFF" class="circle"></circle>
                                                    <path fill="#424242"
                                                        d="M17 20l7.5 7.5-1.4 1.4-8.4-8.4-.5-.5.5-.5 8.4-8.4 1.4 1.4-7.5 7.5z"
                                                        class="arrow"></path>
                                                </g>
                                            </svg>
                                            <svg class="active" width="40" height="40" viewBox="0 0 40 40"
                                                preserveAspectRatio="xMidYMid meet">
                                                <g fill="none" transform="matrix(-1 0 0 1 40 0)">
                                                    <circle cx="20" cy="20" r="20" fill="#35C5F0"></circle>
                                                    <path fill="#FFF"
                                                        d="M17 20l7.5 7.5-1.4 1.4-8.4-8.4-.5-.5.5-.5 8.4-8.4 1.4 1.4-7.5 7.5z">
                                                    </path>
                                                </g>
                                            </svg>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>


                        <section class="production-selling-section">
                            <header class="production-selling-section__header">
                                <h1 class="production-selling-section__title">비슷한 상품</h1>
                            </header>
                            <div class="scroller-wrap production-selling-production-list scroller-wrap--enabled">
                                <div class="scroller">
                                    <div class="scroller__content-wrap" tabindex="-1">
                                        <div class="scroller__content" style="transform: translateX(0px);">
                                            <ul class="production-selling-production-list__list">

                                                <div class="production-selling-production-list__item-wrap">
                                                    <article class="production-item">
                                                        <a class="production-item__overlay"
                                                            href="/productions/186788/selling"></a>
                                                        <div class="production-item-image production-item__image">
                                                            <img class="image" alt=""
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1553503895961_9tGXigG2tr.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8&amp;webp=1"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1553503895961_9tGXigG2tr.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1553503895961_9tGXigG2tr.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1553503895961_9tGXigG2tr.jpg?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8&amp;webp=1 3x">
                                                            <button
                                                                class="production-item-scrap-badge production-item-image__scrap-badge"
                                                                type="button">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                    height="24" viewBox="0 0 24 24"
                                                                    class="inactive-icon">
                                                                    <defs>
                                                                        <path id="scrap-icon-2659-b"
                                                                            d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z">
                                                                        </path>
                                                                        <filter id="scrap-icon-2659-a" width="150%"
                                                                            height="150%" x="-25%" y="-25%"
                                                                            filterUnits="objectBoundingBox">
                                                                            <feOffset in="SourceAlpha"
                                                                                result="shadowOffsetOuter1"></feOffset>
                                                                            <feGaussianBlur in="shadowOffsetOuter1"
                                                                                result="shadowBlurOuter1"
                                                                                stdDeviation="1.5"></feGaussianBlur>
                                                                            <feComposite in="shadowBlurOuter1"
                                                                                in2="SourceAlpha" operator="out"
                                                                                result="shadowBlurOuter1"></feComposite>
                                                                            <feColorMatrix in="shadowBlurOuter1"
                                                                                values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0">
                                                                            </feColorMatrix>
                                                                        </filter>
                                                                        <filter id="scrap-icon-2659-c" width="150%"
                                                                            height="150%" x="-25%" y="-25%"
                                                                            filterUnits="objectBoundingBox">
                                                                            <feGaussianBlur in="SourceAlpha"
                                                                                result="shadowBlurInner1"
                                                                                stdDeviation="1.5"></feGaussianBlur>
                                                                            <feOffset in="shadowBlurInner1"
                                                                                result="shadowOffsetInner1"></feOffset>
                                                                            <feComposite in="shadowOffsetInner1"
                                                                                in2="SourceAlpha" k2="-1" k3="1"
                                                                                operator="arithmetic"
                                                                                result="shadowInnerInner1">
                                                                            </feComposite>
                                                                            <feColorMatrix in="shadowInnerInner1"
                                                                                values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0">
                                                                            </feColorMatrix>
                                                                        </filter>
                                                                    </defs>
                                                                    <g fill="none" fill-rule="nonzero"
                                                                        transform="matrix(1 0 0 -1 0 24)">
                                                                        <use fill="#000"
                                                                            filter="url(#scrap-icon-2659-a)"
                                                                            href="#scrap-icon-2659-b"></use>
                                                                        <use fill="#FFF" fill-opacity=".4"
                                                                            href="#scrap-icon-2659-b"></use>
                                                                        <use fill="#000"
                                                                            filter="url(#scrap-icon-2659-c)"
                                                                            href="#scrap-icon-2659-b"></use>
                                                                        <path stroke="#FFF"
                                                                            d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z">
                                                                        </path>
                                                                    </g>
                                                                </svg>
                                                                <svg class="active-icon" width="24" height="24"
                                                                    viewBox="0 0 24 24"
                                                                    preserveAspectRatio="xMidYMid meet">
                                                                    <path fill="#35C5F0" fill-rule="nonzero"
                                                                        d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z">
                                                                    </path>
                                                                </svg>
                                                            </button>
                                                        </div>
                                                        <div class="production-item__content">
                                                            <h1 class="production-item__header">
                                                                <span class="production-item__header__brand">이룸홈 </span>
                                                                <span class="production-item__header__name">[자취특가] 마약 7존
                                                                    매트리스 (방수속커버, 결합벨트 증정)</span>
                                                            </h1>
                                                            <span class="production-item-price">
                                                                <span class="production-item-price__rate">68
                                                                    <span class="percentage">% </span>
                                                                </span>
                                                                <span class="production-item-price__price">36,900</span>
                                                            </span>
                                                            <p
                                                                class="production-item-stats production-item-stats--review">
                                                                <svg class="icon" width="24" height="24"
                                                                    viewBox="0 0 24 24"
                                                                    preserveAspectRatio="xMidYMid meet">
                                                                    <path fill="currentColor" fill-rule="evenodd"
                                                                        d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z">
                                                                    </path>
                                                                </svg>
                                                                <strong class="avg">4.4</strong> 리뷰 1,683</p>
                                                            <span class="production-item-badge-list">
                                                                <svg class="icon" aria-label="무료배송" width="47"
                                                                    height="20" viewBox="0 0 47 20"
                                                                    preserveAspectRatio="xMidYMid meet">
                                                                    <g fill="none" fill-rule="evenodd">
                                                                        <rect width="47" height="20" fill="#000"
                                                                            fill-opacity=".07" fill-rule="nonzero"
                                                                            rx="4"></rect>
                                                                        <path fill="#757575"
                                                                            d="M12.73 5.38v3.96h-6.6V5.38h6.6zm-2.68 9.43H8.76v-3.25H5v-1.03h8.86v1.03h-3.81v3.25zm1.4-6.49V6.41H7.43v1.91h4.04zm11.08 2.7h-1.42v1.54h2.26v1.02h-8.86v-1.02h2.24v-1.53h-1.1V7.78h5.32V6.65H15.6V5.63h6.66V8.8h-5.33v1.18h5.61v1.04zm-4.53 0v1.54h1.87v-1.53H18zm14.37 3.78h-1.23V9.86h-.8v4.49h-1.2V5.18h1.2v3.66h.8V5h1.23v9.8zm-4.2-2.54h-3.9V6.01h1.27v2.26h1.36V6h1.28v6.26zm-1.27-1.01v-2h-1.36v2h1.36zm14.49 1.71c0 1.13-1.25 1.82-3.41 1.82s-3.42-.7-3.42-1.82 1.25-1.82 3.4-1.82c2.18 0 3.43.7 3.43 1.82zm-3.41-6.05c-.5 1.13-2.1 1.9-3.51 2.1l-.54-1c1.64-.17 3.39-1.06 3.39-2.54V5.2h1.33v.28c0 1.48 1.99 2.47 3.4 2.53l-.55 1.01c-1.31-.18-3.03-.97-3.52-2.1zm4.42 3.78h-8.86V9.66h3.79V8.4h1.29v1.26h3.78v1.03zm-2.33 2.27c0-.5-.83-.8-2.1-.8s-2.08.3-2.08.8c0 .51.81.8 2.08.8s2.1-.29 2.1-.8z">
                                                                        </path>
                                                                    </g>
                                                                </svg>
                                                                <svg class="icon" aria-label="최저가" width="37"
                                                                    height="20" viewBox="0 0 37 20"
                                                                    preserveAspectRatio="xMidYMid meet">
                                                                    <g fill="none" fill-rule="evenodd">
                                                                        <rect width="37" height="20" fill="#F77" rx="4">
                                                                        </rect>
                                                                        <path fill="#FFF"
                                                                            d="M5.1 8.04V7.02h5.34v1.02H8.5c.21.83 1.27 1.54 2.23 1.66l-.6 1.02a3.98 3.98 0 0 1-2.29-1.6 3.89 3.89 0 0 1-2.43 1.86L4.77 10c1.18-.26 2.2-1.03 2.37-1.95H5.09zM12.65 5v9.8h-1.3V5h1.3zm-1.8 6.73l.1.98c-1.79.24-4.44.34-6.27.34l-.19-1.04c.9 0 1.8 0 2.66-.03v-1.6h1.3v1.55c.88-.03 1.7-.11 2.4-.2zM6.35 6.48v-1h2.92v1H6.35zm13.67 5.34l-.72.95a5.58 5.58 0 0 1-2.36-2.67 4.88 4.88 0 0 1-2.36 2.86l-.8-.94c1.63-.9 2.48-2.4 2.48-4.46v-.5h-1.97V6h5.21v1.06h-1.9v.5c0 2.06.95 3.46 2.42 4.26zm2.08 2.98h-1.29V9.47h-1.65v-1.1h1.65V5h1.29v9.8zm10.48-4.97h-1.42v4.97H29.9V5h1.27v3.76h1.42v1.07zM28.6 6a7.8 7.8 0 0 1-4.39 7.03l-.78-.97a6.46 6.46 0 0 0 3.77-5h-3.18V6h4.58z">
                                                                        </path>
                                                                    </g>
                                                                </svg>
                                                            </span>
                                                        </div>
                                                    </article>
                                                </div>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                      
                    </div>
                </div>

                <div class="production-selling__detail__sidebar col-4" style="width: 20%;  border: solid 5px royalblue;">
                    <div data-sticky-enabled="true" data-sticky-always="false" data-direction="top"
                        data-offset="133" class="sticky-container production-selling-sidebar-wrap"
                        style="height: 100%; position: relative; border: 1px solid red;">
                        <div class="sticky-child production-selling-sidebar"
                            style="position: sticky; box-sizing: border-box; height: 477px; width: 50%; top: 100px; border: 1px solid rgb(196, 228, 15);">
                            <section
                                class="production-selling-sidebar-content production-selling-sidebar__content">
                                <div
                                    class="production-selling-option-form production-selling-sidebar-content__option-form">
                                    <section
                                        class="selling-option-form-content production-selling-option-form__form">
                                        <div class="selling-option-form-content__form">
                                            <div class="selling-option-select-input">
                                                <div
                                                    class="input-group select-input selling-option-select-input__option selling-option-select-input__option-1 focused">
                                                    <select class="form-control empty">
                                                        <option value="" disabled="">매트리스 선택</option>
                                                        <option value="0">9존 마약매트리스 6cm 멀티싱글(28,900원)</option>
                                                        <option value="1">9존 마약매트리스 6cm 슈퍼싱글(48,900원)</option>
                                                        <option value="2">9존 마약매트리스 6cm 퀸(61,900원)</option>
                                                        <option value="3">9존 마약매트리스 8cm 멀티싱글(41,900원)</option>
                                                        <option value="4">9존 마약매트리스 8cm 슈퍼싱글(60,900원)</option>
                                                        <option value="5">9존 마약매트리스 8cm 퀸(71,900원)</option>
                                                        <option value="6">9존 마약매트리스 12cm 멀티싱글(61,900원)</option>
                                                        <option value="7">9존 마약매트리스 12cm 슈퍼싱글(80,900원)</option>
                                                        <option value="8">9존 마약매트리스 12cm 퀸(91,900원)</option>
                                                    </select><span class="select-input__icon"><svg class="icon"
                                                            width="10" height="10"
                                                            preserveAspectRatio="xMidYMid meet"
                                                            style="fill: currentcolor;">
                                                            <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                                                        </svg></span></div>
                                                <div
                                                    class="input-group select-input selling-option-select-input__option selling-option-select-input__option-2">
                                                    <select class="form-control empty">
                                                        <option value="" disabled="">색상 선택</option>
                                                    </select><span class="select-input__icon"><svg class="icon"
                                                            width="10" height="10"
                                                            preserveAspectRatio="xMidYMid meet"
                                                            style="fill: currentcolor;">
                                                            <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                                                        </svg></span></div>
                                                <div
                                                    class="input-group select-input selling-option-select-input__option selling-option-select-input__option-extra">
                                                    <select class="form-control empty">
                                                        <option value="" disabled="">추가상품을 선택해주세요.</option>
                                                        <option value="0">버클 결합벨트(2EA) (6,000원)</option>
                                                        <option value="1">방수속커버 멀티싱글 (15,900원)</option>
                                                        <option value="2">방수속커버 슈퍼싱글 (16,900원)</option>
                                                        <option value="3">방수속커버 퀸 (17,900원)</option>
                                                        <option value="4">기절마약베개 아이보리 (19,900원)</option>
                                                        <option value="5">기절마약베개 라이트그레이 (19,900원)</option>
                                                        <option value="6">기절마약베개 딥그레이 (19,900원)</option>
                                                        <option value="7">기절마약베개 네이비 (19,900원)</option>
                                                        <option value="8">6~8cm전용 커버 멀티싱글 멜란지그레이 (16,900원)
                                                        </option>
                                                        <option value="9">6~8cm전용 커버 멀티싱글 멜란지네이비 (16,900원)
                                                        </option>
                                                        <option value="10">6~8cm전용 커버 멀티싱글 멜란지차콜 (16,900원)
                                                        </option>
                                                        <option value="11">6~8cm전용 커버 슈퍼싱글 멜란지그레이 (21,900원)
                                                        </option>
                                                        <option value="12">6~8cm전용 커버 슈퍼싱글 멜란지네이비 (21,900원)
                                                        </option>
                                                        <option value="13">6~8cm전용 커버 슈퍼싱글 멜란지차콜 (21,900원)
                                                        </option>
                                                        <option value="14">6~8cm전용 커버 퀸 멜란지그레이 (29,900원)
                                                        </option>
                                                        <option value="15">6~8cm전용 커버 퀸 멜란지네이비 (29,900원)
                                                        </option>
                                                        <option value="16">6~8cm전용 커버 퀸 멜란지차콜 (29,900원)</option>
                                                        <option value="17">12cm전용 커버 멀티싱글 멜란지그레이 (19,900원)
                                                        </option>
                                                        <option value="18">12cm전용 커버 멀티싱글 멜란지네이비 (19,900원)
                                                        </option>
                                                        <option value="19">12cm전용 커버 멀티싱글 멜란지차콜 (19,900원)
                                                        </option>
                                                        <option value="20">12cm전용 커버 슈퍼싱글 멜란지그레이 (26,900원)
                                                        </option>
                                                        <option value="21">12cm전용 커버 슈퍼싱글 멜란지네이비 (26,900원)
                                                        </option>
                                                        <option value="22">12cm전용 커버 슈퍼싱글 멜란지차콜 (26,900원)
                                                        </option>
                                                        <option value="23">12cm전용 커버 퀸 멜란지그레이 (34,900원)</option>
                                                        <option value="24">12cm전용 커버 퀸 멜란지네이비 (34,900원)</option>
                                                        <option value="25">12cm전용 커버 퀸 멜란지차콜 (34,900원)</option>
                                                    </select><span class="select-input__icon"><svg class="icon"
                                                            width="10" height="10"
                                                            preserveAspectRatio="xMidYMid meet"
                                                            style="fill: currentcolor;">
                                                            <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                                                        </svg></span></div>
                                            </div>
                                        </div>
                                        <ul class="selling-option-form-content__list"></ul>
                                        <p class="selling-option-form-content__price"><span
                                                class="selling-option-form-content__price__left">주문금액</span><span
                                                class="selling-option-form-content__price__right"><span
                                                    class="selling-option-form-content__price__number">0</span>원</span>
                                        </p>
                                    </section>
                                    <div class="production-selling-option-form__footer"><button
                                            class="button button--color-gray-14-inverted button--size-55 button--shape-4 production-selling-sidebar-content__scrap"
                                            type="button"><svg class="icon--stroke" aria-label="스크랩" width="24"
                                                height="24" fill="currentColor" viewBox="0 0 24 24"
                                                preserveAspectRatio="xMidYMid meet">
                                                <path
                                                    d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z">
                                                </path>
                                            </svg></button><button
                                            class="button button--color-blue-inverted button--size-55 button--shape-4"
                                            type="button">장바구니</button><button
                                            class="button button--color-blue button--size-55 button--shape-4"
                                            type="button">바로구매</button></div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
    </div>
    <!--production-selling-overview container 끝-->
</body>
  