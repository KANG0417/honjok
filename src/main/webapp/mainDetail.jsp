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
      <div>구매하기</div>
      <div>장바구니</div>
      <div class="notice-modal hidden">
	    <div class="notice-modal__overlay"></div>
	    <div class="notice-modal__content">
	        <div class="notice-modal__header">
	            <span class="notice-modal__tit">알림메시지</span>
	            <button class="notice-modal__close-btn"></button>
	        </div>
	        <div class="notice-modal__message">
	            <span></span>
	        </div>
	        <div class="notice-modal__footer">
	            <button class="notice-modal__yes-btn">
	                확인
	            </button>
	        </div>
	    </div>
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
        
    });
    
    
    function(){
    const saveBtn = document.querySelector(".btn-save"),
    	  modal = document.querySelect(".notice-modal"),
    	  overlay = modal.querySelector(".notice-modal__overlay"),
    	  closeBtn = modal.querySelector(".notice-modal__close-btn"),
    	  yesBtn = modal.querySelector(".notice-modal__yes-btn");
    
    function closeModal(){
        modal.classList.add("hidden")
    }


    function openModal(){
    	$('.notice-modal__message').html("");
    	if($("#sessionId").val() == ""){
    		$('.notice-modal__message').text("로그인 하신 후 장바구니 등록을 해주세요.")
    	}else{
    		//장바구니 등록하는 당시에 재고보다 장바구니에 넣을 물품이 더 클 경우 방지 
			$.ajax({
        		type : "post",
        		url : "/mintProject/shop/goods/addCartList",
        		data : {'productCode' : $('#productCode').val(),
        			    'ctCount' : $('.qty').val(),
        			    'stock' : $('#stock').val()
        				},
        		dataType : "json",
        		success : function(data){
        			if(data.gubun=='1'){
        				$('.notice-modal__message').text("이미 동일한 상품이 장바구니에 존재합니다.");
        			}else if(data.gubun=='2'){
        				console.log($('#thumbImg').prop('src'));
        				$('.notice-modal__message').append($('<img>',{
        					src : $('#thumbImg').prop('src'),
        					height : "70px",
        					width : "70px"
        				})).append("&emsp;장바구니에 담겼습니다.");
        				
        				$('.gnb__cart-count').text(data.memCart);
        			}else if(data.gubun=='3'){
        				$('.notice-modal__message').text("재고보다 장바구니에 등록할 갯수가 부족합니다.");
        			}
        		},
        		error : function(error){
        			
        		}
        		
        	});
    	}
    	 modal.classList.remove("hidden");
    }
    saveBtn.addEventListener("click",openModal);
    overlay.addEventListener("click",closeModal);
    closeBtn.addEventListener("click",closeModal);
    yesBtn.addEventListener("click",closeModal);

})();
    
    

</script>
</html>