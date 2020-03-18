package com.honjok.app.product;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.honjok.app.vo.productReviewVO;
import com.honjok.app.vo.productVO;

@Controller
@RequestMapping(value = "/Product")
public class  ProductController {

	
	   @Autowired 
	   ProductService service;
	   
		private static String CURR_IMAGE_REPO_PATH = "";
	   
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
	   
	   /*,*/
	   @RequestMapping("/Review.do")
	   @ResponseBody
	   public void Review(productReviewVO productreviewvo, MultipartHttpServletRequest multiFile) {
		System.out.println("안녕");

	    System.out.println(productreviewvo);
		   

		   
		  List<String> list = new ArrayList<String>();

		   CURR_IMAGE_REPO_PATH = "C:/Users/bitcamp/Documents/GitHub/honjok/src/main/webapp/resources/img/review";
			// 파일업로드
			List<MultipartFile> fileList = multiFile.getFiles("file");
			Iterator<String> fileNames = multiFile.getFileNames();
			System.out.println("src value : " + fileNames);
			 for (MultipartFile mf : fileList) {

					// 파일 실제 이름 가져오기
					String originalFileName = mf.getOriginalFilename();
					System.out.println(originalFileName);
			 }
	   }
}
