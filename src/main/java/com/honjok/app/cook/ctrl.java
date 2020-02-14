//package com.honjok.app.cook;
//
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.honjok.app.vo.CommunityVO;
//import com.honjok.app.vo.CookVO;
//
//@Controller
//public class ctrl {
//
//   @Autowired
//   CookService service; 
//   
//   @RequestMapping("/getCookList.do")
//   public List<CookVO> getCookList(){
//	   
//	   return mybatis.selectList("");
//   }
//
//   
//   @RequestMapping("/getDetatil.do")
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