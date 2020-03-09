package com.honjok.app.interior.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.honjok.app.vo.CommInteriorVO;
import com.honjok.app.vo.LikesVO;

@Service("InteriorService")
public class InteriorServiceImpl implements InteriorService {

	@Autowired
	private CommInteriorDAOMybatis commDAO;
	
	//전체조회
	@Override
	public List<CommInteriorVO> BoardAllList(Map<String, Integer> pagingMap) {
		return commDAO.BoardAllList(pagingMap);
	}
	
	//하나조회
	@Override
	public CommInteriorVO getBoardList(CommInteriorVO cvo) {
		return commDAO.getInteriorOne(cvo);
	}
	
	//글입력
	public void insertBoard(CommInteriorVO cvo) {
		commDAO.insertBoard(cvo);
	}
	
	//글수정
	public void updateBoard(CommInteriorVO cvo) {
		commDAO.updateBoard(cvo);
	}

	//글삭제
	@Override
	public void deleteBoard(CommInteriorVO cvo) {
		commDAO.deleteBoard(cvo);
	}

	//페이징 전체갯수
	@Override
	public int selectAllCount() {
		return commDAO.selectCount();
	}
	
	//조회수 증가
	public void boardHitsUpdate(int comSeq) {
		commDAO.boardHitsUpdate(comSeq);
	}
	
	//좋아요 조회
	public int likesCount(int comSeq) {
		return commDAO.likesCount(comSeq);
	}
}
