package com.honjok.app.product;


import java.util.List;
import java.util.Map;

import com.honjok.app.vo.productQnaVO;
import com.honjok.app.vo.productReviewVO;
import com.honjok.app.vo.productVO;

public interface ProductService {

	productVO ProductVO(String pNum);

	List<productReviewVO> ProductreviewVOList(String pNum);

	void insertReview(productReviewVO productreviewvo);

	
	int getTotalCount(String pNum);

	List<productReviewVO> getreviewList(Map map);

	void inserQnaReview(productQnaVO productqnavo);
	
	//ONA 리뷰
	List<productQnaVO> productqnavoList(String pNum);

	int getQnaTotalCount(String pNum);

	List<productQnaVO> ProductQna(Map<String, Integer> map);

	
}
