package com.honjok.app.info;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.honjok.app.vo.CommunityVO;


@Controller
@RequestMapping(value = "/honjokInfo") 
public class list {
   
   @Autowired
   honjokinfoService service; 

   @RequestMapping("/insert.do")
   public void lists(CommunityVO com) {
      
      System.out.println(com);
      
      //service.inserthonjokinfo(com);
      
      System.out.println("실행됐나요?");
      
      
    
   }
   
   

}