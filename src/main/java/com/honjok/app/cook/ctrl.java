package com.honjok.app.cook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.honjok.app.vo.CommunityVO;
import com.honjok.app.vo.CookVO;

@Controller
@RequestMapping("/cook")
public class ctrl {

   @Autowired
   CookService cookservice; 
   
 
   @RequestMapping("/getDetatil.do")
   public String select(String com_seq ,Model model) {
	   
	  System.out.println(com_seq);
	  CommunityVO com =cookservice.select(com_seq);
	  
	  System.out.println(com);
	  model.addAttribute("vo",com);
	   return "/cook/detail.jsp";
   }
   
  

}