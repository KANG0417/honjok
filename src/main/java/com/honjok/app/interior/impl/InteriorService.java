package com.honjok.app.interior.impl;

import java.util.List;

import com.honjok.app.vo.CommInteriorVO;

public interface InteriorService {
	static void insertComm() {
		
	}
	
	List<CommInteriorVO> getInteriorList(CommInteriorVO vo);
	List<CommInteriorVO> interiorAllList();
}
