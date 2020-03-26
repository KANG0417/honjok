package com.honjok.app.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.honjok.app.vo.CommInteriorVO;
import com.honjok.app.vo.OrderVO;
import com.honjok.app.vo.UserVO;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@Autowired
	private MyPageService mypages;
	
	//회원정보 id로 조회
	@RequestMapping("/selectMypage.do")
	@ResponseBody
	public UserVO getUser(UserVO uvo, Model model) {
		System.out.println(">>> 회원정보 조회");
		
		UserVO uservo = mypages.getUser(uvo);
		
		return uservo;
	}
	
	//--회원정보 수정
	@RequestMapping("/updateMypage.do")
	public String updateUser(UserVO uvo, Model model) {
		System.out.println(">>> 회원정보 수정 처리");
		mypages.updateUser(uvo);
		
		return "myPage.jsp";
	}
	
	//주문내역 id로 조회
	@RequestMapping("/selectOrder.do")
	@ResponseBody
	public String getOrder(OrderVO ovo, HttpSession httpSession, HttpServletRequest request,
			HttpServletResponse response) {
		
		mypages.getOrder(ovo);
		return "myPage.jsp";
	}
	
	//게시물 id로 조회
	//--인테리어 게시판 조회
	@RequestMapping("/selectBoard.do")
	@ResponseBody
	public List<CommInteriorVO> getSelectBoard(Model model, CommInteriorVO cvo) {
		System.out.println(cvo);
		List<CommInteriorVO> interiorMypage = mypages.getSelectBoard(cvo);
		System.out.println(interiorMypage);
		return interiorMypage;
	}
}