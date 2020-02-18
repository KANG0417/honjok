package com.honjok.app.cook;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.honjok.app.vo.CommInteriorVO;
import com.honjok.app.vo.CommunityVO;
import com.honjok.app.vo.CookVO;

@Controller
@RequestMapping("/cook") 
public class CookController {
   
   @Autowired
   CookService cookservice; 

   @RequestMapping("/CookAll.do")
   public String CookAll(Model model) {
	   System.out.println("Cook게시판 전체 조회입니다.");
	   List<CookVO> CookList = cookservice.selectAll();
	   model.addAttribute("cookList", CookList);
	return "/cook/CookList.jsp";
   }
   
   @RequestMapping("/CookDetail.do")
	public String cookDetail(Model model, CookVO ckvo) {
		System.out.println("Cook게시판 하나 조회입니다.");
		CookVO Cook = cookservice.getBoardList(ckvo);
		System.out.println(Cook);
		model.addAttribute("cookSelect", Cook);
		return "cook/CookDetail.jsp";
	}
   
   @RequestMapping("/InsertCook.do")
   public String lists(CookVO ckvo) {
      cookservice.insertCook(ckvo);
      return "/cook/insert.do";
   }
  
   
}