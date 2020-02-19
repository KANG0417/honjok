package com.honjok.app.interior.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.honjok.app.vo.CommInteriorVO;
import com.honjok.app.vo.CommunityVO;

@Service("InteriorService")
public class InteriorServiceImpl implements InteriorService {

	@Autowired
	private CommInteriorDAOMybatis commDAO;
	
	//전체조회
	@Override
	public List<CommInteriorVO> BoardAllList() {
		return commDAO.BoardAllList();
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
}
