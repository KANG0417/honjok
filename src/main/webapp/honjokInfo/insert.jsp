<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
   integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
   crossorigin="anonymous"></script>

<script src="https://cdn.ckeditor.com/4.13.1/standard-all/ckeditor.js"></script>

<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69f7448811fd57d29b7398b4045f65df&libraries=services"></script>

<title>혼족정보 게시판</title>
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
</style>
</head>
<body>
   <h1>혼족정보게시판</h1>
   <form action="insert.do" method="POST">
      <input type="hidden" name="id" value="soh445">
      <input type="hidden" name="nickname" value="환탁">
      <select name="menu">
      	<option value='' selected>메뉴선택</option>
      	<option value='한식'>한식</option>
      	<option value='양식'>양식</option>
      	<option value='중식'>중식</option>
      	<option value='일식'>일식</option>
      	<option value='분식'>분식</option>
      </select>
      
      <!-- 대표이미지 삭제  -->
  <!-- <br> 대표 화면<input  type="file" name="file_image" onchange="readURL(this);">   <img style="display: none;" id="preview" src="#"
         width="200" height="200"> 
          <br>  -->
         제목<input type="text" name="title"><br>
             <textarea name="content" id="editor1" rows="10" cols="80" >
                     내용을 입력해주세요 
           	첫번쨰로 업로드하신 사진이 대표 이미지가 됩니다.
             </textarea>
               위치정보(클릭해주세요)
          <div id="map" style="width: 50%; height: 250px;"  ></div>
      <br> <input type="submit" id="ss">
   
  	  <input class="adr" type="hidden" name="adr" value="지도를 클릭해주세요">
      
      
   </form>
         <button id="getdata">Print data</button>
 
   <script>
   
   
   $('#getdata').click(function() {
  	 var editor = CKEDITOR.instances['editor1'];

       var value = editor.getData();
       alert(value);
       // send your ajax request with value
       // profit!
   });   
   </script> 



<script type="text/javascript">

CKEDITOR.replace('editor1', {
    extraPlugins: 'image2,uploadimage',


    // Configure your file manager integration. This example uses CKFinder 3 for PHP.
    filebrowserBrowseUrl: '/apps/ckfinder/3.4.5/ckfinder.html',
    filebrowserImageBrowseUrl: '/apps/ckfinder/3.4.5/ckfinder.html?type=Images',
    filebrowserUploadUrl: '/fileupload.do',
    filebrowserImageUploadUrl: 'fileupload.do',

    // Upload dropped or pasted images to the CKFinder connector (note that the response type is set to JSON).
    uploadUrl: 'fileupload.do',

    // Reduce the list of block elements listed in the Format drop-down to the most commonly used.
    format_tags: 'p;h1;h2;h3;pre',
    // Simplify the Image and Link dialog windows. The "Advanced" tab is not needed in most cases.
    removeDialogTabs: 'image:advanced;link:advanced',

    height: 450
  });
/* $(function(){
   CKEDITOR.replace('editor1',{
      height: 400,
      filebrowserUploadUrl: 'fileupload.do'
      
   });
   
   
}); */


</script>


<!-- 미리보기 -->
   <script type="text/javascript">
          function readURL(input){
             $('#preview').show();
            
             if(input.files && input.files[0]){
             var reader = new FileReader();
             reader.onload = function(e) {
            	 var ss = $('#preview').attr('src',e.target.result);
                 var editor = CKEDITOR.instances['editor1'];
                 editor.insertHtml('<img src="'+ e.target.result + '">');
          }
             reader.readAsDataURL(input.files[0]);
          }   
          }
    </script>



   <!-- 다음지도  -->
   <script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 5 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
    infowindow = new kakao.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
searchAddrFromCoords(map.getCenter(), displayCenterInfo);

// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
        if (status === kakao.maps.services.Status.OK) {
            var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
            detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
            
            
            var content = '<div class="bAddr">' +
                            '<span class="title">법정동 주소정보</span>' + 
                            detailAddr + 
                        '</div>';

            // 마커를 클릭한 위치에 표시합니다 
            marker.setPosition(mouseEvent.latLng);
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
    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
}

function searchDetailAddrFromCoords(coords, callback) {
    // 좌표로 법정동 상세 주소 정보를 요청합니다
    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
}

// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
function displayCenterInfo(result, status) {
    if (status === kakao.maps.services.Status.OK) {
        var infoDiv = document.getElementById('centerAddr');

        for(var i = 0; i < result.length; i++) {
            // 행정동의 region_type 값은 'H' 이므로
            if (result[i].region_type === 'H') {
                infoDiv.innerHTML = result[i].address_name;
                break;
            }
        }
    }    
}

</script>
   <!-- 다음지도 끝  -->

</body>
</html>