package com.honjok.app.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}

