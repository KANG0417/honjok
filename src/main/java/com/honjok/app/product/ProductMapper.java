package com.honjok.app.product;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.productReviewVO;
import com.honjok.app.vo.productVO;

@Repository()
public class ProductMapper {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	  public productVO ProductVO(String pNum) {
	    productVO ProductVO = mybatis.selectOne("ProductMapper.productVO", pNum);
	      return ProductVO;
	   }

	public List<productReviewVO> productReviewVO(String pNum) {
		List<productReviewVO> productReviewVO = mybatis.selectList("ProductMapper.productReviewVO", pNum);
		return productReviewVO;
	}
	
}
