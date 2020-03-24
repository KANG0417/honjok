package com.honjok.app.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.honjok.app.vo.CommInteriorVO;
import com.honjok.app.vo.UserVO;


public interface MyPageService {
	//id로 회원정보 조회
	public UserVO getUser(UserVO uvo);

	//id로 인테리어 게시물 조회
	List<CommInteriorVO> getSelectBoard(CommInteriorVO cvo);
}
