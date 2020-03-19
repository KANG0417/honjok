<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
</style>
<style>
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
        
        .selling-option-select-input__option{
        	margin-bottom: 5px;
        }

        /* 메인 이미지 오른쪽 끝*/

        /*상품 css*/
        .production-selling-description__content img{
            width: 100%;
        }
        .production-selling__detail__content{
            margin-right: 1rem;
        }
         .production-selling-table{
            
            margin:5px;
        }
        .production-selling-table th{
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: rgb(209, 211, 209);
            color: rgb(0, 0, 0);
        }
        .production-selling-table td{
            border: 1px solid #ddd;
             padding: 8px;
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
            background-color: #fafafa;
            z-index: 10;
            position: sticky;
            top: 0px;
        }

        .prodproductionuction-selling-navigation__list {
            margin-left: 50px;
            padding: 20px;
        }
        .prodproductionuction-selling-navigation__list li{
            margin-right: 35px;
            height: 100%;
        }
      
        .prodproductionuction-selling-navigation__list li a {

            text-align: center;
            text-decoration: none;
        }
        .prodproductionuction-selling-navigation__list li a:hover{
         
            border-bottom: solid 3px ;
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

<!--모달창-->
<style>

 .review-modal__modal__wrap{ 
     background-color: white;
     width: 50%;
     margin: 5% auto  5% auto;
     z-index: 11;
     margin-bottom: 50px;
} 
.react-modal--center-div{
    margin-top: 50px;
    margin-bottom: 50px;
    width:100%;
    height: 100vh; 
    position: fixed; 
    z-index: 11;
    background-color: rgba(5, 5, 5, 0.5);
    display: none;
}

/* 별점 */
.rating-group {
  display: inline-flex;
}

/* make hover effect work properly in IE */
.rating__icon {
  pointer-events: none;
}

/* hide radio inputs */
.rating__input {
 position: absolute !important;
 left: -9999px !important;
}

/* hide 'none' input from screenreaders */
.rating__input--none {
  display: none
}

/* set icon padding and size */
.rating__label {
  cursor: pointer;
  padding: 0 0.1em;
  font-size: 2rem;
}

/* set default star color */
.rating__icon--star {
  color: orange;
}

/* if any input is checked, make its following siblings grey */
.rating__input:checked ~ .rating__label .rating__icon--star {
  color: #ddd;
}

/* make all stars orange on rating group hover */
.rating-group:hover .rating__label .rating__icon--star {
  color: orange;
}

/* make hovered input's following siblings grey on hover */
.rating__input:hover ~ .rating__label .rating__icon--star {
  color: #ddd;
}

</style>

<script>
	imgName = new Array;
</script>

</head>

<body>
      <!--리뷰모달 시작-->
<div class="react-modal--center-div" >  
<div class="react-modal react-modal--center review-modal__modal__wrap open open-active">
        <div class="react-modal__content-wrap" style="margin: 10px;">
            <div class="react-modal__content review-modal__modal">
                <div class="review-modal">
                    <div class="review-modal__title">리뷰 쓰기
                        <button type="button" class="review-modal__close">취소
                    </button></div>
                    <div class="review-modal__point-explain">포토리뷰&nbsp;<span class="review-modal__point-explain__value">250P</span>,&nbsp;
                        일반리뷰&nbsp;<span class="review-modal__point-explain__value review-modal__point-explain__value--none">0P</span>
                    </div>

                    <form class="review-modal__form">
                    <input type="hidden" name="id" value="${sessionScope.userSession.id }"> <input
							type="hidden" name="nickName" value="${sessionScope.userSession.nickName }"> <input
							type="hidden" name="pNum" value="${productvo.pNum }">
					<input type="hidden" name="imgArray" value="">
                        <div class="review-modal__form__product">
                            <img>메인사진
                            <div class="review-modal__form__product__contents">
                                <div class="review-modal__form__product__contents__brand">브랜드명</div>
                                <div class="review-modal__form__product__contents__name">성
                                </div>
                                <div class="review-modal__form__product__contents__options"></div>
                            </div>
                        </div>
                        <div class="review-modal__section">
                            <div class="review-modal__section__title">별점 평가</div>
                            <div class="review-modal__form__star__wrap">
                                <div class="review-modal__form__star">
                                    <div class="review-modal__form__star__label">만족도</div>
                                    <div id="full-stars-example-two">
                                        <div class="rating-group">
                                            <input disabled checked class="rating__input--none" id="rating3-none" value="1" type="radio">
                                            <label aria-label="1 star"   class="rating__label" for="rating3-1"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                            <input class="rating__input" id="rating3-1" value="1" type="radio">
                                            <label aria-label="2 stars" class="rating__label" for="rating3-2"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                            <input class="rating__input" id="rating3-2" value="2" type="radio">
                                            <label aria-label="3 stars" class="rating__label" for="rating3-3"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                            <input class="rating__input" id="rating3-3" value="3" type="radio">
                                            <label aria-label="4 stars" class="rating__label" for="rating3-4"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                            <input class="rating__input" id="rating3-4" value="4" type="radio">
                                            <label aria-label="5 stars" class="rating__label" for="rating3-5"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                            <input class="rating__input" id="rating3-5" value="5" type="radio">
                               				<input class="review-rating" type="hidden" name="rating" value="5">
                                        </div>
                                           
                                   <script>
                                     	var ratingInput = document.querySelector(".rating-group");
	                                     	ratingInput.onclick = function(e){
	                                     		var ratingValue = document.querySelector("input[name='rating']");
	                                    		
	                                     		var ratingInput = document.querySelector(".rating__input--none");
	                                     		ratingValue.value = e.target.value;
	                                     		
	                                     	};
                                 </script> 

                                    </div>
                                </div>
                            </div>
                        </div>
  								                       
                        <div class="review-modal__section" >
                            <div class="review-modal__section__img">    
                            </div>
                            <div class="review-modal__section__explain">사진을 첨부해주세요. (최대 2장 / 'gif', 'png', 'jpg','jpeg' 형식만 가능)
                            </div>
                            <div class="select-my-card">
                                <div class="select-my-card__content select-my-card__content--select">
                                    <div class="round-checkbox-input round-checkbox-input--blue">
                                        <label class="round-checkbox-input__label">
                                                <span class="round-checkbox-input__icon">
                                                    </span>
                                                </label></div>
                                </div>
                                <div class="select-my-card__content">
                                    <div class="round-checkbox-input round-checkbox-input--blue">
                                        <label
                                            class="round-checkbox-input__label">
                                                <span class="round-checkbox-input__icon">
                                            </span>
                                        </label></div>
                                </div>

                            </div>
                            <input multiple="multiple" type="file"
							name="file" id="image"  style="display:block"/>
                            <button class="button button--color-blue-inverted button--size-50 button--shape-4 upload-button"
                                type="button" onclick="document.all.file.click()" >사진 첨부하기</button>
                        </div>
                        <div class="review-modal__section">
                            <div class="review-modal__section__title">리뷰 작성</div>
                            <input class="review-title" type="text" name="title" value="제목">
                            <textarea class="review-content" name="content"
                                placeholder="자세하고 솔직한 리뷰는 다른 고객에게 큰 도움이 됩니다. (최소 20자 이상)"
                                class="form-control text-area-input review-modal__form__review-input"
                                style="height: 60px; width: 98%;"></textarea>
                        </div>

                        <div class="review-modal__section">
                            <div class="review-modal__section__title">상품을 직접 사용하고 작성한 리뷰인가요?</div>
                            <div class="form-check checkbox-input"><label class="form-check-label">
                                <input class="form-check" type="checkbox"><span class="check-img"></span>
                                <span class="review-modal__form__agree">네. 상품을 직접 사용 후 작성한 리뷰이며,&nbsp;
                                    <span class="review-modal__form__agree__policy-button">정책</span>에동의합니다.</span></label></div>
                        </div>
                        <button class="button button--color-blue button--size-50 button--shape-4 review-modal__form__submit"
                            type="button" onclick="reviewForm(this.form)">완료</button>
                    </form>
                    <script>
                    
                    $('#image').on('change',function() {
    								if(this.files.length > 2){
    									alert("사진은 최대 2개 까지 가능 합니다");
    									this.form.reset();
    									$('.review-modal__section__img').html("");
    									return;
    								} 
    								ext = $(this).val().split('.').pop().toLowerCase(); //확장자

    								//배열에 추출한 확장자가 존재하는지 체크
    								if ($.inArray(ext, [ 'gif', 'png', 'jpg','jpeg' ]) == -1) {
    								this.form.reset(); //폼 초기화
    								$('.review-modal__section__img').html("");
									window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
									return;
								} 
    								
    								
    								for(var i= 0 ; i < this.files.length; i++){
    								var imgDel = document.querySelector('#image');
    								var j  = 0;
    								//초기화
    								$('.review-modal__section__img').html("");
    								if (this.files && this.files[i]) {
 									var reader = new FileReader();
    										reader.onload = function(e) {
    										$('.review-modal__section__img').append("<img class='review-img' src='"+e.target.result+"' width='200' height='200'> <button type='button' onclick='imgDel(this);' value='"+j+"'>삭제하기</button>");
    									
    										if(imgName != null && imgName != ""){
    											if(imgName.indexOf(imgDel.files[j].name) != -1 ){

    												var ss = imgName.indexOf(imgDel.files[j].name);
    											  imgName.splice(ss, 1);
    											  

    											  var imgArray = $('input[name="imgArray"]');

    					                    		var myArrayData1 =[];
    					                    		myArrayData1 = imgName.toString();
    					                    		
    					                    		
    					                    		$(imgArray).val(imgName);
    											 }
    											}
    											j++;
    										}
    										reader.readAsDataURL(this.files[i]);
    									}
    								}
    									

    							});
                    
                    	function imgDel(e){
                    		
                    	var imgDel = document.querySelector('#image');
							
                    	if(imgName.indexOf(imgDel.files[e.value].name) == -1 ){
	                    	imgName.push(imgDel.files[e.value].name);
                    	}
                    	
                    	
                    	var	imgTag = e.previousElementSibling;
                    	
                    		imgTag.remove();
                    		e.remove();
                    		
                    		var imgArray = $('input[name="imgArray"]');

                    		var myArrayData1 =[];
                    		myArrayData1 = imgName.toString();
                    		
                    		
                    		$(imgArray).val(imgName);
                    	}
                    	
                    	
                    
	                    function reviewForm(e){
	                    	var form = $(".review-modal__form")[0];
							var data = new FormData(form)
	                    
							$.ajax({type : 'post',
										enctype : 'multipart/form-data',  
										url : "Review.do",
										data : data,
										processData : false,
										contentType : false, 
										success : function(e) {
											
											/* for ( var i in json) {
												$('.view_area')
														.append(
																"<div><img style='width:50px; height:50px;' src=/app/resources/img/review/"+json[i]+"><button type='button' onclick='imgDel(this);'>삭제하기</button></div>")
											} */
											//alert("업로드 성공");
											
										},
										error : function(jqXHR,
												textStatus, errorThrown) {
											alert("오류가 발생하였습니다.");
										}

									});
						
	                    }
                    </script>
                    <div class="review-modal__explain">
                        <ul>
                            <li>비구매 상품 리뷰 포인트는 심사 후 지급됩니다. (영업일 기준 2~3일 소요)</li>
                            <li>포인트는 최초 작성한 리뷰를 기준으로 지급됩니다.</li>
                            <li>사진 첨부시&nbsp;<span class="review-modal__explain__warning">캡쳐, 도용, 유사상품 촬영, 동일상품 여부 식별이
                                    불가한 경우</span>에는 등록이 거절되며 사유는 별도 안내되지 않습니다.</li>
                            <li>상품과 무관한 내용이나 사진, 동일 문자 반복 등의 부적합한 리뷰는 사전 경고 없이 삭제 및 포인트 회수될 수 있습니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
</div>
</div>
<!--리뷰 모달-->





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
                    <li class="commerce-category-breadcrumb__entry">
                        <a class="link"
                            href="#">${productvo.subCategory2 }</a>
   					</li>
                </ol>
            </nav>

            <div class="production-selling-overview__cover-image-wrap col-12 col-md-6 col-lg-7">


                <div class="carousel production-selling-cover-image production-selling-overview__cover-image"
                    role="region" aria-roledescription="carousel">

                    <div class="carousel__list-wrap production-selling-cover-image__carousel-wrap">

                        <div>
                            <ul class="production-selling-cover-image__list">

                            <script>
                              var contentimg = '${productvo.description}';
                              var firstimg = $(contentimg).find('img');
                              for(var i = 0; i < firstimg.length; i ++){
                            	 var src = $(firstimg[i]).attr('src');
                              	 $('.production-selling-cover-image__list').append(' <li class="production-selling-cover-image__list__item"><button class="production-selling-cover-image__list__btn production-selling-cover-image__list__btn--selected"type="button"><img class="image" src="'+src+'"></button></li>');
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
                        
                                <a class="production-selling-header__title__brand" style="margin-bottom:10px; display: block;"
                                    href="">[브랜드명]
                                </a> 
                                <span class="production-selling-header__title__name">${productvo.pName}</span>
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
                                    <span class="production-selling-header__review__icon">
                                        	별5개
                                    </span>
                                    <!--리뷰 갯수-->
                                    <span class="production-selling-header__review__text"><span
                                            class="number">[리뷰갯수]</span>
                                        <span class="postfix">개 리뷰</span>
                                    </span>
                                </a>
                            </p>
                            <!-- 종합 리뷰 별점  끝 -->

                            <p class="production-selling-header__price">
                                <span class="production-selling-header__price__row">
                                    <span class="production-selling-header__price__discount">
                                        <span class="number">[할인률]</span>
                                        <span class="percent">%</span>
                                        &nbsp;
                                    </span>
                                    <span class="production-selling-header__price__price-wrap">
                                        <del class="production-selling-header__price__original">
                                            <span class="number">${productvo.price}</span>
                                            <span class="won">원</span>
                                        </del>
                                        <span class="production-selling-header__price__separator"></span>
                                        <span class="production-selling-header__price__price">
                                            <span class="number">${productvo.saleprice }</span>
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
                                    <b>289P</b>적립해드립니다.
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
                                <span class="production-selling-header__delivery__disclaimer">조건에 따라 추가비용 발생 가능 (상품 상세 정보 참고)</span>
                            </span>
                            <span class="production-selling-header__seller__text">
                          		${productvo.brandName}
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
                                            <option value="" disabled="">추가 선택</option>
                                            <option value="0">추가선택1</option>
                                            <option value="1">추가선택2</option>
                                        </select>
                                    </div>

                                    <div
                                        class="input-group select-input selling-option-select-input__option selling-option-select-input__option-2">
	                                        <select class="form-control empty">
	                                            <option value="0" >색상 선택</option>
	                                        </select>
                                    </div>
                                    <div
                                        class="input-group select-input selling-option-select-input__option selling-option-select-input__option-extra">
                                        <select class="form-control empty">
                                            <option value="" disabled="">추가상품을 </option>
                                            <option value="0">추가상품1</option>
                                            <option value="1">추가상품2</option>
                                        </select>
                                        
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
                                <span class="production-selling-navigation__item__count">리뷰갯수</span>
                            </a>
                        </li>
                        <li>
                            <a class="production-selling-navigation__item" href="#production-selling-question">문의
                                <span class="production-selling-navigation__item__count">문의 갯수</span>
                            </a>
                        </li>
                        <li>
                        <a class="production-selling-navigation__item" href="#production-selling-delivery">배송/환불<a>
                        </li>
                        <li>
                            <a class="production-selling-navigation__item production-selling-navigation__item--active"
                                href="#production-selling-suggestion">추천상품</a>
                        </li>
                        <div class="line"></div>
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
                                <h1 class="production-selling-section__title">상품정보</h1>
                            <div class="production-selling-description">
                              <!--   <div class="production-selling-description__expand-wrap">
                                    <button
                                        class="button button--color-blue button--size-60 button--shape-4 production-selling-description__expand"
                                        type="button">펼치기
                                    </button>
                                </div> -->
                                <a class="production-selling-description__production-event"
                                    href="#">
                                    <img class="production-selling-description__production-event__image production-selling-description__production-event__image--pc "
                                        src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/productions/event/158323970651177877.png?gif=1&amp;w=720&amp;webp=1"
                                        srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/productions/event/158323970651177877.png?gif=1&amp;w=1080&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/productions/event/158323970651177877.png?gif=1&amp;w=1440&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/productions/event/158323970651177877.png?gif=1&amp;w=2560&amp;webp=1 3x">                               
                                </a>
                                <div class="production-selling-description__content">
                                    <p>&nbsp;</p>
                                    <p>
                                       ${productvo.description}
                                        <br>
                     <!--    <img src="https://exit.ohou.se/e328923597eb2272d6a991377ec851d5d4a225bc/ai.esmplus.com/saeromi0871/R_9Zone_/02.gif">
                        <br> -->
                                    </p>
                                </div>
                                <table style="padding:50px"
                                    class="production-selling-table production-selling-description__information-noti">
                                    <tbody>
                                        <tr>
                                            <th>품명</th>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>KC 인증 필 유무</th>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>색상</th>
                                            <td>상세페이지 참조</td>
                                        </tr>
                                        <tr>
                                            <th>구성품</th>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>주요 소재</th>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>제조자, 수입품의 경우 수입자를 함께 표기</th>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>제조국</th>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>크기</th>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>배송, 설치비용</th>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>품질보증기준</th>
                                            <td>제품 이상시 공정거래위원회 고시 소비자분쟁해결기준에 의거 보상합니다.</td>
                                        </tr>
                                        <tr>
                                            <th>A/S 책임자와 전화번호</th>
                                            <td></td>
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
                                    <span class="count">[리뷰 갯수]</span>
                                </h1>
                                <div class="production-selling-section__right">
                                    <button class="ReviewBtn" type="button">리뷰쓰기</button>
                                </div>
                            </header>


                            <div class="production-review-feed">
                                <div class="production-review-feed__header">
                                    <div class="production-review-feed__header__stars">
                                        <span class="badge">별점총점[]</span>
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
                                            <%--   <c:forEach var="product" items="${productvo.productreviewvo }" >
                                            <div class="production-review-item__writer">
                                            
                                                <img src=""
                                                    class="production-review-item__writer__img" alt="작성자 이미지">
                                                     	
                                                <div class="production-review-item__writer__info">
                                                    <p class="production-review-item__writer__info__name">
                                                        	${product.id }
                                                    </p>

                                                    <button
                                                        class="production-review-item__writer__info__total-star-wrap"
                                                        type="button">
                                                        <span class="production-review-item__writer__info__total-star">
	                                                          ${product.rating }
                                                        </span>
                                                    </button>

                                                    <span class="production-review-item__writer__info__date">${product.regdate }</span>
                                                </div>
                                            </div>
                                            
                                           <button type="button" class="production-review-item__img__btn">
                                           		
                                           		<img src="${product.rating }">
                                                
                                            </button>
                                            <div>${product.title }</div>
                                            <p class="production-review-item__description">
													${product.content }
                                            </p>
                                            </c:forEach> --%>
                                        </article>
                                    </div>
                                </div>
                                
                                
                                <ul class="list-paginator production-review__paginator">
                                 	<li>
                                		<button class="list-paginator__prev" type="button">
                                           	이전
                                       </button>
                                    </li>
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
                                           	다음
                                        </button>
                                    </li>
                                </ul>
                                <!--production-review-feed 끝-->
                            </div>
                        </section>

                        <a id="production-selling-question"></a>
                        <section class="production-selling-section">
                            <header class="production-selling-section__header">
                                <h1 class="production-selling-section__title">문의<span class="count">문의갯수</span></h1>
                                <div class="production-selling-section__right">
                                    <a href="#">문의하기</a>
                                </div>
                            </header>
                            <div class="production-question-feed">
                                <div class="production-question-feed__list">
                                    <article class="production-question-feed__item" data-qna-id="850329">
                                        <header class="production-question-feed__item__header">문의내용
                                            <span class="answered">답변상태</span>
                                        </header>
                                        <p class="production-question-feed__item__author">작성자 닉네임 | 작성일                                   </p>
                                        <div class="production-question-feed__item__question">
                                            <span class="production-question-feed__item__badge">Q&nbsp;</span>
                                            <p class="production-question-feed__item__content">
                                                <span class="production-question-feed__item__content__option-name">문의 제목
                                                    <br>
                                                </span>문의 내용 
                                            </p>
                                        </div>
                                        <div class="production-question-feed__item__answer">
                                            <span class="production-question-feed__item__badge">A&nbsp;</span>
                                            <p class="production-question-feed__item__answer__author">
                                                <span class="author">판매자 상호</span>&nbsp;
                                                <span class="date">답변일자</span>
                                            </p>
                                            <p class="production-question-feed__item__content">답변내용
                                            </p>
                                        </div>
                                    </article>
                                </div>
                                <ul class="list-paginator production-question-feed__paginator">
                                	<li>
                                		<button class="list-paginator__prev" type="button">
                                           	이전
                                       </button>
                                    </li>
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
                                         	다음
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
                                        <td>원 </td>
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
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>교환배송비</th>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>보내실 곳</th>
                                            <td>판매자 상호</td>
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
                                                        <option value="" disabled="">추가선택</option>
                                                        <option value="0">추가선택1</option>
                                                        <option value="1">추가선택2</option>
                                                        
                                                    </select></div>
                                                <div
                                                    class="input-group select-input selling-option-select-input__option selling-option-select-input__option-2">
                                                    <select class="form-control empty">
                                                        <option>색상 선택</option>
                                                    </select></div>
                                                <div
                                                    class="input-group select-input selling-option-select-input__option selling-option-select-input__option-extra">
                                                    <select class="form-control empty">
                                                        <option value="" disabled="">추가상품을 선택해주세요.</option>
                                                        <option value="0">추가상품1</option>
                                                        <option value="1">추가상품2</option>
                                                        
                                                    </select></div>
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

  

    <script>
        var ReviewBtn = document.querySelector(".ReviewBtn");
        var Review = document.querySelector(".review-modal__modal__wrap");
        var reviewModalClose = document.querySelector(".review-modal__close");
        var reactModalCenterDiv = document.querySelector(".react-modal--center-div")
        var body = document.querySelector("body");
        ReviewBtn.onclick = function(){
            var scrollPosition = window.scrollY;
            reactModalCenterDiv.style.top = scrollPosition;
            reactModalCenterDiv.style.display= "block";
            reactModalCenterDiv.style.overflow = "scroll";
            body.style.overflow = "hidden";
        }

      reviewModalClose.onclick = function(){
        reactModalCenterDiv.style.display = "none";
        body.style.overflow = "scroll";
      }
    </script>


	<script>

</script>

</body>
</html>
      