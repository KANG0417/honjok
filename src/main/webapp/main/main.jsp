<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">   

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>    
<script src="https://unpkg.com/swiper/js/swiper.min.js"></script>    
<title>ONE-MARKERT</title>
</head>
<style>
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);


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
    font-family: 'Noto Sans KR", sans-serif';
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
    color: #333;
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
    background: url('/image/logo3.png') no-repeat 0,0px;
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
    font-family: 'Noto Sans KR';
    font-weight: 700;
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
    background: url('/image/ico_comm_sp.png') no-repeat 0 -129px;
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
    background: url('/image/ico_comm_sp.png') no-repeat -55px -129px;
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
    
#wrap.main #contents > div::after {
    content: '';
    display: block;
    clear: both;
}    
#wrap.main #contents > div {
    position: relative;
    display: block;
    margin: 0 auto;
}    
#wrap.main #mainslider {
    width: auto !important;
    height: 699px;
    padding: 0 !important;
    z-index: 100;
}
.swiper-wrapper {
    position: relative;
    z-index: 1;
    display: flex;
    box-sizing: content-box;
    transition-property: transform,-webkit-transform;
}    
#wrap.main #contents > div h2 {
    display: block;
    margin-bottom: 40px;
    font-size: 40px;
    color: #222;
    font-family: 'Noto Sans KR';
    font-weight: 500;
}


#wrap.main #contents > div {
    position: relative;
    display: block;
    padding: 80px 0 0;
    width: 1140px;
    margin: 0 auto;
}
#wrap.main .bestseller_slider {
    position: relative;
}
#wrap.main .bestseller_slider .bsprd-prev {
    position: absolute;
    top: 50%;
    left: -30px;
    margin-top: -44px;
    width: 17px;
    height: 32px;
    background: url('/image/ico_comm_sp.png') no-repeat -169px 0;
        background-size: auto;
    background-size: 300px 300px;
    z-index: 2;
}    
#wrap.main .bestseller_slider .bsprd-next {
    position: absolute;
    top: 50%;
    right: -30px;
    margin-top: -44px;
    width: 17px;
    height: 32px;
    background: url('/image/ico_comm_sp.png') no-repeat -191px 0;
        background-size: auto;
    background-size: 300px 300px;
    z-index: 2;
}
#wrap.main .bestseller_slider #bsprd {
    width: auto !important;
    height: 490px;
    padding: 0 !important;
}  
#wrap.main .prdlist, #wrap.main .prdlist a, #wrap.main .prdlist span {
    display: block;
}
#wrap.main .prdlist {
    position: relative;
}
#wrap.main .prdlist span.ico {
    position: absolute;
    top: 25px;
    left: 14px;
    width: 40px;
    z-index: 1;
}
#wrap.main .prdlist span.photo {
    width: 100%;
    height: 260px;
}
    
#wrap.main .prdlist span.photo img {
    width: 210px;
    height: 210px;
    position: relative;
    top: 50%;
    transform: translateY(-50%);
}
    
input, textarea, select, img {
    border: 0;
    border-radius: 0;
    vertical-align: middle;
    -moz-appearance: none;
}
    
#wrap.main .prdlist span.hash {
    color: #959595;
    font-size: 14px;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
} 
#wrap.main .prdlist span.tit {
    font-size: 16px;
    margin: 12px 0 10px;
    overflow: hidden;
    max-height: 67px;
    line-height: 1.2;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    word-wrap: break-word;
    padding: 0 20px;
}    
#wrap.main .prdlist span.tit strong {
    display: block;
    font-size: 18px;
    margin-bottom: 8px;
    font-family: 'notokr-medium';
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
}   
#wrap.main .prdlist span.star {
    font-size: 0;
}    
#wrap.main .prdlist span.star .star-rating {
    vertical-align: middle;
}
    
.star-rating.small {
    width: 84px;
    height: 15px;
    background: url('/image/star_rating.png') no-repeat 0 0px;
        background-size: auto;
    background-size: 84px;
}
.star-rating {
    position: relative;
    display: inline-block;
}   
#wrap.main .prdlist span.price {
    margin: 10px 0 16px;
    font-size: 22px;
    color: #222;
    font-family: 'locator-medium';
}    
#wrap.main .prdlist span.star em {
    display: inline-block;
    vertical-align: middle;
    margin-left: 4px;
    color: #8f8f8f;
    font-size: 14px;
    font-family: 'locator-regular';
}    
#wrap.main .prdlist span.price i {
    font-size: 16px;
    font-style: normal;
    font-family: 'notokr-demilight';
}    
#wrap.main .prdlist .over {
    opacity: 0;
    position: absolute;
    top: 100px;
    left: 50%;
    margin-left: -60px;
    overflow: hidden;
} 
#wrap.main .prdlist .over button:first-child {
    background: url('/image/bg_product_sp.png') -380px 0 no-repeat;
    margin-left: 0;
}    
wrap.main .prdlist .over button {
    display: block;
    width: 56px;
    height: 56px;
    text-indent: -9999px;
    float: left;  
}
 #wrap.main .prdlist .over button {
    display: block;
    width: 56px;
    height: 56px;
    background: url('/image/bg_product_sp.png') -444px 0 no-repeat;
    text-indent: -9999px;
    float: left;
    margin-left: 8px;
}

#wrap.main .prdlist:hover > a::before {

    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 440px;
    border: 1px solid #009ee3;
    box-sizing: border-box;
}    
#wrap.main .prdlist:hover > a + .over {
    opacity: 1;
    transition: all .5s ease;
}    
#wrap.main .prdlist .over button:hover {
    border-radius: 28px;
    -webkit-box-shadow: inset 0px 0px 35px rgba(0, 131, 188, 0.3);
}   
#wrap.main #contents > div .left {
    position: relative;
    float: left;
}
#wrap.main #contents > div .right {
    position: relative;
    float: right;
}  
#wrap.main .onlyone_hotdeal {
    padding: 80px 0 !important;
}    

#wrap.main .onlyone_hotdeal h2 {
    background: url('/image/bg_h2line.png') repeat-x 0 11px;
}
#wrap.main #contents > div h2 i {
    display: inline-block;
    padding: 0 20px;
    font-style: normal;
    background: #fff;
    font-family: 'Noto Sans KR';
}    
#wrap.main .onlyone_hotdeal .prdlist {
    float: left;
    width: 345px;
}  
#wrap.main .prdlist span.price {
    margin: 10px 0 16px;
    font-size: 22px;
    color: #222;
    font-family: 'locator-medium';
}   
#wrap.main .prdlist span.price .sale {
    margin-left: 5px;
    font-size: 16px;
    vertical-align: middle;
    display: inline-block;
    color: #fa2b49;
    font-family: 'locator-medium';
}    
#wrap.main .prdlist span.price del {
    vertical-align: middle;
    display: inline-block;
    font-size: 16px;
    color: #8f8f8f;
    font-family: 'locator-regular';
}    
#wrap.main .prdlist span.price del > em {
    font-size: 14px;
    font-family: 'notokr-demilight';
}    
#wrap.main .prdlist span.gift i {
    display: inline-block;
    border: 1px solid #fa2b49;
    margin: 0 1.5px;
    width: auto;
    min-width: 22px;
    padding: 0 8px;
    height: 16px;
    line-height: 16px;
    font-size: 12px;
    font-family: 'notokr-medium';
    text-align: center;
}
#wrap.main .prdlist span.gift i.ico_sale {
    border-color: #fa2b49;
    color: #fa2b49;
}
#wrap.main #contents > div .right {
    position: relative;
    float: right;
}    
#wrap.main .skinsolution_warp {
    width: auto !important;
    background: #f7f7f7;
}    
#wrap.main .skinsolution_warp .skinsolution_slider {
    position: relative;
    display: block;
    padding: 0 0 60px;
    width: 1170px;
    margin: 0 auto;
    text-align: center;
}    
#wrap.main .skinsolution_warp .skinsolution_slider #skinprd {
    width: auto !important;
    height: 478px;
    padding: 0 !important;
}
#wrap.main .skinsolution_warp .skinsolution_slider #skinprd a {
    position: relative;
    display: block;
    height: 400px;
    overflow: hidden;
}    
#wrap.main .skinsolution_warp .skinsolution_slider #skinprd a > span {
    position: absolute;
    top: 0;
    left: 0;
    opacity: 0;
    width: 100%;
    height: 300px;
    background-position: 50% 0;
    background-repeat: no-repeat;
}    
#wrap.main .skinsolution_warp .skinsolution_slider #skinprd a > i {
    position: absolute;
    bottom: -100px;
    left: 0;
    opacity: 0;
    width: 100%;
    height: 100px;
    background-position: 50% 100%;
    background-repeat: no-repeat;
}   
#wrap.main .skinsolution_warp .skinsolution_slider #skinprd a > em {
    position: absolute;
    top: 0;
    left: 0;
    opacity: 0;
    width: 100%;
    height: 100%;
    background-position: 50% 100%;
    background-repeat: no-repeat;
}    
#wrap.main .skinsolution_warp .skinsolution_slider .skinprd-prev {
    position: absolute;
    top: 50%;
    left: -20px;
    margin-top: -90px;
    width: 52px;
    height: 52px;
    background: url('/image/ico_comm_sp.png') no-repeat -110px -129px;
        background-size: auto;
    background-size: 300px 300px;
    z-index: 2;    
}
#wrap.main .skinsolution_warp .skinsolution_slider .skinprd-next {
    position: absolute;
    top: 50%;
    right: -20px;
    margin-top: -90px;
    width: 52px;
    height: 52px;
    background: url('/image/ico_comm_sp.png') no-repeat -167px -129px;
        background-size: auto;
    background-size: 300px 300px;
    z-index: 2;
}  

#wrap.main .membership .left::before {
    content: '';
    position: absolute;
    top: 0;
    left: 50%;
    margin-left: -35px;
    width: 69px;
    height: 69px;
    background: url('/image/ico_comm_sp.png') no-repeat 100% -147px;
        background-size: auto;
    background-size: 300px 300px;
}
#wrap.main .membership .left {
    margin-top: 8px;
}    
#wrap.main .membership .left h2 {
    padding-top: 85px;
    font-size: 22px !important;
    margin-bottom: 0 !important;
    font-family: 'locator-medium' !important;
}    

#wrap.main .membership .left h2 em::before {

    content: '';
    position: absolute;
    top: 3px;
    right: 0;
    width: 15px;
    height: 10px;
    background: url('/image/ico_comm_sp.png') no-repeat -268px -128px;
        background-size: auto;
    background-size: 300px 300px;

}    
#wrap.main #contents > div h2 em {
    display: block;
    margin-top: 5px;
    font-size: 16px;
    color: #959595;
    font-family: 'Noto Sans KR';
    font-weight: 300;
    margin-top: 15px;
}    
    
    
/*멤버쉽 right CSS*/    
#wrap.main .membership .left h2 em {
    position: relative;
    width: 160px;
    text-align: left;
    font-size: 16px;
    padding-right: 10px;
    margin: 0 auto;
        margin-top: 0px;
    letter-spacing: -0.7px;
}
#wrap.main .membership .right ul {
    margin: 3px -50px 0 0;
}    
#wrap.main .membership .right li {
    float: left;
    width: 240px;
    height: 140px;
    border-left: #e9e9e9 solid 1px;
}    
#wrap.main .membership .right li:nth-child(1) a::after {
    background-image: url('/image/ico_mem1.png');
}    
#wrap.main .membership .right li:first-child {
    border-left: 0;
}    
#wrap.main .membership .right li a::after {
    content: '';
    position: absolute;
    top: 50%;
    left: 50%;
    margin: -55px 0 0 -32px;
    width: 64px;
    height: 60px;
    background: url('/image/ico_mem1.png') no-repeat 50%;
    background-size: 100%;
}    

#wrap.main .membership .right li a {
    position: relative;
    display: block;
    padding: 90px 0 0;
}    
#wrap.main .membership .right li a strong {
    display: block;
    color: #222;
    font-size: 18px;
    margin-bottom: 10px;
}    
#wrap.main .membership .right li a span {
    color: #8f8f8f;
    font-size: 14px;
}    
#wrap.main .membership .right li:nth-child(2) a::after {
    background-image: url('/image/ico_mem2.png');
}    
#wrap.main .membership .right li:nth-child(3) a::after {
    background-image: url('/imageico_mem3.png');
}    

/* movie css */
#wrap.main .movie_warp {
    width: auto !important;
    height: 800px;
    background: url('/image/bg_movielink_200207.png') no-repeat 50% 100%;
}    
#wrap.main .movie_warp .movie {
    position: relative;
    display: block;
    padding: 0 0 60px;
    width: 1140px;
    margin: 0 auto;
    text-align: center;
}    
#wrap.main .movie_warp .movie h2 {
    height: 100px;
    margin-bottom: 0 !important;
    color: #fff !important;
}    
#wrap.main .movie_warp .movie h2 em {
    color: #fff !important;
}    
#wrap.main .movie_warp .movie #youtube {
    position: relative;
    height: 0;
    padding-bottom: 52.5%;
}    
#wrap.main .movie_warp .movie #youtube iframe, #wrap.main .movie_warp .movie #youtube div, #wrap.main .movie_warp .movie #youtube a {
    position: absolute;
    width: 100%;
    height: 100%;
    left: 0;
}    
/* 리뷰 CSS */
#wrap.main .realreview_warp {
    width: auto !important;
    padding: 0 !important;
    background: #dfeff8;
}    

#wrap.main .realreview_warp .realreview {
    position: relative;
    width: 1140px;
    margin: 0 auto;
    padding: 60px 0 0;
}   
#wrap.main .realreview_warp .realreview_slider {
    position: relative;
}
#wrap.main .realreview_warp .realreview_slider {
    display: block;
    padding: 0;
    width: 1140px;
    margin: 0 auto;
    text-align: center;
}    
#wrap.main .realreview_warp .realreview_slider #realprd {
    width: auto !important;
    height: 540px;
    padding: 0 !important;
}
#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide {
    height: 422px;
    text-align: center;
}

#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide a {
    display: inline-block;
    width: 210px;
    padding: 15px 30px;
    text-align: left;
    background: #fff;
    height: 400px;
    border: #fff solid 1px;
}
#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide a > span.img {
    margin: 0 -15px;
}
#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide a > span {
    display: block;
    pointer-events: none;
    word-break: break-word;
}
#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide a > span.img img {
    width: 240px;
    height: 160px;
}    
#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide a > span.hash {
    color: #959595;
    margin: 25px 0 12px;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
}
#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide a > span {
    display: block;
    pointer-events: none;
    word-break: break-word;
}

요소 {

}
#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide a > span.tit {
    font-size: 18px;
    margin-bottom: 17px;
    line-height: 24px;
    font-family: 'notokr-demilight';
    color: #222;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
}   
#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide a > span {
    display: block;
    pointer-events: none;
    word-break: break-word;
}
#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide a > span.tit strong {
    display: block;
    font-family: 'notokr-medium';
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
}   
#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide a > span.reply {
    color: #8f8f8f;
    line-height: 20px;
    height: 60px;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
    word-wrap: break-word;
    overflow: hidden;
}    
#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide a > span.data::after {
    content: '';
    display: block;
    clear: both;
}
#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide a > span.data {
    margin-top: 22px;
    padding-top: 18px;
    color: #8f8f8f;
    font-family: 'locator-regular';
    border-top: #e9e9e9 solid 1px;
}    
#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide a > span {
    display: block;
    pointer-events: none;
    word-break: break-word;
}    
#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide a > span.data .userNick {
    float: left;
} 
#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide a > span.data {
    color: #8f8f8f;
    font-family: 'locator-regular';
}    
#wrap.main .realreview_warp .realreview_slider #realprd .swiper-slide a > span.data .star-rating {
    float: right;
}  
#wrap.main .realreview_warp .realreview_slider .realprd-prev {
    position: absolute;
    top: 50%;
    left: -30px;
    margin-top: -66px;
    width: 17px;
    height: 32px;
    background: url('/image/ico_comm_sp.png') no-repeat -169px 0;
        background-size: auto;
    background-size: 300px 300px;
    z-index: 2;
}    
#wrap.main .realreview_warp .realreview_slider .realprd-next {
    position: absolute;
    top: 50%;
    right: -30px;
    margin-top: -66px;
    width: 17px;
    height: 32px;
    background: url('/image/ico_comm_sp.png') no-repeat -191px 0;
        background-size: auto;
    background-size: 300px 300px;
    z-index: 2;
}
/*인기사진 CSS*/
    
    
#wrap.main .instagram .best {
    font-size: 20px;
    font-weight: 800;
    margin-bottom: 20px;  
    text-align: left
}  
    
#wrap.main .instagram ul li:first-child {
    margin-left: 0;
}
#wrap.main .instagram ul li {
    float: left;
    margin-left: 20px;
}
#wrap.main .instagram ul li a {
    position: relative;
    display: block;
    width: 270px;
    height: 270px;
}


#wrap.main .instagram ul li a .image-box {
    overflow: hidden;
    border-radius: 8px;
}       
    
#wrap.main .instagram ul li a .image-box img {
    width: 270px;
    height: 270px;
    border-radius: 8px;
    transform: scale(1);
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -ms-transform: scale(1);
    -o-transform: scale(1);
    transition: all 0.3s ease-in-out;
    overflow: hidden;
}   
#wrap.main .instagram ul li a .image-box img:hover {
    width: 270px;
    height: 270px;
    border-radius: 8px;
    transform: scale(1.2);
     -webkit-transform: scale(1.2);
    -moz-transform: scale(1.2);
    -ms-transform: scale(1.2);
    -o-transform: scale(1.2);
    overflow: hidden;
}       

    
    
#wrap.main .instagram ul li a .subcontent > span{    
    display: block;
    pointer-events: none;
    word-break: break-word;
    text-align: left;
 }
#wrap.main .instagram ul li a .subcontent > span.hash{
    color: #959595;
    margin: 10px 0 8px;
    font-size: 12px; 
}
#wrap.main .instagram ul li a .subcontent > span.tit {
    font-size: 16px;
    font-weight: 800;  
} 
#wrap.main .instagram ul li a .subcontent > span.userNick {
    margin-top: 10px;
    font-size: 14px;
} 
#wrap.main .instagram ul li a .subcontent > span.views {
    float: right;
    margin-top: -11px;
    font-size: 14px;
}         
#wrap.main .underline{
    border-bottom: 1px solid #d9dadb;
    margin: 20px 0 20px 0;
    display: block;
}      

    
/*footer CSS*/
#footer {
    position: relative;
    left: 0;
    bottom: 0;
    z-index: 20;
    width: 100%;
    height: 249px;
    margin-bottom: -228px;
    background: #fff;
    border-top: #333 solid 1px;
    -webkit-box-sizing: border-box;
}    
#footer .foot_nav {
    display: block;
    border-bottom: #e9e9e9 solid 1px;
}
#footer .foot_nav > nav::after {
    content: '';
    display: block;
    clear: both;
}    
#footer .foot_nav > nav {
    width: 1140px;
    height: 58px;
    margin: 0 auto;
}  
#footer .foot_nav > nav > ul {
    letter-spacing: -0.45px;
}
#footer .foot_nav > nav > ul.left > li:first-child {
    margin-left: 0;
}
#footer .foot_nav > nav > ul > li {
    position: relative;
    float: left;
    font-size: 15px;
    margin-left: 20px;
}
#footer .foot_nav > nav > ul > li > a {
    position: relative;
    display: block;
    color: #222;
    line-height: 58px;
}
#footer .foot_nav > nav > ul.left > li:nth-child(2)::before, #footer .foot_nav > nav > ul.left > li:nth-child(3)::before, #footer .foot_nav > nav > ul.left > li:nth-child(4)::before {
    content: '';
    display: block;
    position: absolute;
    left: -10px;
    top: 21px;
    width: 1px;
    height: 15px;
    background: #e9e9e9;
}    
#footer .foot_nav > nav > ul.left > li:first-child + li + li a {
    color: #009ee3;
}    
#footer .foot_nav > nav > ul > li.facebook a::after {
    position: absolute;
    top: 21px;
    left: 50%;
    margin-left: -4px;
    content: '';
    width: 7px;
    height: 15px;
    background: url('/image/bg_button.png') no-repeat -171px 0;
        background-size: auto;
    background-size: 500px 500px;
}    
#footer .foot_nav > nav > ul > li.facebook a {
    width: 35px;
    height: 58px;
}
#footer .foot_nav > nav > ul > li.naver_post {
    margin-left: 0;
}   
#footer .foot_nav > nav > ul > li.naver_post a::after {
    position: absolute;
    top: 21px;
    left: 50%;
    margin-left: -8px;
    content: '';
    width: 15px;
    height: 15px;
    background: url('/image/bg_button.png') no-repeat -330px 0;
        background-size: auto;
    background-size: 500px 500px;
}    

#footer .foot_nav > nav > ul > li.naver_post a::after {
    position: absolute;
    top: 21px;
    left: 50%;
    margin-left: -8px;
    content: '';
    width: 15px;
    height: 15px;
    background: url('/images/common/bg_button.png?1') no-repeat -330px 0;
        background-size: auto;
    background-size: 500px 500px;
}

#footer .foot_nav > nav > ul > li.naver_post a {
    width: 25px;
    height: 58px;
}

#footer .foot_nav > nav > ul.left > li:nth-child(4)::after, #footer .foot_nav > nav > ul > li.facebook::after, #footer .foot_nav > nav > ul > li.instagram::after, #footer .foot_nav > nav > ul > li.youtube::after {
    display: none;
}   
#footer .foot_nav > nav > ul > li.youtube {
    margin-left: 0;
}
#footer .foot_nav > nav > ul > li.youtube a::after {
    position: absolute;
    top: 21px;
    left: 50%;
    margin-left: -9px;
    content: '';
    width: 19px;
    height: 15px;
    background: url('/image/bg_button.png') no-repeat -306px 0;
        background-size: auto;
    background-size: 500px 500px;
}    
#footer .foot_nav > nav > ul > li.youtube a {
    width: 46px;
    height: 58px;
}
#footer .foot_nav > nav > ul.right {
    float: right;
    letter-spacing: 0;
}    
#footer .foot_nav > nav > ul.right li:first-child {
    font-family: 'locator-medium';
}    
#footer .foot_nav > nav > ul.right li:first-child a::after {
    position: absolute;
    top: 24px;
    right: 0;
    content: '';
    width: 4px;
    height: 7px;
    background: url('/image/ico_comm_sp.png') no-repeat -19px 0;
        background-size: auto;
    background-size: 300px 300px;
}  
#footer .foot_nav > nav > ul.right li:first-child a {
    font-size: 13px;
    color: #666;
    padding-right: 14px;
}
#footer .foot_contents {
    position: relative;
    width: 1140px;
    margin: 29px auto 0;
    letter-spacing: -0.35px;
    -webkit-box-sizing: border-box;
}
#footer .foot_contents .foot_link::after {
    content: '';
    display: block;
    clear: both;
}
#footer .foot_contents .foot_link li:nth-child(1)::after {
    content: '';
    display: block;
    position: absolute;
    right: -9px;
    top: 2px;
    width: 1px;
    height: 10px;
    background: #d9d9d9;
}  
#footer .foot_contents .foot_link li {
    position: relative;
    float: left;
    height: 14px;
    line-height: 14px;
    color: #222;
    font-size: 13px;
    margin-right: 16px;
}    
#footer .foot_contents .foot_cs {
    margin-top: 4px;
}    
#footer .foot_contents .foot_cs li {
    padding-left: 8px;
    text-indent: -8px;
    font-size: 13px;
    line-height: 22px;
    font-style: normal;
    color: #222;
}    
#footer .foot_contents .foot_cs li.bull::before {
    content: '';
    display: inline-block;
    width: 3px;
    height: 3px;
    margin-right: 5px;
    border-radius: 50%;
    background-color: #8f8f8f;
    vertical-align: middle;
}    

#footer .foot_contents .foot_cs li.bull::before {

    content: '';
    display: inline-block;
    width: 3px;
    height: 3px;
    margin-right: 5px;
    border-radius: 50%;
    background-color: #8f8f8f;
    vertical-align: middle;

}
#footer .foot_contents .foot_cs li.bull {
    color: #8f8f8f;
}    
#footer .foot_contents address::after {
    content: '';
    display: block;
    clear: both;
}
#footer .foot_contents address {
    width: 532px;
    padding-left: 30px;
    border-left: 1px solid #e9e9e9;
    font-size: 13px;
    line-height: 22px;
    font-style: normal;
    color: #222;
    position: absolute;
    top: -4px;
    right: 0;
}  
#footer .foot_contents address span {
    position: relative;
    padding-right: 8px;
    margin-right: 7px;
    display: block;
}    
#footer .foot_contents address span:nth-child(2)::after {
    content: '';
    display: block;
    position: absolute;
    right: 0;
    top: 6px;
    width: 1px;
    height: 11px;
    background: #cdcdcd;
}    
#footer .foot_contents address span:nth-child(2), #footer 
.foot_contents address span:nth-child(3) {
    display: inline-block;
}    
#footer .foot_contents address .escrow {
    border: 0;
    background: none;
    color: #8f8f8f;
    text-align: left;
    line-height: 22px;
    font-size: 13px;
    white-space: normal;
    letter-spacing: -0.35px;
}
#footer .foot_contents small {
    display: block;
    margin-top: 19px;
    font-family: 'locator-regular';
    font-size: 13px;
    color: #666;
    letter-spacing: 0;
}   
#footer .foot_contents small span::after {
    content: '';
    display: block;
    position: absolute;
    right: 0;
    top: 3px;
    width: 1px;
    height: 9px;
    background: #e9e9e9;
}    
#footer .foot_contents small span::before {
    content: '';
    display: block;
    position: absolute;
    left: 0;
    top: 2px;
    width: 14px;
    height: 11px;
    background: url('/image/ico_comm_sp.png') no-repeat 0 0;
        background-size: auto;
    background-size: 300px 300px;
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
                            <a href="login.jsp">로그인</a>
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
                    <div class="hashtag" style="display: block-inline; width: 308px; height: 20px; overflow: hidden;">
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
                    <div class="swiper-wrapper" style="width: 10080px; height: 699px; transform: translate(-1260px, 0px, 0px);                        transition-duration: 0.3s;">
                        <div class="swiper-slide swiper-slide-duplicate" style="width: 1140px; height: 699px;">
                            <a class="mainView" href="javascript:void(0);" target="_self">
                                <div class="img_banner" style="background-image:url(/upload/20200306_1827006_23.png);">
                                    <span class="hide">스팟스캔-바로가기</span>
                                </div>
                            </a>
                        </div>
                        <div class="swiper-slide swiper-slide-visible swiper-slide-active" style="width: 1140px; height: 699px;">
                            <a class="mainView" href="javascript:void(0);" target="_self">
                                <div class="img_banner" style="background-image:url(/upload/20200320_0953017_80.png);">
                                    <span class="hide">스팟스캔-바로가기</span>
                                </div>
                            </a>
                        </div>
                        <div class="swiper-slide swiper-slide-visible swiper-slide-active" style="width: 1140px; height: 699px;">
                            <a class="mainView" href="javascript:void(0);" target="_self">
                                <div class="img_banner" style="background-image:url(/upload/20200225_1840027_154.png);">
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
                            <div id="bestList" class="swiper-wrapper" style="width: 5700px;                 height:490px; transform: translate3d(0px, 0px, 0px);
                                    transition-duration: 0.3s;">
                                <div class="swiper-slide prdlist swiper-slide-duplicate swiper-slide-visible swiper-slide-active" style="width:285px; height: 490px;">
                                    <a href="#">
                                        <span class="ico"></span>
                                        <span class="photo">
                                            <img src="/upload/20180820_1404029_100_210x210.png" alt="상품명입력">
                                        </span>
                                        <span class="hash">#진정미스트</span>
                                        <span class="tit">
                                            <strong>오 떼르밀(상품제목)</strong>
                                            온천수 미스트 [300mL]
                                        </span>
                                        <span class="star">
                                            <div class="star-rating small">
                                                <span class="c50">
                                                    <em class="hide">별점 5개</em>
                                                </span>
                                            </div>
                                            <em>(264)</em>
                                        </span>
                                        <span class="price">
                                          22,000
                                            <i>원</i>    
                                        </span>
                                    </a>
                                    <div class="over">
                                        <button class="detailview" onclick="prdtViewLink();">자세히보기</button>
                                        <button class="addCart basket">장바구니 담기</button>
                                    </div>
                                </div>
                            </div>                                         
                        </div>
                    </div>
                </div>
                <div class="linkbanner">
                    <a class="left" href="#" >
                        <img src="/image/aaf3ce95f776276b0e5d43ebe795978d.png" style="width: 560px; height: 180px;"alt=""/>
                    </a>
                    <a class="right" href="#">
                        <img src="/image/unnamed.jpg" style="width: 560px; height: 180px;"alt=""/>
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
                                    <img src="/image/20200319_1531022_064_210x210.png" alt="미세먼지out"/>
                                </span>
                                <span class="hash">#미세먼지 OUT</span>
                                <span class="tit">
                                    <strong>똘러리앙</strong>
                                    미세먼지 OUT 3STEP 세트
                                </span>
                                <span CLASS="star">
                                    <div class="star-rating small">
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
                                    <img src="/image/20200319_1531022_064_210x210.png" alt="미세먼지out"/>
                                </span>
                                <span class="hash">#미세먼지 OUT</span>
                                <span class="tit">
                                    <strong>똘러리앙</strong>
                                    미세먼지 OUT 3STEP 세트
                                </span>
                                <span CLASS="star">
                                    <div class="star-rating small">
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
                                    <img src="/image/20200319_1531022_064_210x210.png" alt="미세먼지out"/>
                                </span>
                                <span class="hash">#미세먼지 OUT</span>
                                <span class="tit">
                                    <strong>똘러리앙</strong>
                                    미세먼지 OUT 3STEP 세트
                                </span>
                                <span CLASS="star">
                                    <div class="star-rating small">
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
                                        <a href="#"?>
                                            <img src="/image/1.png" alt="" style= "width:366px; height: 400px;">
                                            <span style="background-image:url(/image/2.png)"></span>
                                            <i style="background-image: url(/image/2.png)"></i>
                                            <em style="background-image: url(image/2.png)"></em>
                                        </a>
                                    </div>
                                    <div class="swiper-slide swiper-slide-duplicate" style="width: 390px; height: 478px;">
                                        <a href="#"?>
                                            <img src="/image/1.png" alt="" style= "width:366px; height: 400px;">
                                            <span style="background-image:url(/image/2.png) "></span>
                                            <i style="background-image: url(/image/2.png)"></i>
                                            <em style="background-image: url(image/2.png)"></em>
                                        </a>
                                    </div>
                                    <div class="swiper-slide swiper-slide-duplicate" style="width: 390px; height: 478px;">
                                        <a href="#"?>
                                            <img src="/image/1.png" alt="" style= "width:366px; height: 400px;">
                                            <span style="background-image:url(/image/2.png) "></span>
                                            <i style="background-image: url(/image/2.png)"></i>
                                            <em style="background-image: url(image/2.png)"></em>
                                        </a>
                                    </div>
                                    <div class="swiper-slide swiper-slide-duplicate" style="width: 390px; height: 478px;">
                                        <a href="#"?>
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
                                LA ROCHE-POSAY 
                                <em>라로슈포제 멤버십 혜택</em>
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
                            LA ROCHE-POSAY MOVIE
                            <em>영상으로 만나는 라로슈포제</em>
                        </h2>
                        <div id="youtube">
                            <a href="javascript:PlayYoutube();">
                                <img src="/image/maxresdefault.png" alt="영상실행">
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
                            <em>라로슈포제 제품 사용 후 남겨준 리얼 생생 리뷰</em>
                        </h2>
                        <div class="realreview_slider">
                            <div id="realprd" class="swiper-container">
                                <div class="swiper-wrapper" style="width: 4560px; height: 540px; transform: translate3d(-2280px, 0px, 0px); transition-duration: 0.3s;">
                                    <div class="swiper-slide swiper-slice-duplicate" style="285px; height:540px">
                                        <a class="layer-pop" href="#">
                                            <span class="img">
                                                <img src="image/1.png" alt="">
                                            </span>
                                            <span class="hash">
                                                #저자극각질케어토너
                                            </span>
                                            <span class="tit">
                                                <strong>에빠끌라</strong>
                                                [대놓고1위]리밸런싱 로션세트
                                            </span>
                                            <span class="reply">
                                                제 피부에 딱 맞아요
                                            </span>
                                            <span class="data">
                                                <span class="userNick">강지향씨</span>
                                                <div class="star-rating small">
                                                    <span class="c50">
                                                        <em class="hide">별점 5개</em>
                                                    </span>
                                                </div>
                                            </span>
                                        </a>
                                    </div>
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
                        <em>이번주 인기 게시글은?</em>
                    </h2>
                    <div class="best">
                        이번주 베스트 인테리어는?
                    </div>
                    <ul>
                        <li>
                            <a href="https://www.instagram.com/p/B9GPIucIa8A/">
                                <div class=image-box>
                                    <img src="image/%EA%B0%80%EA%B5%AC1.jpg" alt="">
                                </div>
                                <div class="subcontent"> 
                                    <span class="hash">#우리집 자랑</span>
                                    <span class="tit">우리집 자랑해볼게요</span>
                                    <span class="userNick">강지향씨</span>
                                    <span class="views">12440명이 봤어요</span>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="underline"></div>
                <div class="instagram">
                    <div class="best">
                        이번주 베스트 혼족정보는?
                    </div>
                    <ul>
                        <li>
                            <a href="https://www.instagram.com/p/B9GPIucIa8A/">
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
                        </li>
                    </ul>
                </div>
                <div class="underline"></div>
                <div class="instagram">
                    <div class="best">
                        이번주 베스트 레시피는?
                    </div>
                    <ul>
                        <li>
                            <a href="https://www.instagram.com/p/B9GPIucIa8A/">
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
                        </li>
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
</script>
</html>