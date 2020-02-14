package com.honjok.app.interior.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.honjok.app.vo.CommInteriorVO;

@Service("InteriorService")
public class InteriorServiceImpl implements InteriorService {

	@Autowired
	private CommInteriorDAOMybatis commDAO;
	
	
	public InteriorServiceImpl() {
		System.out.println(">> InteriorServiceImpl() 실행");
	}

	@Override
	public List<CommInteriorVO> getInteriorList(CommInteriorVO vo) {
		return null;
	}

	//전체목록
	@Override
	public List<CommInteriorVO> interiorAllList() {
		System.out.println(">> 인테리어게시판 전체목록 ");
		System.out.println(commDAO.getInteriorList().toString());
		return commDAO.getInteriorList();
	}

	@Override
	public CommInteriorVO interiorSelect(String com_seq) {
		return commDAO.getInteriorSelect(com_seq);
	}
}
