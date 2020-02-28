package com.honjok.app.info;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.CommInfoVO;
import com.honjok.app.vo.CommunityVO;
import com.honjok.app.vo.UploadVO;
import com.honjok.app.vo.commReplyVO;
import com.honjok.app.vo.replyUploadVO;

@Repository("honjokInfomapper")
public class honjokInfoMapper {

	@Autowired
	private SqlSessionTemplate mybatis;

	//글등록 
	public void insertCommInfoVO(CommInfoVO comI) {

		System.out.println("mybatis 전");
		mybatis.insert("honjokInfoMapper.insert", comI);
		System.out.println(comI);
		System.out.println("mybatis 후");

	}
	
	//메뉴 파일 업로드 
	public void insertFileUpload(UploadVO uploadvo) {
		mybatis.insert("honjokInfoMapper.menuUplodat",uploadvo);
	}	
	
	
	//리뷰글 등록
		public void inertReview(commReplyVO commreplyvo) {
			System.out.println(commreplyvo);
			mybatis.insert("honjokInfoMapper.inertReview", commreplyvo);
		}

	//리뷰 이미지등록
		public void insertReviewImage(replyUploadVO replyuploadvo) {
			System.out.println("insertReviewImage까지 실행");
			mybatis.insert("honjokInfoMapper.insertReviewImage" , replyuploadvo);
			
		}
		
	
		
		//inset끝
	
	
	public List<CommunityVO> selectAll(Map<String, Integer> pagingMap) {

		System.out.println("selectAll 실행");
		List<CommunityVO> list = mybatis.selectList("honjokInfoMapper.selectAll", pagingMap);

		return list;

	}
	

	public List<CommInfoVO> selectInfo(Map<String, Integer> pagingMap) {
		List<CommInfoVO> list = mybatis.selectList("honjokInfoMapper.selectCommInfoVO",pagingMap);
		return list;
	}
	
	public List<UploadVO[]> getFileName(String comSeq) {
		return mybatis.selectList("honjokInfoMapper.getFileName",comSeq);
	}
	
	

	public int selectAllCount() {
		return mybatis.selectOne("honjokInfoMapper.selectAllCount");
	}

	public CommInfoVO select(String comSeq) {

		System.out.println("select실행");
		CommInfoVO CommInfoVO = mybatis.selectOne("honjokInfoMapper.select", comSeq);
		System.out.println(CommInfoVO);
		return CommInfoVO;

	}
	
	//리뷰 조회
	public List<commReplyVO> getReview(String comSeq) {
		List<commReplyVO> getReview = mybatis.selectList("honjokInfoMapper.getReview", comSeq);
		return getReview;
	}

	
	//리뷰이미지 조회
		public List<replyUploadVO> getReviewImg(String idx) {
			
			List<replyUploadVO>  getReviewImg = mybatis.selectList("honjokInfoMapper.getReviewImg", idx);
			
			System.out.println("뭐지"+getReviewImg);
			return getReviewImg;
		}
	
	
	//select 끝
	

	public void delete(String comSeq) {

		System.out.println("delete 실행");
		mybatis.delete("honjokInfoMapper.delete", comSeq);

	}
	
	
	
	
	

	public void uptate(CommInfoVO comI) {
		System.out.println("uptate");
		mybatis.update("honjokInfoMapper.uptate", comI);

	}

	//좋아요 업데이트 
			public void insertLikesUP(String comSeq) {
				System.out.println("좋아요 업데이트 Mapper");
				mybatis.update("honjokInfoMapper.likesUp", comSeq);
				
			}

	








	



}