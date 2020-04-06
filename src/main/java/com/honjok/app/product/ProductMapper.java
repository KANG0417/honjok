package com.honjok.app.product;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.productQnaVO;
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

	//qna 리뷰 글 등록
	public void inserQnaReview(productQnaVO productqnavo) {
		mybatis.insert("ProductMapper.inserQnaReview",productqnavo);
	}

	//리뷰글 조회
	public List<productQnaVO> productqnavoList(String pNum) {
		return mybatis.selectList("ProductMapper.productqnavoList", pNum);
	}

	public int getQnaTotalCount(String pNum) {
		return mybatis.selectOne("ProductMapper.getQnaTotalCount",pNum);
	}

	public List<productQnaVO> ProductQna(Map<String, Integer> map) {
		// TODO Auto-generated method stub
		return mybatis.selectList("ProductMapper.ProductQna", map);
	}

	public List<productVO> ProductList(Map<String, Object> map) {
		System.out.println(map.containsValue("topSearchKeyword"));
		if(!map.containsValue("topSearchKeyword")) {
			System.out.println("키있음");
			return mybatis.selectList("ProductMapper.ProductListSerch",map);
		}
		else {
			System.out.println("키없음");
			return mybatis.selectList("ProductMapper.ProductList",map);
		}
	}

	public int ProductListCount() {
		return mybatis.selectOne("ProductMapper.ProductListCount");
	}

	public int ProductListSerchCount(String topSearchKeyword) {
		System.out.println(topSearchKeyword);
		return mybatis.selectOne("ProductMapper.ProductListSerchCount",topSearchKeyword);
	}
	
}
