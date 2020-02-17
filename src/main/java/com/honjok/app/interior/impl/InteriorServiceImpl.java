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
	
	@Override
	public List<CommInteriorVO> BoardAllList() {
		return commDAO.BoardAllList();
	}
	
	@Override
	public CommInteriorVO getBoardList(CommInteriorVO cvo) {
		return commDAO.getInteriorOne(cvo);
	}
	
	public insert
}
