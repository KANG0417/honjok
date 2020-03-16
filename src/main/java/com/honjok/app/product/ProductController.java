package com.honjok.app.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/produt")
public class  ProductController {

	
	   @Autowired 
	   ProductService service;
	  
	   
	   @RequestMapping("/Product.do")
	   public String ProductVO(String pNUm,Model model) {
	      
		   System.out.println(pNUm);
		   service.ProductVO(pNUm);
	      
	      return "/Product/ProductDetail.jsp";
	
}
}
