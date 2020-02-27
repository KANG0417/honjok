eplyr<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://kit.fontawesome.com/73d0df04d6.js"
	crossorigin="anonymous"></script>
</head>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- 섬네일이미지 출력  -->



<!-- 일반 평션  -->
<script>
	var contentimg = '${CommInfoVO.content}';
	var firstimg = $(contentimg).find('img:first').attr('src');
	var image = document.createElement("IMG");
	image.src = firstimg;
	image.height = 300;
	image.width = 300;
	image.alt = "이미지가없습니다.";
	console.log(image);
	$('body').html(image);
	
	
	/*  파일 미리보기 태그 만들기  */
		$().ready(function() {
			
			$('#hart').click(function(){
				var className = $(this).attr('class');
				if(className == "far fa-heart fa-5x" ){
					$(this).removeClass();
					$(this).addClass("fas fa-heart fa-5x");
				}else{
					$(this).removeClass();
					$(this).addClass("far fa-heart fa-5x");
				}
			});
			$('#book-mark').click(function(){
				var className = $(this).attr('class');
				if(className == "far fa-bookmark fa-5x" ){
					$(this).removeClass();
					$(this).addClass("fas fa-bookmark fa-5x");
				}else{
					$(this).removeClass();
					$(this).addClass("far fa-bookmark fa-5x");
				}
			});
			
			
		
			
		});
	
	
		var cnt = 1;
		function fn_addFile() {
			if (cnt <= 3) {
				$("#d_file").append("<div><input  type='file' name='file" + cnt+ "' value='" + cnt+ "' onchange='readURL(this)' /> <img  class='preview' src='' width='100' height='100' />"+ "<button type='button' onclick='remove(this)' >삭제</button> </div>");
			}
			cnt++;
		}
		 
		function remove(revome){
			var img = $(revome).parent();
			 $(img).remove();
			cnt--;
		}
		
	/*  댓글 파일 이미지 추가 */
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
	
	function insertReview(e){
		var form = $("#Review")[0];
		
		
		
		var data = new FormData(form);

		
		$.ajax({
			type:'post',
			enctype: 'multipart/form-data',
			url: "reviewInsert.do",
			data: data,
			processData: false,
			contentType: false,
			success : function(json){
					console.log("성공");	
			},error : function(jqXHR, textStatus, errorThrown) {
				alert("오류가 발생하였습니다.");
			}
			
		});

	}
	
		/* function review(this_form){
			
			console.log(this_form);
		this_form.submit();
		} */
			
	
</script>

<!-- 카카오톡 공유  -->
<script type='text/javascript'>
	//<![CDATA[
	// // 사용할 앱의 JavaScript 키를 설정해 주세요.
	Kakao.init('69f7448811fd57d29b7398b4045f65df');
	// // 카카오링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.
	function sendLink() {
		Kakao.Link
				.sendDefault({
					objectType : 'location',
					address : '${CommInfoVO.adr }',
					addressTitle : '${CommInfoVO.title }',
					content : {
						title : '${CommInfoVO.title }'/* ,
																								          description: '이번 주는 체리블라썸라떼 1+1' */,
						imageUrl : firstimg,
						link : {
							mobileWebUrl : 'https://developers.kakao.com',
							webUrl : 'https://developers.kakao.com'
						}
					},
					social : {
						likeCount : 0,
						commentCount : 0,
						sharedCount : 0
					},
					buttons : [ {
						title : '웹으로 보기',
						link : {
							mobileWebUrl : 'http://localhost:8080/app/honjokInfo/get.do?com_seq=387',
							webUrl : 'http://localhost:8080/app/honjokInfo/get.do?com_seq=387'
						}
					} ]
				});
	}
	//]]>
</script>
<script>
	$()
			.ready(
					function() {
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = {
							center : new kakao.maps.LatLng(33.450701,
									126.570667), // 지도의 중심좌표
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

												var coords = new kakao.maps.LatLng(
														result[0].y,
														result[0].x);

												// 결과값으로 받은 위치를 마커로 표시합니다
												var marker = new kakao.maps.Marker(
														{
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
					});
</script>

<style>

</style>

<body>



	 <h1>글번호 : ${CommInfoVO.com_seq }</h1>
	<%-- <h1>제목 : ${CommInfoVO.title }</h1> 
	<p>작성자: ${CommInfoVO.id }</p> 
	<p>별점:${CommInfoVO.sum_star }</p>
	<p>메뉴${CommInfoVO.menu }</p>
		<p>ID:${CommInfoVO.id }</p>
	<p>타입:${CommInfoVO.type }</p>
	<p>작성일:${CommInfoVO.regdate }</p>
	--%>

	<p>닉네임:${CommInfoVO.nick_name }님의 혼밥리뷰</p>



	<p>메장 대표메뉴</p>
	<c:forEach var="Upload" items="${UploadList }">
		<img width="100" height="100"
			src="/app/resources/img/menu/${Upload.up_img_name }">
	</c:forEach>

	<hr>
	<p>매장이름:${CommInfoVO.place_name }</p>
	<p>매장위치:${CommInfoVO.adr }</p>
	<p>매장 업종:${CommInfoVO.category_name }</p>
	<p>매장번호:${CommInfoVO.tel }</p>
	<hr>


	<div id="map" style="width: 100%; height: 350px;"></div>
	<hr>
	<p>${CommInfoVO.content }</p>
	<p>조회수:${CommInfoVO.hit }</p>
	<p>좋아요;${CommInfoVO.likes }</p>
	
	<c:if  test="${session.id == null}">
		<i id="book-mark" class="far fa-bookmark fa-5x"></i>
	</c:if>
	<span>찜하기</span>
	
	
	
	<c:if  test="${session.id == null}">
		<i id="hart" class="far fa-heart fa-5x"></i>
	</c:if>
	<span>좋아요</span>
	
	
	<a id="kakao-link-btn" href="javascript:sendLink()"> <img
		src="//developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" />
	</a>
	<span>공유하기</span>




	<h2>혼밥리뷰</h2>
	<a>전체</a>
	<a>최신순</a>
	<a>좋아요순</a> 인생맛집
	<table border="1">
	
		<tr>
			<th>글번호</th>
			<th>아이디</th>
			<th>닉네임 </th>
			<th>내용</th>
			<th>첨부이미지</th>
		</tr>
		
		<c:forEach varStatus="Num" var="reply" items="${reply }">
		<tr>
			<td>${reply.com_seq }</td>
			<td>${reply.id }</td>
			<td>${reply.nick_name }</td>
			<td>${reply.content }</td>
			<td></td>		 
		</tr>
		</c:forEach>
	
	</table>
	
	
	
<form id="Review" method="post" enctype="multipart/form-data">
	<input type="hidden" name="id" value="soh445">
	<input type="hidden" name="nick_name" value="ss">
	<input type="hidden" name="com_seq" value="${CommInfoVO.com_seq }">
	<textarea id="content" name="content"rows="10" cols="80">
		안녕하세요
	</textarea>
	
		<div id="d_file"></div>
		<br> <button class="fas fa-plus fa-5x " type="button" onClick="fn_addFile()"></button><br>
	
	<input type="button"  onclick="insertReview(this.form)">
	</form>

<div>
	<form class="update" action="update.jsp">
		<c:set value="${CommInfoVO }" var="com" scope="session"></c:set>
		<input type="submit" value="수정">
	</form>
	<form action="delete.do">
		<input type="hidden" name="com_seq" value="${CommInfoVO.com_seq}">
		<input type="submit" value="삭제">
	</form>
	<form action="select.do">
		<input type="submit" value="목록으로">
	</form>
</div>







</body>

</html>