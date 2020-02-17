package com.honjok.app.cook;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.honjok.app.vo.CommunityVO;
import com.honjok.app.vo.CookVO;
/*
@Controller
@RequestMapping(value = "/cook") 
public class ctrl {
   
   @Autowired
   CookService service; 

   @RequestMapping("/insert.do")
   public String lists(CookVO cvo) {
      
      System.out.println(cvo);
      service.insertCook(cvo);
      
      return "/cook/select.do";
   }
   public String select(Model model, 
		   @RequestParam(required = false) String section , 
		   @RequestParam(required = false) String pageNum) {
	   
	  System.out.println(section);
	  String section_ = section;
	  String pageNum_ = pageNum;
	  
  if(section == null) {
		  section_  =((section == null)?  "1" : section);
		  pageNum_  = ((pageNum == null)?  "1" : pageNum);
	  }
	   Map<String,Integer> pagingMap = new HashMap<String, Integer>();
	   
	   pagingMap.put("section", Integer.parseInt(section_));
	   pagingMap.put("pageNum", Integer.parseInt(pageNum_));
	   
	   List<CookVO> list = service.selectAll(pagingMap);
	   
	   int countList = service.selectAllCount();	
	   
	   model.addAttribute("pageNum", pageNum_);
	   model.addAttribute("section", section_);
	   model.addAttribute("CommunityVOList",list);
	   model.addAttribute("countList", countList);
	  
	   return "/cook/list.jsp";
   }
   */
//   @RequestMapping("/get.do")
//   public String select(String com_seq ,Model model) {
//	   
//	   CookVO cvo = service.select(com_seq);
//	   model.addAttribute("CommunityVO", cvo);
//	   return "/cook/detail.jsp";
//   }
//   
//   @RequestMapping("/delete.do")
//   public String delete(String com_seq ,Model model) {
//	   service.delete(com_seq);
//	   return "/cook/delete.do";
//   }
//   
//   @RequestMapping("/update.do")
//   public String update(CookVO cvo) {
//	
//	   	service.update(cvo);
//	   	   return "/cook/update.do";
//	   
//   }
//  
//
//}