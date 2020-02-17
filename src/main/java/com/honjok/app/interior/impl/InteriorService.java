package com.honjok.app.interior.impl;

import java.util.List;

import com.honjok.app.vo.CommInteriorVO;
import com.honjok.app.vo.CommunityVO;

public interface InteriorService {
	List<CommInteriorVO> BoardAllList();
	CommInteriorVO getBoardList(CommInteriorVO cvo);
	static void insertBoard(CommInteriorVO cvo) {

	}

}
