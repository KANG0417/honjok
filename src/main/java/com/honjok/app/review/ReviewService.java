package com.honjok.app.review;

import java.util.List;
import java.util.Map;

public interface ReviewService {

	public int getReviewCount(Map<String, Object> paramMap) throws Exception;	
	
	public List<ReviewVO> getReviewList(Map<String, Object> paramMap) throws Exception;	
	
	public ReviewVO getReview(int rev_num, boolean updateHit) throws Exception;	// 한건이라 리스트없이 보드로.
	
	public int insertReview(ReviewVO review) throws Exception;
	
	public int updateReview(ReviewVO review) throws Exception;
	
	public int deleteReview(Map<String, Object> paramMap) throws Exception;
	
}
