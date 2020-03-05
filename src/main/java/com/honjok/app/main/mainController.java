package com.honjok.app.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.honjok.app.vo.AdminVO;
import com.honjok.app.vo.CommInteriorVO;


@Controller
public class mainController {
	
	@Autowired
	private mainService mainService;
	
	@RequestMapping(value="/getMainList.do")
	public String getBoardList(AdminVO vo, Model model) {
//		System.out.println(">>> 글 전체 목록 조회 처리-getBoardList()");
//		System.out.println("condition : " + vo.getSearchCondition());
//		System.out.println("keyword : " + vo.getSearchKeyword());
		
//		//null 체크 후 초기값 설정
//		if (vo.getSearchCondition() == null) {
//			vo.setSearchCondition("TITLE");
//		}
//		if (vo.getSearchKeyword() == null) {
//			vo.setSearchKeyword("");
////		}
//		System.out.println("null처리후 condition : " + vo.getSearchCondition());
//		System.out.println("null처리후 keyword : -" + vo.getSearchKeyword() + "-");
		
		//List<BoardVO> boardList = boardDAO.getBoardList();
		//List<BoardVO> boardList = boardDAO.getBoardList(vo);
		List<AdminVO> mainList = mainService.getMainList();
		model.addAttribute("mainList", mainList);
		System.out.println(mainList);
		return "index2.jsp";
	}
	
	@RequestMapping("/getMain.do")
	public String getinteriorSelect(Model model, AdminVO vo) {
		AdminVO mainVO = mainService.getMain(vo);
		model.addAttribute("mainDetail", mainVO);        	
		return "mainDetail.jsp";
	}
	
	
	
	
}
