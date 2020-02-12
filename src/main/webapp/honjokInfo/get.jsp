<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<title>Insert title here</title>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>간단한 지도 표시하기</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=n7ip984x7q"></script>
</head>
<body>
	<h1>제목 : ${CommunityVO.title }</h1>
	<p>작성자: ${CommunityVO.id }</p>
	<p>내용 ${CommunityVO.content }</p>
	
<div id="map" style="width:50%;height:400px;"></div>


<form class="update" action="update.jsp">
	<c:set value="${CommunityVO }" var="com" scope="session"></c:set>
	<input type="submit" value="수정">
</form>
<form action="delete.do">
	<input type="hidden" name="com_seq" value="${CommunityVO.com_seq }">
	<input type="submit" value="삭제">
</form>
<form action="select.do">
	<input type="submit" value="목록으로">
</form>







<!-- 네이버 지도 시작 -->
<script>
var HOME_PATH = window.HOME_PATH || '.';
var cityhall = new naver.maps.LatLng(37.5666805, 126.9784147),
    map = new naver.maps.Map('map', {
        center: cityhall,
        zoom: 16
    }),
    marker = new naver.maps.Marker({
        map: map,
        position: cityhall
    });

var contentString = [
        '<div class="iw_inner">',
        '   <h3>서울특별시청</h3>',
        '   <p>서울특별시 중구 태평로1가 31 | 서울특별시 중구 세종대로 110 서울특별시청<br />',
        '       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="55" height="55" alt="서울시청" class="thumb" /><br />',
        '       02-120 | 공공,사회기관 &gt; 특별,광역시청<br />',
        '       <a href="http://www.seoul.go.kr" target="_blank">www.seoul.go.kr/</a>',
        '   </p>',
        '</div>'
    ].join('');

var infowindow = new naver.maps.InfoWindow({
    content: contentString,
    maxWidth: 140,
    backgroundColor: "#eee",
    borderColor: "#2db400",
    borderWidth: 5,
    anchorSize: new naver.maps.Size(30, 30),
    anchorSkew: true,
    anchorColor: "#eee",
    pixelOffset: new naver.maps.Point(20, -20)
});

naver.maps.Event.addListener(marker, "click", function(e) {
    if (infowindow.getMap()) {
        infowindow.close();
    } else {
        infowindow.open(map, marker);
    }
    alert(e.coord.lat() + ', ' + e.coord.lng());
});

</script>
<!-- 네이버 지도 끝 -->



</body>

</html>