<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<meta charset="UTF-8">
=======
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
>>>>>>> 65066c1779e958361a7c77be7c807e6757db706e
<title>Insert title here</title>
<style>
    .cart th,
    .cart td {
        vertical-align: middle;
    }
    .btn_delete_point {
        background: none;
        border: none;
    }
    .btn_delete_point img {
        width: 15px;
    }
</style>
</head>
<body>

<div class="wrap cart">
    <div class="my-cart__header">
        <div class="my-cart__tit">장바구니</div>
        <div class="my-cart__sub-tit">
            주문하실 상품명 및 수량을 정확하게 확인해 주세요.
        </div>
    </div>
    <div class="cart-goods">
        <table class="cart-tb">
            <tr class="cart-tb__header">
                <th>
<<<<<<< HEAD
                    <label for=""class="check-label checked"onclick="change_Allcheckbox($(this))">
                        <input type="checkbox"class="check-box allCheck" name="allCheck"checked/>
=======
                    <label
                        for=""
                        class="check-label checked"
                        onclick="change_Allcheckbox($(this))"
                    >
                        <input
                            type="checkbox"
                            class="check-box allCheck"
                            checked
                        />
>>>>>>> 65066c1779e958361a7c77be7c807e6757db706e
                    </label>
                </th>
                <th id="thSelect">
                    전체선택 (<span class="prd_count">0</span>/<span
                        class="prd_total_count"
                        >0</span
                    >)
                </th>
<<<<<<< HEAD
	                <td>
	                	<div class="cart-goods__btns">
	            			<button class="cart-goods__btn-del btn_delete selectBtn">선택 삭제</button>
	     				</div>
	                </td>
            </tr>
            <tr>
                <th id="thInfo">상품명</th>
=======
                <th id="thInfo">상품 정보</th>
>>>>>>> 65066c1779e958361a7c77be7c807e6757db706e
                <th id="thCount">수량</th>
                <th id="thCost">상품금액</th>
                <th id="shippingFee">배송비</th>
            </tr>

            <!-- DB에서 cart 데이터 불러오는 곳 -->
<<<<<<< HEAD
          <c:forEach var="list" items="${list}">
           		<tr class="viewDel">
						<td class="cart-tb__check">
						<label for="" class="check-label checked" onclick="change_checkbox($(this))">
							<input type="checkbox" data-pNum="${list.P_NUM}" data-id="${list.ID}"class="prdCheck ico_check" name="prdCheck"
									checked onchange="total_calcul()"/>
					 	</label>
						</td>
						<td class="cart-tb__thumb"><img src="/app/resources/img/${list.THUMNAIL_IMG}"></td>
						<td class="cart-tb__desc">
							<div class="cart-tb__name">${list.P_NAME}</div>
							
							<div class="price_Box">
								정가: <span class="product__dc cart-tb__num price1">${list.PRICE}</span>
								할인가격: <span class="product__price cart-tb__num price2">${list.SALEPRICE}</span>
							</div>
						</td>
						<td class="cart-tb__shippingFee">
							<div class="cart-tb__num shippingFee">${list.SHIPPINGFEE}</div>
						</td>
						<td class="cart-tb__count">
						 	<span class="goods-count">
								<button class="minus" onClick="BtnMinus($(this));"></button>
								<input type="text" value="${list.P_CNT}" class="qty clk_count" readonly>
								<button type="button" id="${list.P_NUM}"data-saleprice="${list.SALEPRICE}" data-stock="${list.STOCK}" class="plus" onclick="BtnPlus($(this));"></button>
							</span>
						</td>
						<td class="cart-tb__total prd_price">${list.SALEPRICE}</td>
						<td>
							<button type="button" class="btn_delete_point" onclick="seldel($(this))"><img src="https://res.kurly.com/pc/ico/1801/btn_close_24x24_514859.png" alt="삭제"></button>
						</td>
					</tr>
				</c:forEach>	
			
     	</table>
=======
            <tbody class="viewGoods"></tbody>
        </table>
        <div class="cart-goods__btns">
            <button class="cart-goods__btn-del btn_delete selectBtn">
                선택 삭제
            </button>
            <button class="cart-goods__btn-sold btn_delete soldOutBtn">
                품절 상품 삭제
            </button>
        </div>

>>>>>>> 65066c1779e958361a7c77be7c807e6757db706e
        <div class="cart-amount">
            <div class="cart-amount__item">
                <div class="cart-amount__tit">상품 금액</div>
                <div class="cart-amount__price">
                    <span id="amountPrice"></span> 원
                </div>
            </div>
            <div class="cart-amount__deco deco-minus">
                -
            </div>
            <div class="cart-amount__item">
                <div class="cart-amount__tit">상품 할인금액</div>
                <div class="cart-amount__price">
                    -<span id="amountSale"></span> 원
                </div>
            </div>
            <div class="cart-amount__deco">
                +
            </div>
            <div class="cart-amount__item">
                <div class="cart-amount__tit">배송비</div>
                <div class="cart-amount__price">
                    <span id="amountCourier"></span> 원
                </div>
            </div>
            <div class="cart-amount__deco">
                =
            </div>
            <div class="cart-amount__item amount-total">
                <div class="cart-amount__tit">결제예정금액</div>
                <div class="cart-amount__price" style="padding-top: 28px;">
                    <span id="amountTotal"></span> 원
                </div>

                <div id="totalPoint" align="center">
                    <div style="margin-top: 10px;">
                        구매시 <span>0</span>원 적립예정
                    </div>
                </div>
            </div>
        </div>
        <input type="button" id="placeAnOrder" class="cart-goods__btn-write"value="주문하기"/>
    </div>
</div>
</body>
<<<<<<< HEAD
<script>

//페이지 들어오면 바로 실행
total_calcul(); //장바구니 총합 계산
chCount(); // 선택 개수 체크



function total_calcul(){
//장바구니 총 상품금액 계산 - 시작
var prdCnt = $('.price1').length//장바구니에 담긴 개수
var originalArr = new Array(prdCnt); //정가의 배열을 담을 객체
var discountArr = new Array(prdCnt); // 할인가의 배열을 담을 객체
var shippingFee = new Array(prdCnt); // 배송비의 배열을 담을 객체


//변수초기화
let shippingFeeTotPrice = 0;
let originalTotPrice = 0;
let discountTotPrice = 0;

for(var i = 0; i<prdCnt; i++){
	if($(".prdCheck").eq(i).prop("checked")){
		originalArr[i] = $('.price1').eq(i).text() * $('.clk_count').eq(i).val();
		discountArr[i] = $('.price2').eq(i).text() * $('.clk_count').eq(i).val();
		shippingFee[i] = parseInt($('.shippingFee').eq(i).text());
		
		shippingFeeTotPrice += parseInt(shippingFee[i]);
		originalTotPrice += originalArr[i];
		discountTotPrice += originalArr[i] - discountArr[i];
	}
}

$('#amountPrice').text(originalTotPrice); // 정가의 총 합 > [상품금액 div] - span 에 담기
$('#amountSale').text(discountTotPrice);  // 할인금액 총 합 > [상품할인금액 div] - span에 담기
$('#amountCourier').text(shippingFeeTotPrice); //배송비의 총 합 [배송비div] -span에 담기
$('#amountTotal').text(originalTotPrice - discountTotPrice + shippingFeeTotPrice); // 최종 [결제예정금액 div]

}

//페이지 들어오면 바로 실행

//전체 개수 구하기	
chk_total_obj = document.getElementsByClassName('prdCheck');//상품채크박스
chk_total_leng = chk_total_obj.length;//상품채크박스 개수
$('.prd_total_count').text(chk_total_leng);//상품체크박스 개수 카운트



	
//클릭시 상품개수 체크	
$('.prdCheck').on("click", function(){
	chCount();
});
	
//상품개수카운트 함수
function chCount() {
	chk_obj = $('.prdCheck');
	chk_leng = chk_obj.length;
	var checked = 0;
	
	for(i=0; i<chk_leng; i++){
		if(chk_obj[i].checked){
			checked += 1;
		}
	}
	console.log(checked);
	
	if(checked == chk_leng) { // 모든 상품이 체크 상태일 때, 상위의 [전체선택] 체크박스 라벨의 아이콘을 체크상태로 바꿈 
		$("input[name=allCheck]").prop("checked",true);
	}else{
		$("input[name=allCheck]").prop("checked",false);
	}
		$('.prd_count').text(checked);
}
//선택 상품 삭제
$('.selectBtn').click(function(){
 	var confirm_val = confirm("정말 삭제하시겠습니까?");
 	let id = $("input[name='prdCheck']:checked").data("id");
 	console.log(id);
 	
 	if(confirm_val){
 		var checkArr = new Array();
 		 
 		 
 		$("input[name='prdCheck']:checked").each(function(){
 			checkArr.push($(this).attr("data-pNum"));
 		});
 		console.log(checkArr);
 		
 		$.ajax({
 			url : "cartDelete.do",
 			type : "post",
 			data : {chbox : checkArr},
 			success : function(result){
 				if(result == 1){				
 					console.log(id);
 					location.href = "getCartList.do?memId=" + id;
 				}else{
 					alert("삭제 실패");
 				}
 			}
 		})
 		
 	}
});

//수량 + 버튼
function BtnPlus(btn){
	let quan = btn.prev().val();
	let stock = btn.data("stock");
	let discountPrice = btn.data("saleprice");
	quan++;
	let discountTotPrice = discountPrice * quan;

	if(stock < quan){
		alert("선택한 수량이 남은 재고보다 많습니다.");
	}
	
	btn.prev().val(quan);
	btn.parent().parent().next().text(discountTotPrice);
	
}

//수량 - 버튼

function BtnMinus(btn){
	let quan = btn.next().val();
	let stock = btn.next().next().data("stock"); //상품 
	let discountPrice = btn.next().next().data("saleprice"); //1개가격 할인가
	quan--;
	
	console.log(quan);
	console.log(stock);
	console.log(discountPrice);
	
	if(quan == '0') {
		alert('0 이하로는 설정할 수 없습니다. ');
	}
	
	else if(stock < quan){
		alert("선택한 수량이 남은 재고보다 많습니다.");
	}
	
	let discountTotPrice = discountPrice * quan;

	
	btn.next().val(quan);
	btn.parent().parent().next().text(discountTotPrice);
	
}



</script>
=======
>>>>>>> 65066c1779e958361a7c77be7c807e6757db706e
</html>