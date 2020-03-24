package com.honjok.app.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.honjok.app.vo.CommInteriorVO;
import com.honjok.app.vo.UserVO;

@Service("MyPageService")
public class MyPageServiceImpl implements MyPageService {
	
	@Autowired
	private MypageDAO myDAO;
	
	//id로 회원 정보 조회
	public UserVO getUser(UserVO uvo) {
		return myDAO.getUser(uvo);
	}

	//id로 본인 게시물 조회 
	@Override
	public List<CommInteriorVO> getSelectBoard(CommInteriorVO cvo) {
		return myDAO.getSelectBoard(cvo);
		}
}
