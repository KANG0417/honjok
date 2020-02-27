<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- include libraries(jQuery, bootstrap)-->
<!-- summernote홈페이지에서 받은 summernote를 사용하기 위한 코드를 추가 -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<!-- 이 css와 js는 로컬에 있는 것들을 링크시킨 것이다. -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.js"></script>
<style>
	

	.filebox input[type="file"] {
	    position: absolute;
	    width: 1px;
	    height: 1px;
	    padding: 0;
	    margin: -1px;
	    overflow: hidden;
	    clip:rect(0,0,0,0);
	    border: 0;
	}
	
	.filebox label {
	    display: inline-block;
	    padding: .5em .75em;
	    color: #999;
	    font-size: inherit;
	    line-height: normal;
	    vertical-align: middle;
	    background-color: #fdfdfd;
	    cursor: pointer;
	    border: 1px solid #ebebeb;
	    border-bottom-color: #e2e2e2;
	    border-radius: .25em;
	}
	
	.filebox.bs3-primary label {
	  color: #fff;
	  background-color: #337ab7;
	    border-color: #2e6da4;
	}



</style>
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<form  action = "productWrite.do" method="POST" enctype="multipart/form-data" >
		<table width=750 border="1px" align=center>
			<tr>
				<td style="width: 25%;">
					<table cellspacing="0" cellpadding="0" style="width: 100%;">
						<tbody>
							<tr>
								<td align="center" class="font_16 font_mgodic"
									style="background: #f8f8f8; border-right: 1px solid #eaeaea; border-bottom: 1px solid #eaeaea; height: 50px; color: #333949;">대분류
								</td>
							</tr>
							<tr>
								<td style="padding: 20px; border-right: 1px solid #eaeaea;">
									<select id="upperCategory" name="upperCategory"
									onchange="category1(this.value);" size="10"
									style="width: 100 px;">
											<option value="">카테고리::</option>
											<option value="가구">가구</option>
											<option value="수납정리">수납정리</option>
											<option value="인테리어 소품">인테리어 소품</option>
											<option value="가전제품">가전제품</option>
											<option value="패브릭">패브릭</option>
											<option value="주방용품">주방용품</option>
											<option value="생활용품">생활용품</option>
											<option value="반려동물">반려동물</option>
									</select>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
				<td style="width: 25%;">
					<table cellspacing="0" cellpadding="0" style="width: 100%;">
						<tbody>
							<tr>
								<td align="center" class="font_16 font_mgodic"
									style="background: #f8f8f8; border-right: 1px solid #eaeaea; border-bottom: 1px solid #eaeaea; height: 50px; color: #333949;">중분류
								</td>
							</tr>
							<tr>
								<td>
									<select name="subCategory" id="subCategory"onchange="category2(this.value);" size="10" style="width: 100 px;">
										<option value="">카테고리::</option>
									</select>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
				<td style="width: 25%;">
					<table cellspacing="0" cellpadding="0" style="width: 100%;">
						<tbody>
							<tr>
								<td align="center" class="font_16 font_mgodic"
									style="background: #f8f8f8; border-right: 1px solid #eaeaea; border-bottom: 1px solid #eaeaea; height: 50px; color: #333949;">소분류
								</td>
							</tr>
							<tr>
								<td>
									<select name="subCategory2" id="subCategory2" size="10"style="width: 100 px;">
										<option value="">카테고리::</option>
									</select>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
			<tr>
				<th>
					<label>상품명</label>
				</th>
				<td>
					<input type="text" name="pName" id="pName" required>
					<div class="checkFont" id="productCheck"></div>
				</td>
			</tr>
			<tr>
				<th>
					<label>홍보문구</label>
				</th>
				<td>
					<input type="text" name="promotion" id="promotion" required>
					<div class="checkFont" id="productCheck"></div>
				</td>
			</tr>
			<tr>
				<th>
					<label>판매가격</label>
				</th>
				<td>
					<input type="text" name="price" id="price">
					<div class="checkFont" id="productCheck"></div>
				</td>
			</tr>
			<tr>
				<th>
					<label>할인</label>
				</th>
				<td>
					<input type="radio" name="sale" id="sale" value="설정"onclick="display()" />설정함 
					<input type="radio" name="sale"id="sale2" value="설정안함" checked="checked" onclick="hideDisplay()" />설정안함
					<div id="saleDiv">
						<table>
							<tr>
								<th>
									<label>할인</label>
									<input type="text" name="discountRate" id="discountRate"maxlength="2"
									onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" />%
								</th>
							</tr>
							<tr>
								<th>
									<label>할인 판매가격</label>
									<input type="text" name="salePrice" id="salePrice" value="" readonly/>
								</th>
							</tr>
						</table>
					</div>
				</td>
			</tr>
			<tr>
				<th>
					<label>재고수</label>
				</th>
				<td>
					<input type="text" name="stock" id="stock"/>
				</td>
			</tr>
			<tr>
				<th>
					<label>배송비</label>
				</th>
				<td>
					<input type="text" name="shippingfee" id="shippingfee"/>
				</td>
			</tr>
			<tr>
				<th>
					<label>브랜드명</label>
				</th>
				<td>
					<input type="text" name="brandName" id="brandName"/>
				</td>
			</tr>
			<tr>
				<th>
					<label>대표 이미지</label>	
				</th>
				<td>
					<img id="previewImg" src="/app/resources/img/default_image.png" width="150px;" height="150px;"/>
					<div class="filebox bs3-primary">
						<label for="thumnail">업로드</label>
						<input type="file" name="thumnail" id="thumnail"accept="image/jpeg,image/gif,image/png" onchange="preview(this)"/>
					</div>
				</td>
			</tr>
			<tr>
				<th>
					<label>상품 상세설명</label>
				</th>
				<td>
					<textarea rows="5" cols="60" name="description" id="description"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="center">
					<input type="submit" value="등록"/>
				</td>
			</tr>
		</table>
		</form>
	</div>
</body>
<script>


	$('#saleDiv').hide();

	function display() {
		if ($('input:radio[id=sale]').is(':checked')) {
			$('#saleDiv').show();
		}
	}

	function hideDisplay() {
		if ($('input:radio[id=sale2]').is(':checked')) {
			$('#saleDiv').hide();
		}
	}

	//숫자만 입력가능 할인율계산 
	function inNumber() {
		if (event.keyCode<48 || event.keyCode>57) {
			event.returnValue = false;
		}
	}

	//AJAX select box
	function category1(upperCategory) {
		$.ajax({
			type : "POST",
			url : "categorySelect1.do",
			dataType : "json",
			data : {
				param : upperCategory
			},
			success : function(result) {
				console.log(result);
				$("#subCategory").find("option").remove().end().append(
						"<option value=''>::카테고리</option>");
				$.each(result, function(i) {
					$("#subCategory").append(
							"<option value='"+result[i]+"'>" + result[i]
									+ "</option>")
				});
			},
			error : function(jqXHR, textStatus, errorThrown) {
				alert("오류가 발생하였습니다.");
			}
		});
	}

	function category2(subCategory) {
		$.ajax({
			type : "POST",
			url : "categorySelect2.do",
			dataType : "json",
			data : {
				param2 : subCategory
			},
			success : function(result) {
				console.log(result);
				$("#subCategory2").find("option").remove().end().append(
						"<option value=''>::카테고리</option>");
				$.each(result, function(i) {
					$("#subCategory2").append(
							"<option value='"+result[i]+"'>" + result[i]
									+ "</option>")
				});
			},
			error : function(jqXHR, textStatus, errorThrown) {
				alert("오류가 발생하였습니다.");
			}
		});
	}

	//할인가 계산

	$('#price').keyup(function() {
		var price = $('#price').val();
		var salePrice = $('#discountRate').val();
		$.ajax({
			type : "POST",
			url : "salePrice.do",
			dataType : "json",
			data : {
				price : price,
				salePrice : salePrice
			},
			success : function(data) {
				console.log(data)
				$('input[name=salePrice]').attr('value', data);
			}
		});
	});
	
	//할인가 계산 2번째 밑에꺼 입력시
	$('#discountRate').keyup(function() {
		var price = $('#price').val();
		var salePrice = $('#discountRate').val();
		$.ajax({
			type : "POST",
			url : "salePrice2.do",
			dataType : "json",
			data : {
				price : price,
				salePrice : salePrice
			},
			success : function(data) {
				console.log(data)
				$('input[name=salePrice]').attr('value', data);
			}
		});
	});
	
	
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
			url : 'imageUpload.do',
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
	
	//파일업로드 미리보기
	function preview(input){
			if (input.files && input.files[0]){
				var reader = new FileReader();//파일을 읽기 위한 FileReader객체 생성
				reader.onload = function (e) { //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
					$('#previewImg').attr('src', e.target.result).width(150).height(150); ; 
				//이미지 Tag의 SRC속성에 읽어들인 File내용을 지정 
				//(아래 코드에서 읽어들인 dataURL형식) 
				} 
				//File내용을 읽어 dataURL형식의 문자열로 저장
				reader.readAsDataURL(input.files[0]); 
			}//file 양식으로 이미지를 선택(값이 변경) 되었을때 처리하는 코드 
		}
	


</script>
</html>