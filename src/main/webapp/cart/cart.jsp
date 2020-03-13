<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                    </label>
                </th>
                <th id="thSelect">
                    전체선택 (<span class="prd_count">0</span>/<span
                        class="prd_total_count"
                        >0</span
                    >)
                </th>
                <th id="thInfo">상품 정보</th>
                <th id="thCount">수량</th>
                <th id="thCost">상품금액</th>
                <th></th>
            </tr>

            <!-- DB에서 cart 데이터 불러오는 곳 -->
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
</html>