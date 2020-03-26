package com.honjok.app.review;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReviewMapper {

	public int selectReviewCount(Map<String, Object> paramMap) throws Exception;	
	
	public List<ReviewVO> selectReviewList(Map<String, Object> paramMap) throws Exception;	
	
	public ReviewVO selectReview(int rev_num) throws Exception;
	
	public int insertReview(ReviewVO review) throws Exception;
	
	public int updateReview(ReviewVO review) throws Exception;
	
	public int deleteReview(Map<String, Object> paramMap) throws Exception;
	
	public int updateHitCnt(int rev_num) throws Exception;

	
}
