<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<input type="hidden" id="pNum" value="${mainDetail.pNum}">
	<input type="hidden" id="upperCategoryCategory" value="${mainDetail.upperCategory}">
	<input type="hidden" id="subCategory" value="${mainDetail.subCategory}">
	<input type="hidden" id="subCategory2" value="${mainDetail.subCategory2}">
	<input type="hidden" id="sessionId" value="${userSession.id }">
	<input type="hidden" id="stock" value="${mainDetail.stock }">
	
	<div>${mainDetail.upperCategory}</div>
		<span>>${mainDetail.subCategory}</span>
		<div>>${mainDetail.subCategory2}</div>
	<div>${mainDetail.pName}</div>
		<img id="detailImg" src="/app/resources/img/${mainDetail.thumnailImg}" width="350px;" height="350px;"/>
		<div class="price">${mainDetail.price}원</div>
	<div>${mainDetail.discountRate}%</div>
	<div>${mainDetail.salePrice}원</div>
	 <div>구매수량</div>
     <div>
          <span class="goods-count">
              <button class="minus"></button>
              <input type="text" value="1" class="qty" readonly>
              <button class="plus"></button>
          </span>
     </div>
      <div class="goods-total__price">
            <span class="goods-total__tit">총 상품 금액:</span>
            <span class=total></span>
            <span class=won>원</span>
      </div>
</div>        
</body>
<script>

    const minusBtn =document.querySelector(".minus");
    const plusBtn = document.querySelector(".plus");

    const qty = document.querySelector(".qty");
    const total = document.querySelector(".total");
    
    const price = document.querySelector(".price");
    let qtyCount = qty.value;
      
    const goodsPrice = (parseInt(price.innerHTML));
  
    
   
    
  	plusBtn.addEventListener("click",function(){
    	
        qtyCount++;
        qty.value = qtyCount;   
        total.innerText = goodsPrice * qtyCount;

    });

    minusBtn.addEventListener("click",function(){
        if(qtyCount <= 1) return;

        qtyCount--;
        qty.value = qtyCount;
        total.innerText =  goodsPrice * qtyCount;
        
    })

</script>
</html>