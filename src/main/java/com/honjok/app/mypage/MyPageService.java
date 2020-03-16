package com.honjok.app.mypage;

import org.springframework.stereotype.Service;

import com.honjok.app.vo.UserVO;


public interface MyPageService {

	public void selectOne(UserVO uvo);
	public UserVO getUser(UserVO uvo);
}
