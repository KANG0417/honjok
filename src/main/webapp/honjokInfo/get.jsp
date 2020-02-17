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
    <!-- 다음 지도  -->
    <script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69f7448811fd57d29b7398b4045f65df&libraries=services"></script>
</head>
<body>
   <h1>제목 : ${CommunityVO.title }</h1>
   <p>작성자: ${CommunityVO.id }</p>
   <p>${CommunityVO.content }</p>
   
<div id="map" style="width:100%;height:350px;"></div>

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



   
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('서울 중구 을지로1가 8', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>




</body>

</html>