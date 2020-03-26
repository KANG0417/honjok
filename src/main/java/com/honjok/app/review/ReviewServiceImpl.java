//package com.honjok.app.review;
//
//import java.util.List;
//import java.util.Map;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//
//@Service("ReviewService")
//public class ReviewServiceImpl implements ReviewService {
//	
//	@Autowired
//	private ReviewMapper reviewMapper;
//
//	
//	@Override
//	public int getReviewCount(Map<String, Object> paramMap) throws Exception {
//		
//		return reviewMapper.selectReviewCount(paramMap);
//	}
//
//	
//	@Override
//	public List<ReviewVO> getReviewList(Map<String, Object> paramMap) throws Exception {
//
//		return reviewMapper.selectReviewList(paramMap);
//	}
//
//	
//	@Override
//	public ReviewVO getReview(int rev_num, boolean updateHit) throws Exception {
//		
//		if(updateHit) {
//			// 조회수 증가..
//			reviewMapper.updateHitCnt(rev_num);
//		}
//		
//		ReviewVO review = reviewMapper.selectReview(rev_num);
//		
//		/*// 첨부파일 조회
//		Map<String, Object> paramMap = new HashMap<String, Object>();
//		
//		paramMap.put("ref_seq_no", review.getRev_num());
//		
//		List<FileItem> fileItemList =  fileItemMapper.selectFileItemList(paramMap);
//		
//		review.setFileItemList(fileItemList);*/
//		
//		return review;
//	}
//
//	
//	@Override
//	public int insertReview(ReviewVO review) throws Exception {
//		
//		int updCnt = reviewMapper.insertReview(review);
//		
////		if(updCnt > 0) {
////			throw new RuntimeException("강제로 예외 발생.");
////		}
////		
//		return updCnt;
//	}
//
//	@Override
//	public int updateReview(ReviewVO review) throws Exception {
//		
//		
//		return reviewMapper.updateReview(review);
//	}
//
//	@Override
//	public int deleteReview(Map<String, Object> paramMap) throws Exception {
//		
//		return reviewMapper.deleteReview(paramMap);
//	}
//
//}
