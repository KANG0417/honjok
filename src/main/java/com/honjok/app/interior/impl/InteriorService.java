package com.honjok.app.interior.impl;

import java.util.List;
import java.util.Map;

import com.honjok.app.vo.CommInteriorVO;
import com.honjok.app.vo.CommunityVO;

public interface InteriorService {
	List<CommInteriorVO> BoardAllList(Map<String, Integer> pagingMap);
	CommInteriorVO getBoardList(CommInteriorVO cvo);
	public void insertBoard(CommInteriorVO cvo);
	public void updateBoard(CommInteriorVO cvo);
	public void deleteBoard(CommInteriorVO cvo);
	public int selectAllCount();
	void boardHitsUpdate(int com_seq);

}
