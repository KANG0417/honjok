package com.honjok.app.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.honjok.app.vo.CommInteriorVO;
import com.honjok.app.vo.OrderVO;
import com.honjok.app.vo.UserVO;

@Service("MyPageService")
public class MyPageServiceImpl implements MyPageService {
	
	@Autowired
	private MypageDAO myDAO;
	
	//회원정보수정
	//---id로 회원 정보 조회
	public UserVO getUser(UserVO uvo) {
		return myDAO.getUser(uvo);
	}
	
	//---회원 정보 수정
	public void updateUser(UserVO uvo) {
		myDAO.updateUser(uvo);
	}

	//id로 주문내역 조회
	@Override
	public List<OrderVO> getOrder(OrderVO ovo) {
		return myDAO.getOrder(ovo);
	}
	
	//id로 본인 게시물 조회 
	@Override
	public List<CommInteriorVO> getSelectBoard(CommInteriorVO cvo) {
		return myDAO.getSelectBoard(cvo);
	}
}

