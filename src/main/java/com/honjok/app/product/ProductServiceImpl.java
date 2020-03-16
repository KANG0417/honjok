package com.honjok.app.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.honjok.app.vo.productVO;

public class ProductServiceImpl implements ProductService {
   
   
   @Autowired
   private ProductMapper mapper;

  


@Override
public com.honjok.app.vo.productVO ProductVO(String pNUm) {
	productVO productVO = mapper.ProductVO(pNUm);
	
	return productVO;
}
}

