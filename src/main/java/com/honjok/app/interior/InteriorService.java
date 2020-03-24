package com.honjok.app.interior;

import java.util.List;
import java.util.Map;

import com.honjok.app.vo.CommInteriorVO;
import com.honjok.app.vo.CommunityVO;
import com.honjok.app.vo.LikesVO;
import com.honjok.app.vo.commReplyVO;

public interface InteriorService {
	//게시물
	List<CommInteriorVO> BoardAllList(Map<String, Integer> pagingMap);
	CommInteriorVO getBoardList(CommInteriorVO cvo);
	public void insertBoard(CommInteriorVO cvo);
	public void updateBoard(CommInteriorVO cvo);
	public void deleteBoard(CommInteriorVO cvo);
	
	//게시물 페이징, 조회수
	public int selectAllCount();
	public void boardHitsUpdate(int comSeq);
	
	//게시물 좋아요
	public LikesVO insertLikes(LikesVO livo);
/*	public void updateLikes(LikesVO livo);
	public int selectLikes(int comSeq);*/
	
	//게시물 댓글달기
	public void insertComment(commReplyVO rvo);
	List<commReplyVO> replyList(int parseInt);
}
