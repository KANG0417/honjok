package com.honjok.app.info;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.honjok.app.vo.CommInfoVO;
import com.honjok.app.vo.CommunityVO;
import com.honjok.app.vo.UploadVO;
import com.honjok.app.vo.commReplyVO;
import com.honjok.app.vo.replyUploadVO;



@Service("honjokinfoService")
public class honjokinfoServiceImpl implements honjokinfoService {

   @Autowired
   private honjokInfoMapper Mapper;

   
   
   
   //댓글 insert
   @Override
	public void insertReview(commReplyVO commreplyvo) {
		Mapper.inertReview(commreplyvo);
	}
   
   //댓글 이미지 업로드
	@Override
	public void reviewUpload(replyUploadVO replyuploadvo) {
		System.out.println("reviewUpload 실행");
		Mapper.insertReviewImage(replyuploadvo);
	}

   
   //글 등록
	@Override
	public void insertCommInfoVO(CommInfoVO comI) {
		   System.out.println(comI);
		      System.out.println("implement  전");
		      Mapper.insertCommInfoVO(comI);
		      System.out.println("implement  후");
		
	}
	
	
	//메뉴 파일 insert
	@Override
	public void FileUpload(UploadVO uploadvo) {
		System.out.println(uploadvo);
		Mapper.insertFileUpload(uploadvo);
	}

	
	//좋아요 ID저장
	@Override
	public void inserLikesId(Map<String, String> map) {
		Mapper.inserLikesId(map);
		
	}


	//insert끝




	//페이징 처리 갯수 selectAll
	@Override
	public List<CommunityVO> selectAll(Map<String, Integer> pagingMap) {
		
		 List<CommunityVO> list = Mapper.selectAll(pagingMap);
		 
		return list;
	}
	
	
	//페이징처리 개숫 select
	@Override
	public List<CommInfoVO> selectInfo(Map<String, Integer> pagingMap) {
		List<CommInfoVO> list = Mapper.selectInfo(pagingMap);
		return list;
	}
	
	//페이징 처리 위한 총 갯수 
	@Override
	public int selectAllCount() {
		
		return Mapper.selectAllCount();
	}
	
	// 메뉴 사진 select
	@Override
	public List<UploadVO[]> getFileName(String comSeq) {
			
		return Mapper.getFileName(comSeq);
	}



	//info테이블 조회
	@Override
	public CommInfoVO select(String comSeq) {
		
		CommInfoVO CommInfoVO = Mapper.select(comSeq);
		return CommInfoVO;
	}
	
	//리뷰데이터 조회
	@Override
	public List<commReplyVO> getReview(String comSeq) {
			List<commReplyVO> getReview = Mapper.getReview(comSeq);
		return getReview;
	}
	
	//리뷰 이미지 조회 
	@Override
	public List<replyUploadVO> getReviewImg(String idx) {

		List<replyUploadVO> getReviewImt = Mapper.getReviewImg(idx);
			
		return getReviewImt;
	}


	// community 삭제
	@Override
	public void delete(String comSeq) {
		Mapper.delete(comSeq);
	}


	
	
	// community 업데이트 
	@Override
	public void uptate(CommInfoVO comI) {
		Mapper.uptate(comI);
		
	}

	//likes업데이트
	@Override
	public void inserLikesUp(String comSeq) {
		Mapper.insertLikesUP(comSeq);
		
	}






	








	












	

	



	


   
   
}