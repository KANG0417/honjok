package com.honjok.app.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.honjok.app.vo.productVO;

@Controller
@RequestMapping(value = "/Product")
public class  ProductController {

	
	   @Autowired 
	   ProductService service;
	  
	   
	   @RequestMapping("/Product.do")
	   public String ProductVO(String pNum,Model model) {
	      
		   System.out.println(pNum);
		   productVO  productvo=  service.ProductVO(pNum);
		   
		   productvo.setProductreviewvo(service.ProductreviewVOList(pNum));
		   
	      System.out.println(productvo);
	      
	      System.out.println(productvo.getProductreviewvo());
	      
	      model.addAttribute("productvo",productvo);
	      
	      return "/Product/ProductDetail.jsp";
	
}
}
