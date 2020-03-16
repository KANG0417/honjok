package com.honjok.app.product;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.honjok.app.vo.productVO;

public class ProductMapper {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	  public productVO ProductVO(String pNUm) {
	    productVO ProductVO = mybatis.selectOne("ProductMapper.productVO", pNUm);
	      
	      System.out.println(ProductVO);
	      return ProductVO;
	   }
	
}
