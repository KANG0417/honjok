package com.honjok.app.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.honjok.app.vo.UserVO;

@Service("MyPageService")
public class MyPageServiceImpl implements MyPageService {
	
	@Autowired
	private MypageDAO myDAO;
	
	//id로 회원 정보 조회
	public UserVO getUser(UserVO uvo) {
		return myDAO.getUser(uvo);
	}

	@Override
	public void selectOne(UserVO uvo) {
		// TODO Auto-generated method stub
		
	}

	//id로 회원 
/*	@Override
	public void selectOne(String gg) {
		return gg;
	}*/
}
