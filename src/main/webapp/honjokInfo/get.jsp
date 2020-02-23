<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<title>Insert title here</title>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>간단한 지도 표시하기</title>
<!-- 다음 지도  -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69f7448811fd57d29b7398b4045f65df&libraries=services"></script>
</head>
<body>

	<%-- <h1>제목 : ${CommInfoVO.title }</h1> --%>

	<p>닉네임:${CommInfoVO.nick_name }님의 혼밥리뷰</p>
	
	<p>메장 대표번호</p>
	<c:forEach var="Upload" items="${UploadList }">
			<a href="get.do?com_seq=${CommunityVO.com_seq }"><img width="100"
				height="100" src="/app/resources/img/menu/${Upload.up_img_name }"></a>
	</c:forEach>
	<hr>
	<p>매장위치:${CommInfoVO.adr }</p>
	<p>매장 업종:${CommInfoVO.category_name }</p>
	<hr>
	<h1>글번호 : ${CommInfoVO.com_seq }</h1>
	<p>작성자: ${CommInfoVO.id }</p>
	<p>별점:${CommInfoVO.sum_star }</p>
	<div id="map" style="width: 100%; height: 350px;"></div>
	<hr>
		<p>내용:${CommInfoVO.content }</p>
		
		<span>찜하기</span><span>좋아요</span><span>공유하기</span>
	<p>메뉴${CommInfoVO.menu }</p>
	<p>ID:${CommInfoVO.id }</p>
	<p>타입:${CommInfoVO.type }</p>
	<p>조회수:${CommInfoVO.hit }</p>
	<p>좋아요;${CommInfoVO.likes }</p>
	<p>작성일:${CommInfoVO.regdate }</p>
	<p>매장번호:${CommInfoVO.tel }</p>
	<p>매장이름:${CommInfoVO.place_name }</p>
	
	<h2>혼밥리뷰</h2>
	<a>전체</a><a>최신순</a><a>좋아요순</a>
	
	
	인생맛집
	
	
	<form>
	
		<div contentEditable="true" style="border: 1px red solid; width:100%; height:100px;">
			안녕하세요
			<img src="/app/resources/img/menu/1000000553.jpg">	
		</div>
		
		
		
	</form>
	
	
	
	

	<form class="update" action="update.jsp">
		<c:set value="${CommInfoVO }" var="com" scope="session"></c:set>
		<input type="submit" value="수정">
	</form>
	<form action="delete.do">
		<input type="hidden" name="com_seq" value="${CommInfoVO.com_seq }">
		<input type="submit" value="삭제">
	</form>
	<form action="select.do">
		<input type="submit" value="목록으로">
	</form>




	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder
				.addressSearch(
						'${CommInfoVO.adr}',
						function(result, status) {

							// 정상적으로 검색이 완료됐으면 
							if (status === kakao.maps.services.Status.OK) {

								var coords = new kakao.maps.LatLng(result[0].y,
										result[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new kakao.maps.Marker({
									map : map,
									position : coords
								});

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new kakao.maps.InfoWindow(
										{
											content : '<div style="width:150px;text-align:center;padding:6px 0;">${CommInfoVO.place_name }</div>'
										});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});
	</script>




</body>

</html>