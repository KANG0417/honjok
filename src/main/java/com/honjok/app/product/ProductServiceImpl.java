package com.honjok.app.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.honjok.app.vo.productVO;

@Service()
public class ProductServiceImpl implements ProductService {
   
   
   @Autowired
   private ProductMapper mapper;

  


@Override
public com.honjok.app.vo.productVO ProductVO(String pNum) {
	productVO productVO = mapper.ProductVO(pNum);
	
	return productVO;
}
}

