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
   
   @RequestMapping("/get.do")
   public String select(String com_seq ,Model model) {
	   System.out.println("알려줘" + com_seq);
	   
	   CommunityVO comunity = service.select(com_seq);
	   model.addAttribute("CommunityVO",comunity);
	   return "/honjokInfo/get.jsp";
   }
   
   @RequestMapping("/delete.do")
   public String delete(String com_seq ,Model model) {
	   System.out.println("알려줘" + com_seq );
	   service.delete(com_seq);
	   return "/honjokInfo/select.do";
   }
   
   @RequestMapping("/update.do")
   public String update(CommunityVO com) {
	
	   	System.out.println("넘어온 데이터 : "+ com);
	   
	   	service.uptate(com);
	   
	   return "/honjokInfo/select.do";
	   
   }
  

}