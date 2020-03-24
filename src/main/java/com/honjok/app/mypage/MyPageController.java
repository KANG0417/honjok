package com.honjok.app.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.honjok.app.vo.CommInteriorVO;
import com.honjok.app.vo.UserVO;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@Autowired
	private MyPageService mypages;
	
	//회원정보 id로 조회
	@RequestMapping("/selectMypage.do")
	public String getUser(UserVO uvo, HttpSession httpSession, HttpServletRequest request,
			HttpServletResponse response) {

		mypages.getUser(uvo);
		return "myPage.jsp";
	}
	
	/*//주문내역 id로 조회
	@RequestMapping("/selectOrder.do")
	public String getOrder(UserVO uvo, HttpSession httpSession, HttpServletRequest request,
			HttpServletResponse response) {
		
		mypages.selectOne(uvo);
		return "myPage.jsp";
	}*/
	
	//게시물 id로 조회
	//--인테리어 게시판 조회
	@RequestMapping("/selectBoard.do")
	public String getSelectBoard(Model model, String id) {
		CommInteriorVO interiorMypage = mypages.getSelectBoard(id);
		model.addAttribute("interiorMypage", interiorMypage);
		return "myPage.jsp";
	}
}