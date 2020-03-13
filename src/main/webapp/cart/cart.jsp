<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
/* 카트 */
.my-cart__header {
    height: 180px;
    padding-top: 55px;
    padding-bottom: 50px;
}
.my-cart__tit {
    color: #333;
    text-align: center;
    font-size: 40px;
    margin-bottom: 25px;
}
.my-cart__sub-tit {
    color: #999;
    text-align: center;
    font-size: 16px;
}

.cart-goods {
    width: 100%;
    border-top: #45b8ac 2px solid;
}
.cart-tb {
    margin-bottom: 30px;
}
.cart-tb tr,
.order-tb tr {
    border-bottom: 2px solid #ddd;
}
.cart-tb__header,
.order-tb__header {
    height: 65px;
}
.cart-tb__header,
.order-tb__header {
    font-weight: 700;
    font-size: 14px;
    color: #666;
    vertical-align: middle;
}
.cart-tb__header th:nth-of-type(1),
.cart-tb__check {
    text-align: center;
    width: 87.5px;
}
.cart-tb__header th:nth-of-type(2) {
    width: 110px;
}
.cart-tb__header th:nth-of-type(3) {
    width: 580px;
    text-align: center;
}
.cart-tb__header th:nth-of-type(4) {
    width: 135px;
    text-align: center;
}
.cart-tb__header th:nth-of-type(5) {
    width: 135px;
    text-align: center;
}


.cart-tb__item {
    height: 120px;
    vertical-align: middle;
}
.cart-tb__thumb {
    text-align: center;
}
.cart-tb__thumb img {
    width: 60px;
    height: 77px;
}
.cart-tb__desc {
    padding-left: 30px;
}
.cart-tb__count {
    text-align: center;
}
.cart-tb__total,
.order-tb__total {
    text-align: center;
    font-weight: 700;
    font-size: 14px;
    color: #000;
}

.cart-tb__name,
.order-tb__name {
    font-weight: 700;
    font-size: 14px;
    color: #000;
    margin-bottom: 14px;
}
.cart-tb__price,
.order-tb__price {
    font-size: 12px;
}
.cart-tb__num,
.order-tb__num {
    margin-right: 5px;
}
.cart-tb__cost {
    text-decoration: line-through;
    color: #777;
}

.cart-goods__btns {
    display: flex;
    margin-bottom: 80px;
}
.cart-goods__btn-del,
.cart-goods__btn-sold {
    all: unset;
    color: #00666b;
    border: #00666b 1px solid;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 42px;
    cursor: pointer;
}
.cart-goods__btn-del {
    width: 88px;
    margin-right: 10px;
}
.cart-goods__btn-sold {
    width: 120px;
}

.cart-amount {
    display: flex;
    margin-bottom: 80px;
}
.cart-amount__item {
    width: 196px;
    height: 160px;
    border: 2px solid #ddd;
}
.cart-amount__tit {
    padding-top: 38px;
    text-align: center;
    font-size: 14px;
    color: #666;
}
.cart-amount__price {
    padding-top: 38px;
    text-align: center;
    font-size: 20px;
    color: #000;
}
.cart-amount__deco {
    width: 72px;
    height: 160px;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #666;
    font-size: 40px;
}
.deco-minus {
    font-size: 60px;
}
.amount-total {
    width: 226px;
    background-color: #f7f7f7;
}
.amount-total .cart-amount__price {
    color: #45b8ac;
}
.cart-goods__btn-write {
    all: unset;
    width: 200px;
    height: 48px;
    color: white;
    background-color: #45b8ac;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 0 auto;
    font-size: 14px;
    cursor: pointer;
}
</style>
</head>
<body>
<div id=container>
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
                    <label for=""class="check-label checked"onclick="change_Allcheckbox($(this))">
                        <input type="checkbox"class="check-box allCheck"checked/>
                    </label>
                </th>
                <th id="thSelect">
                	전체선택 (<span class="prd_count">0</span>/<span class="prd_total_count">0</span >)
                </th>
	                <td>
	                	<div class="cart-goods__btns">
	            			<button class="cart-goods__btn-del btn_delete selectBtn">선택 삭제</button>
	     				   </div>
	                </td>
            </tr>
            <tr>
                <th id="thInfo">상품명</th>
                <th id="thCount">수량</th>
                <th id="thCost">상품금액</th>
                <th></th>
            </tr>
            <!-- DB에서 cart 데이터 불러오는 곳 -->
          <c:forEach var="list" items="${list}">
           		<tr class="viewDel">
					<!--<input type="hidden" class="productCode" value="${PRODUCTCODE }"/>
						<input type="hidden" class="stock" value="${STOCK }">
						<input type="hidden" class="memlevel" value="${MEMLEVEL }">
						<input type="hidden" name="price2" class="prd_price_fix" value="${price2 }">
						-->
		
						<td class="cart-tb__check">
						<label for="" class="check-label checked" onclick="change_checkbox($(this))">
							<input type="checkbox" class="prdCheck ico_check" checked onchange="total_calcul()">
					 	</label>
						</td>
						<td class="cart-tb__thumb"><img src="/app/resources/img/${list.THUMNAIL_IMG}"></td>
						<td class="cart-tb__desc">
							<div class="cart-tb__name">${list.P_NAME}</div>
							
							<div class="price_Box">
								정가: <span class="product__dc cart-tb__num price1">${list.PRICE }</span>
								할인가격: <span class="product__price cart-tb__num price2">${list.SALEPRICE}</span>
							</div>
						</td>
						<td class="cart-tb__count">
						 	<span class="goods-count">
								<button class="minus" onClick="fnDn($(this))"></button>
								<input type="text" value="${list.P_CNT }" id="${list.P_NUM}" class="qty clk_count" readonly>
								<button type="button" class="plus up_btn" onClick="fnUp($(this))"></button>
							</span>
						</td>
						<td class="cart-tb__total prd_price">${price2}</td>
						<td>
							<button type="button" class="btn_delete_point" onclick="seldel($(this))"><img src="https://res.kurly.com/pc/ico/1801/btn_close_24x24_514859.png" alt="삭제"></button>
						</td>
					</tr>
				</c:forEach>	
			
     	</table>
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
                    <span id="amountSale"></span> 원
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
            </div>
        </div>
        <input type="button" id="placeAnOrder" class="cart-goods__btn-write"value="주문하기"/>
    </div>
</div>
</div>
</body>
<script type="text/javascript"src="/app/resources/js/cart.js"></script>
</html>