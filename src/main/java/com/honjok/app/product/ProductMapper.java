package com.honjok.app.product;

import java.util.List;
import java.util.Map;

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

	public void insertReview(com.honjok.app.vo.productReviewVO productreviewvo) {
		mybatis.insert("ProductMapper.insertReview",productreviewvo);
		
	}

	//리뷰 게시물 
	public int getTotalCount(String pNum) {
		
		return mybatis.selectOne("ProductMapper.getTotalCount",pNum);
	}

	public List<productReviewVO> getreviewList(Map map) {
		return mybatis.selectList("ProductMapper.getreviewList", map);
	}
	
}
