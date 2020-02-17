package com.honjok.app.info;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.honjok.app.vo.CommInfoVO;
import com.honjok.app.vo.CommunityVO;

@Controller
@RequestMapping(value = "/honjokInfo") 
public class list {
   
   @Autowired
   honjokinfoService service; 

   @RequestMapping("/insert.do")
   public String lists(CommunityVO com, CommInfoVO comI) {
      
      System.out.println(com);
      System.out.println(comI);
      
      service.inserthonjokinfo(com);
      
      System.out.println("실행됐나요?");
     
      return "/honjokInfo/select.do";
      
    
   }
   
   @RequestMapping("/select.do")
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
	  
	  System.out.println(section_);
	  System.out.println(pageNum_);
	  
	   Map<String,Integer> pagingMap = new HashMap<String, Integer>();
	   
	   pagingMap.put("section", Integer.parseInt(section_));
	   pagingMap.put("pageNum", Integer.parseInt(pageNum_));
	   
	   System.out.println("글자나오나요/");
	   List<CommunityVO> list = service.selectAll(pagingMap);
	   
	   int countList = service.selectAllCount();	
	   
	   System.out.println(countList);
	   
	   model.addAttribute("pageNum", pageNum_);
	   model.addAttribute("section", section_);
	   model.addAttribute("CommunityVOList",list);
	   model.addAttribute("countList", countList);
	  
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