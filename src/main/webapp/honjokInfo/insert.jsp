<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69f7448811fd57d29b7398b4045f65df&libraries=services"></script>
	
<!-- include summernote css/js -->
<!-- 이 css와 js는 로컬에 있는 것들을 링크시킨 것이다. -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.js"></script>
<title>혼족정보 게시판</title>
<style>
.wrap {
	padding: 20px 50px;
}

.select {
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
	width: 200px; /* 원하는 너비설정 */
	padding: .8em .5em; /* 여백으로 높이 설정 */
	font-family: inherit; /* 폰트 상속 */
	border: 1px solid #999;
	border-radius: 0px; /* iOS 둥근모서리 제거 */
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
	margin-bottom: 20px;
}


  input[type="button"],input[type="file"]{
  background-color:#3bb3e0;
	padding:10px;
	position:relative;
	font-family: 'Open Sans', sans-serif;
	font-size:12px;
	text-decoration:none;
	color:#fff;
	border: solid 1px #186f8f;
	background-image: linear-gradient(bottom, rgb(44,160,202) 0%, rgb(62,184,229) 100%);
	background-image: -o-linear-gradient(bottom, rgb(44,160,202) 0%, rgb(62,184,229) 100%);
	background-image: -moz-linear-gradient(bottom, rgb(44,160,202) 0%, rgb(62,184,229) 100%);
	background-image: -webkit-linear-gradient(bottom, rgb(44,160,202) 0%, rgb(62,184,229) 100%);
	background-image: -ms-linear-gradient(bottom, rgb(44,160,202) 0%, rgb(62,184,229) 100%);
	background-image: -webkit-gradient(
	linear,
	left bottom,
	left top,
	color-stop(0, rgb(44,160,202)),
	color-stop(1, rgb(62,184,229))
	);
	-webkit-box-shadow: inset 0px 1px 0px #7fd2f1, 0px 1px 0px #fff;
	-moz-box-shadow: inset 0px 1px 0px #7fd2f1, 0px 1px 0px #fff;
	box-shadow: inset 0px 1px 0px #7fd2f1, 0px 1px 0px #fff;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px; 
	margin:0 20px 20px 0;
	}
	
	input[type=text] {
    padding:5px; 
    border:2px solid #ccc; 
    -webkit-border-radius: 5px;
    border-radius: 5px;
    margin-bottom: 20px;
}

input[type=text]:focus {
    border-color:#333;
}

input[type=submit] {
    padding:5px 15px; 
    border:0 none;
    cursor:pointer;
    -webkit-border-radius: 5px;
    border-radius: 5px; 
    margin-top: 30px;
    background-color:#3bb3e0;
}

#editor1{
	margin-bottom: 50px;
}
</style>
<style>
.map_wrap {
	position: relative;
	width: 100%;
	height: 350px;
}

.title {
	font-weight: bold;
	display: block;
}

.hAddr {
	position: absolute;
	left: 10px;
	top: 10px;
	border-radius: 2px;
	background: #fff;
	background: rgba(255, 255, 255, 0.8);
	z-index: 1;
	padding: 5px;
}

#centerAddr {
	display: block;
	margin-top: 2px;
	font-weight: normal;
}

.bAddr {
	padding: 5px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 250px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}




/* 파일업로드 추가시 보여주기  */
.preview{
	display:none;
}
</style>



<!-- 동적 파일추가  -->
<script>
	var cnt = 1;
	function fn_addFile() {
		if (cnt <= 3) {
			$("#d_file").append("<br>"+"<input  type='file' name='file" + cnt+ "' value='" + cnt+ "' onchange='readURL(this)' />");
			$("#d_file").append("<img  class='preview' src='' width='100' height='100' />"+ "<br>");
			cnt++;
		}
	}
	
	function readURL(input) {
		if (input.files && input.files[0]) {
		var image = input.nextElementSibling;
		$(image).show();
			var reader = new FileReader();
			reader.onload = function(e) {
				$(image).attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>

</head>

<body>
<jsp:include page="/header.jsp"></jsp:include>
	<h1>혼족정보게시판</h1>

	<div class="wrap">

	<form id="insert" action="insert.do" method="POST"
		enctype="multipart/form-data">
		<input type="hidden" name="id" value="soh445">
		 <input type="hidden" name="nickName" value="환탁"> 
		 <select name="menu">
			<option value='' selected>메뉴선택</option>
			<option value='한식'>한식</option>
			<option value='양식'>양식</option>
			<option value='중식'>중식</option>
			<option value='일식'>일식</option>
			<option value='분식'>분식</option>
		</select><br> <input type="button" value="대표메뉴 사진 추가하기(3개까지 가능합니다.)"
			onClick="fn_addFile()"><br>
		<div id="d_file"></div>



		제목<input type="text" name="title"><br>
		<textarea rows="5" cols="60" name="content" id="description"></textarea>
                     
		위치정보(클릭해주세요) <br> <input class="adr" type="hidden" name="adr"
			value="위치를 등록해주세요"> <input class="tel" type="hidden"
			name="tel" value="전화번호 등록해주세요"> <input class="place_name"
			type="hidden" name="placeName" value="매장이름 등록해주세요"> <input
			class="category_name" type="hidden" name="categoryName"
			value="업종을 등록해주세요">

	</form>


	<div class="map_wrap">
		<div id="map"
			style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

		<div id="menu_wrap" class="bg_white">
			<div class="option">
				<div>
					<form onsubmit="searchPlaces(); return false;">
						키워드 : <input type="text" value="이태원 맛집" id="keyword" size="15">
						<button type="submit">검색하기</button>
					</form>
				</div>
			</div>
			<hr>
			<ul id="placesList"></ul>
			<div id="pagination"></div>
		</div>
	</div>




	<input type="submit" id="ss" form="insert">
</div>





	<!-- 에디터  -->
	<script type="text/javascript">
	/*  	CKEDITOR.replace('editor1', {
			extraPlugins : 'image2',
			filebrowserImageUploadUrl : 'fileupload.do',
			// Upload dropped or pasted images to the CKFinder connector (note that the response type is set to JSON).
			uploadUrl : 'fileupload.do',
			height : 450
		}); 
		
	 */
	 
		
	 $(function(){
		    $("#description").summernote({
		    	placeholder:"내용을 입력해주세요",
		    	height: 300,
		    	width : 800,
		    	minHeight: null,
		    	maxHeight: null,
		    	lang : 'ko-KR',
		    	callbacks: {
			          onImageUpload: function(files, editor, welEditable) {
			        	  sendFile(files[0], this); 
			         }
			   	}
		    });
		});
		

		/* summernote에서 이미지 업로드시 실행할 함수 */
		function sendFile(file, editor){
			/* 파일 전송을 위한 폼생성 */
			data = new FormData();
			data.append('uploadFile', file);
			$.ajax({ // ajax를 통해 파일 업로드 처리
				data : data,
				type : 'POST',
				url : '/app/admin/imageUpload.do',
				cache : false,
				contentType : false,
				enctype : 'multipart/form-data',
				processData : false,
				dataType : 'text',
				success : function(data){
					console.log(data);
					$(editor).summernote('editor.insertImage', '/app/resources/img/'+data);
				},
				error : function(err){
					console.log(err);
				}
			});
		}

</script>


	<!-- 다음지도  -->
	<script>
		// 마커를 담을 배열입니다
		var markers = [];

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places();

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});

		// 키워드로 장소를 검색합니다
		searchPlaces();

		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces() {

			var keyword = document.getElementById('keyword').value;

			if (!keyword.replace(/^\s+|\s+$/g, '')) {
				alert('키워드를 입력해주세요!');
				return false;
			}

			// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
			ps.keywordSearch(keyword, placesSearchCB);
		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// 정상적으로 검색이 완료됐으면
				// 검색 목록과 마커를 표출합니다
				displayPlaces(data);

				// 페이지 번호를 표출합니다
				displayPagination(pagination);

			} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

				alert('검색 결과가 존재하지 않습니다.');
				return;

			} else if (status === kakao.maps.services.Status.ERROR) {

				alert('검색 결과 중 오류가 발생했습니다.');
				return;

			}
		}

		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {

			var listEl = document.getElementById('placesList'), menuEl = document
					.getElementById('menu_wrap'), fragment = document
					.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

			// 검색 결과 목록에 추가된 항목들을 제거합니다
			removeAllChildNods(listEl);

			// 지도에 표시되고 있는 마커를 제거합니다
			removeMarker();

			for (var i = 0; i < places.length; i++) {

				// 마커를 생성하고 지도에 표시합니다
				var placePosition = new kakao.maps.LatLng(places[i].y,
						places[i].x), marker = addMarker(placePosition, i), itemEl = getListItem(
						i, places[i]); // 검색 결과 항목 Element를 생성합니다

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				// LatLngBounds 객체에 좌표를 추가합니다
				bounds.extend(placePosition);

				// 마커와 검색결과 항목에 mouseover 했을때
				// 해당 장소에 인포윈도우에 장소명을 표시합니다
				// mouseout 했을 때는 인포윈도우를 닫습니다
				(function(marker, title, tel, place_name, category_name) {
					kakao.maps.event
							.addListener(
									marker,
									'click',
									function() {

										$(
												"img[src='http://localhost:8080/app/honjokInfo/insert.jsp']")
												.remove();
										$(
												"img[src='http://t1.daumcdn.net/mapjsapi/images/marker.png']")
												.remove();

										$(
												"img[src='http://i1.daumcdn.net/dmaps/apis/transparent.gif']")
												.remove();
										$(
												"img[src='http://t1.daumcdn.net/mapjsapi/images/2x/marker.png']")
												.remove();

										displayInfowindow(marker, title, tel,
												place_name, category_name);
										document.querySelector('.adr').value = place_name;
										document.querySelector('.tel').value = tel;
										document.querySelector('.place_name').value = title;
										document
												.querySelector('.category_name').value = category_name;

									});

					itemEl.onclick = function() {
						$(
								"img[src='http://localhost:8080/app/honjokInfo/insert.jsp']")
								.remove();
						$(
								"img[src='http://t1.daumcdn.net/mapjsapi/images/marker.png']")
								.remove();
						$(
								"img[src='http://i1.daumcdn.net/dmaps/apis/transparent.gif']")
								.remove();
						$(
								"img[src='http://t1.daumcdn.net/mapjsapi/images/2x/marker.png']")
								.remove();

						displayInfowindow(marker, title, tel, place_name,
								category_name);
						document.querySelector('.adr').value = place_name;
						document.querySelector('.tel').value = tel;
						document.querySelector('.place_name').value = title;
						document.querySelector('.category_name').value = category_name;
					};

					/*     itemEl.onmouseout =  function () {
					      
					    }; */

				})(marker, places[i].place_name, places[i].phone,
						places[i].road_address_name, places[i].category_name);

				fragment.appendChild(itemEl);
			}

			// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
			listEl.appendChild(fragment);
			menuEl.scrollTop = 0;

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			map.setBounds(bounds);
		}

		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {

			var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
					+ (index + 1)
					+ '"></span>'
					+ '<div class="info">'
					+ '   <h5>' + places.place_name + '</h5>';

			if (places.road_address_name) {
				itemStr += '    <span>' + places.road_address_name + '</span>'
						+ '   <span class="jibun gray">' + places.address_name
						+ '</span>';
			} else {
				itemStr += '    <span>' + places.address_name + '</span>';
			}

			itemStr += '  <span class="tel">' + places.phone + '</span>'
					+ '</div>';

			el.innerHTML = itemStr;
			el.className = 'item';

			return el;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
			var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
			imgOptions = {
				spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
				spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
				offset : new kakao.maps.Point(13, 37)
			// 마커 좌표에 일치시킬 이미지 내에서의 좌표
			}, markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new kakao.maps.Marker({
				position : position, // 마커의 위치
				image : markerImage
			});

			marker.setMap(map); // 지도 위에 마커를 표출합니다
			markers.push(marker); // 배열에 생성된 마커를 추가합니다

			return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
			var paginationEl = document.getElementById('pagination'), fragment = document
					.createDocumentFragment(), i;

			// 기존에 추가된 페이지번호를 삭제합니다
			while (paginationEl.hasChildNodes()) {
				paginationEl.removeChild(paginationEl.lastChild);
			}

			for (i = 1; i <= pagination.last; i++) {
				var el = document.createElement('a');
				el.href = "#";
				el.innerHTML = i;

				if (i === pagination.current) {
					el.className = 'on';
				} else {
					el.onclick = (function(i) {
						return function() {
							pagination.gotoPage(i);
						}
					})(i);
				}

				fragment.appendChild(el);
			}
			paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1;">' + title
					+ '</div>';

			infowindow.setContent(content);
			infowindow.open(map, marker);
		}

		// 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {
			while (el.hasChildNodes()) {
				el.removeChild(el.lastChild);
			}
		}
	</script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			level : 5
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
		infowindow = new kakao.maps.InfoWindow({
			zindex : 1
		}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

		// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
		searchAddrFromCoords(map.getCenter(), displayCenterInfo);

		// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
		kakao.maps.event
				.addListener(
						map,
						'click',
						function(mouseEvent) {
							searchDetailAddrFromCoords(
									mouseEvent.latLng,
									function(result, status) {
										if (status === kakao.maps.services.Status.OK) {
											$(
													"img[src='http://localhost:8080/app/honjokInfo/insert.jsp']")
													.remove();
											$(
													"img[src='http://t1.daumcdn.net/mapjsapi/images/marker.png']")
													.remove();
											$(
													"img[src='http://i1.daumcdn.net/dmaps/apis/transparent.gif']")
													.remove();
											$(
													"img[src='http://t1.daumcdn.net/mapjsapi/images/2x/marker.png']")
													.remove();

											marker = new kakao.maps.Marker();
											var detailAddr = !!result[0].road_address ? '<div>도로명주소 : '
													+ result[0].road_address.address_name
													+ '</div>'
													: '';
											detailAddr += '<div>지번 주소 : '
													+ result[0].address.address_name
													+ '</div>';

											var content = '<div class="bAddr">'
													+ '<span class="title">법정동 주소정보</span>'
													+ detailAddr + '</div>';

											// 마커를 클릭한 위치에 표시합니다 
											marker
													.setPosition(mouseEvent.latLng);
											marker.setMap(map);

											// 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
											infowindow.setContent(content);
											infowindow.open(map, marker);

											/* 주소값 데이터 넣기  */
											document.querySelector('.adr').value = result[0].address.address_name;

											/* 대표이미지 주소값 넣기   */
											/* var editor = CKEDITOR.instances['editor1'];
											editor.insertHtml(result[0].address.address_name); */
										}
									});
						});

		// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
		kakao.maps.event.addListener(map, 'idle', function() {
			searchAddrFromCoords(map.getCenter(), displayCenterInfo);
		});

		function searchAddrFromCoords(coords, callback) {
			// 좌표로 행정동 주소 정보를 요청합니다
			geocoder.coord2RegionCode(coords.getLng(), coords.getLat(),
					callback);
		}

		function searchDetailAddrFromCoords(coords, callback) {
			// 좌표로 법정동 상세 주소 정보를 요청합니다
			geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
		}

		// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
		function displayCenterInfo(result, status) {
			if (status === kakao.maps.services.Status.OK) {
				var infoDiv = document.getElementById('centerAddr');

				for (var i = 0; i < result.length; i++) {
					// 행정동의 region_type 값은 'H' 이므로
					if (result[i].region_type === 'H') {
						//  infoDiv.innerHTML = result[i].address_name;
						break;
					}
				}
			}
		}
	</script>
	<!-- 다음지도 끝  -->

</body>
</html>