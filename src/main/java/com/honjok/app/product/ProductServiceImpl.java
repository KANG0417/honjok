package com.honjok.app.product;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.honjok.app.vo.productQnaVO;
import com.honjok.app.vo.productReviewVO;
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




@Override
public List<productReviewVO> ProductreviewVOList(String pNum) {

	List<productReviewVO> productReviewVO = mapper.productReviewVO(pNum);
		
	return productReviewVO;
}



//리뷰글 등록
@Override
public void insertReview(productReviewVO productreviewvo) {
	mapper.insertReview(productreviewvo);
}



//리뷰 전체 게시물 수 
@Override
public int getTotalCount(String pNum) {
	
	return mapper.getTotalCount(pNum);
}



//ajax 리뷰 글 가져오기 
@Override
public List<productReviewVO> getreviewList(Map map) {

	
	
	return mapper.getreviewList(map);
}



//qna 리뷰 글 등록
@Override
public void inserQnaReview(productQnaVO productqnavo) {
	System.out.println("");
	mapper.inserQnaReview(productqnavo);
	
}



//Ona 리뷰 조회 
@Override
public List<productQnaVO> productqnavoList(String pNum) {
	
	return mapper.productqnavoList(pNum);
}



//Qna 리뷰 카운트
@Override
public int getQnaTotalCount(String pNum) {
	return mapper.getQnaTotalCount(pNum);
}




@Override
public List<productQnaVO> ProductQna(Map<String, Integer> map) {
	
	return  mapper.ProductQna(map);
}



//상품리스트 가져오기 
@Override
public List<productVO> ProductList(Map<String, Object> map) {
	return mapper.ProductList(map);
}




@Override
public int ProductListCount() {
	return mapper.ProductListCount();
}




@Override
public int ProductListSerchCount(String topSearchKeyword) {
	return mapper.ProductListSerchCount(topSearchKeyword);
}


}

