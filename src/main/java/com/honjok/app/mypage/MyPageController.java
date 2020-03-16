package com.honjok.app.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.honjok.app.vo.UserVO;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@Autowired
	private MyPageService mypages;
	
	//회원정보 id로 조회
	@RequestMapping("/selectMypage.do")
	public String oneUser(UserVO uvo, HttpSession httpSession, HttpServletRequest request,
			HttpServletResponse response) {

		mypages.selectOne(uvo);
		return "myPage.jsp";
	}
	
	//주문내역 id로 조회
	@RequestMapping("/selectOrder.do")
	public String oneOrder(UserVO uvo, HttpSession httpSession, HttpServletRequest request,
			HttpServletResponse response) {
		
		mypages.selectOne(uvo);
		return "myPage.jsp";
	}
	
	//
}
