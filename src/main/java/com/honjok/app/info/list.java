package com.honjok.app.info;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.honjok.app.vo.CommunityVO;


@Controller
@RequestMapping(value = "/honjokInfo") 
public class list {
   
   @Autowired
   honjokinfoService service; 

   @RequestMapping("/insert.do")
   public String lists(CommunityVO com) {
      
      System.out.println(com);
      
      service.inserthonjokinfo(com);
      
      System.out.println("실행됐나요?");
     
      return "/honjokInfo/select.do";
      
    
   }
   
   @RequestMapping("/select.do")
   public String select(Model model) {
	   
	   System.out.println("글자나오나요/");
	   List<CommunityVO> list = service.selectAll();
	   model.addAttribute("CommunityVOList",list);
	   return "/honjokInfo/list.jsp";
   }
   
   

}