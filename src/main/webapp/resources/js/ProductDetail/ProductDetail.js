
var imgName = new Array;
var purchasePrice = "";

var ratingInput = document.querySelector(".rating-group");


//리뷰창
var ReviewBtn = document.querySelector(".ReviewBtn");
var Review = document.querySelector(".review-modal__modal__wrap");
var reviewModalClose = document.querySelector(".review-modal__close");
var reactModalCenterDiv = document.querySelector(".react-modal--center-div");
var body = document.querySelector("body");


//이미지 추가하고 더하기 
ReviewBtn.onclick = function () {
	var scrollPosition = window.scrollY;
	reactModalCenterDiv.style.top = scrollPosition;
	reactModalCenterDiv.style.display = "block";
	reactModalCenterDiv.style.overflow = "scroll";
	body.style.overflow = "hidden";
}

reviewModalClose.onclick = function () {
	reactModalCenterDiv.style.display = "none";
	body.style.overflow = "scroll";
}


ratingInput.onclick = function (e) {
	var ratingValue = document.querySelector("input[name='rating']");

	var ratingInput = document.querySelector(".rating__input--none");
	ratingValue.value = e.target.value;

};


//이미지 추가 
$('#image').on('change', function () {

	if (this.files.length > 2) {
		alert("사진은 최대 2개 까지 가능 합니다");
		this.form.reset();
		$('.review-modal__section__img').html("");
		return;
	}
	ext = $(this).val().split('.').pop().toLowerCase(); //확장자

	//배열에 추출한 확장자가 존재하는지 체크
	if ($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
		this.form.reset(); //폼 초기화
		$('.review-modal__section__img').html("");
		window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
		return;
	}


	for (var i = 0; i < this.files.length; i++) {
		var imgDel = document.querySelector('#image');
		var j = 0;
		//초기화
		$('.review-modal__section__img').html("");
		if (this.files && this.files[i]) {
			var reader = new FileReader();
			reader.onload = function (e) {
				$('.review-modal__section__img').append("<img class='review-img' src='" + e.target.result + "' width='200' height='200'> <button type='button' onclick='imgDel(this);' value='" + j + "'>삭제하기</button>");

				if (imgName != null && imgName != "") {

					if (imgName.indexOf(imgDel.files[j].name) != -1) {

						var ss = imgName.indexOf(imgDel.files[j].name);
						imgName.splice(ss, 1);


						var imgArray = $('input[name="imgArray"]');

						var myArrayData1 = [];
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

//이미지 삭제
function imgDel(e) {

	var imgDel = document.querySelector('#image');

	if (imgName.indexOf(imgDel.files[e.value].name) == -1) {
		imgName.push(imgDel.files[e.value].name);
	}


	var imgTag = e.previousElementSibling;

	imgTag.remove();
	e.remove();

	var imgArray = $('input[name="imgArray"]');

	var myArrayData1 = [];

	myArrayData1 = imgName.toString();


	$(imgArray).val(imgName);
}



//리뷰 작성
function reviewForm(e) {

	var form = $(".review-modal__form")[0];
	var data = new FormData(form)

	$.ajax({
		type: 'post',
		enctype: 'multipart/form-data',
		url: "Review.do",
		data: data,
		processData: false,
		contentType: false,
		success: function (e) {

			alert("작성완료");
			location.reload();
			location.replace("#production-selling-review");
		},
		error: function (jqXHR,
			textStatus, errorThrown) {
			alert("오류가 발생하였습니다.");
		}

	});

}


//리뷰 페이징 
$(document).on("click", ".production-review__paginator", function (e) {
	if (e.target.nodeName != "BUTTON") return;
	console.log(e.target.innerText);

	var cPage = e.target.innerText;
	console.log(cPage);
	console.log($('input[name="pNum"]').val());

	$.ajax({
		type: 'post',
		url: "ProductReview.do",
		data: {
			cPage: cPage,
			pNum: $('input[name="pNum"]').val()
		},
		success: function (e) {
			console.log(e);

			$('.production-review-item__container').html("");

			for (var j = 0; j < e.productreviewvo.length; j++) {

				//작성자 이름 생성  <p>
				var writer = '<p class="production-review-item__writer__info__name">작성자: ' + e.productreviewvo[j].id + '</p>';
				//별점 생성
				var ratings = document.createElement('SPAN');
				$(ratings).addClass('production-review-item__writer__info__total-star');
				for (var i = 0; i < e.productreviewvo[j].rating; i++) {
					$(ratings).append('<i class="rating__icon rating__icon--star fa fa-star"></i>');
				}
				// 작성일자 
				var regdate = '<span class="production-review-item__writer__info__date">' + e.productreviewvo[j].regdate + '</span>';
				var writerInfo = document.createElement('DIV');
				$(writerInfo).addClass('production-review-item__writer__info');

				$(writerInfo).append(writer + $(ratings).html() + regdate);

				var article = document.createElement('ARTICLE');
				$(article).addClass('production-review-item');

				article.append(writerInfo);
				$(article).append('<div>' + e.productreviewvo[j].title + '</div>');
				$(article).append('<img src="/app/resources/img/review/' + e.productreviewvo[j].photoImage1 + '"style="width: 120px; height: 100px">');
				$(article).append('<img src="/app/resources/img/review/' + e.productreviewvo[j].photoImage2 + '"style="width: 120px; height: 100px">');
				$(article).append('<p class="production-review-item__description">내용: <br>' + e.productreviewvo[j].content + '</p>');
				$('.production-review-item__container').append(article);


				console.log(article);
			}


			var perBtn = "";
			console.log(e.p.beginPage);
			if (e.p.beginPage != 1) {
				perBtn = '<li style="padding: 1px 6px;"><button class="list-paginator__prev" type="button">이전</button></li>';
			}
			console.log(perBtn);



			var liTag = "";
			for (var i = e.p.beginPage; i <= e.p.endPage; i++) {
				liTag += '<li style="padding: 1px 6px;"><button class="list-paginator__page sm selected" type="button">' + i + '</button>';

			}
			console.log(liTag);


			var nextBtn = "";
			if (e.p.endPage < e.p.totalPage) {
				var nextBtn = '<li style="padding: 1px 6px;"><button class="list-paginator__next" type="button">다음</button></li>';
			}
			console.log(nextBtn);


			$('.production-review-item__container').append('<ul class="list-paginator production-review__paginator">' + perBtn + liTag + nextBtn + '</ul>');

			console.log(perBtn);


		},
		error: function (jqXHR, textStatus, errorThrown) {
			alert("오류가 발생하였습니다.");
		}

	});


});


$("#product-select").on("change", function () {

	var price = document.querySelector('.price');
	var pNum = document.querySelector('.production-selling-header__title__name');

	$('#_optionSelectList').append('<li style="padding: 20px;">\
									<div class="prdprice_left"><span class="prd_txtbox">'+ pNum.innerHTML + '</span>\
									</div><div><div class="btns"><input type="button" value="감소"><input class="ctn" type="number"  value="1" dir="rtl"><input type="button" value="증가"> \
									<strong><em class="total-price">'+ price.innerHTML + '</em>원</strong><input type="button" value="취소"></div></div></li>');


	purchasePrice = $('.total-price').parent().find('em').html();
	$('.selling-option-form-content__price__number').html(purchasePrice);

});

$(document).on("change", ".ctn", function (e) {
	var stock = $('.stock').text();
	if (parseInt(stock) < e.target.value) {

		alert("재고가 부족합니다.");
		e.target.value = 1;
		return;
	}

	if (1 > e.target.value) {

		alert("1개보다 작을수 없습니다.");
		e.target.value = 1;
		return;
	}

	var price = $(e.target).parent().find('em').html();
	price = parseInt(purchasePrice) * e.target.value;

	$(e.target).parent().find('em').html(price);
	$('.selling-option-form-content__price__number').html(price);
	$('input[name="pCnt"]').val(e.target.value);
	console.log(price);








})

$(document).on("click", ".btns input", function (e) {
	console.log(e.target.innerText);
	var ctn = $('.ctn').val();
	if (e.target.value == '감소') {

		if (ctn <= 1) { alert("1보다 작을수 없습니다"); return }
		ctn--;
		$('.ctn').val(ctn);

		var price = $(e.target).parent().find('em').html();
		price = parseInt(price) - parseInt(purchasePrice);

		$(e.target).parent().find('em').html(price);
		$('.selling-option-form-content__price__number').html(price);
		$('input[name="pCnt"]').val(ctn);
		console.log(price);

	} else if (e.target.value == '증가') {

		var stock = $('.stock').text();
		console.log(stock);
		if (ctn >= parseInt(stock)) { alert("재고가 부족합니다"); return }

		var ctn = $('.ctn').val();
		ctn++;
		$('.ctn').val(ctn);

		var price = $(e.target).parent().find('em').html();
		price = parseInt(price) + parseInt(purchasePrice);
		$(e.target).parent().find('em').html(price);
		$('.selling-option-form-content__price__number').html(price);
		$('input[name="pCnt"]').val(ctn);


	} else {

		var del = $(e.target).parent().parent().parent();
		console.log(del);

		$(del).remove();
		$('.selling-option-form-content__price__number').html("0");


	}
})












