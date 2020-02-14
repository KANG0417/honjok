package com.honjok.app.interior.impl;

import java.util.List;

import com.honjok.app.vo.CommInteriorVO;

public interface InteriorService {
	static void insertComm(CommInteriorVO intervo) {
		
	}
	
	List<CommInteriorVO> getInteriorList(CommInteriorVO vo);
	List<CommInteriorVO> interiorAllList();

	CommInteriorVO interiorSelect(String com_seq);

}
