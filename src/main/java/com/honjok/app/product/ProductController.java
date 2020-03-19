package com.honjok.app.product;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

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
public class ProductController {

	@Autowired
	ProductService service;

	private static String CURR_IMAGE_REPO_PATH = "";

	@RequestMapping("/Product.do")
	public String ProductVO(String pNum, Model model) {

		System.out.println(pNum);
		productVO productvo = service.ProductVO(pNum);

		productvo.setProductreviewvo(service.ProductreviewVOList(pNum));

		System.out.println(productvo);

		System.out.println(productvo.getProductreviewvo());

		model.addAttribute("productvo", productvo);

		return "/Product/ProductDetail.jsp";

	}

	/* , */
	@RequestMapping("/Review.do")
	@ResponseBody
	public void Review(productReviewVO productreviewvo, MultipartHttpServletRequest multiFile, String imgArray)
			throws IllegalStateException, IOException {

		String[] imgs = imgArray.split(",");

		System.out.println(productreviewvo);

		CURR_IMAGE_REPO_PATH = "C:/Users/bitcamp/Documents/GitHub/honjok/src/main/webapp/resources/img/review";

		List<MultipartFile> fileList = multiFile.getFiles("file");
		System.out.println("fileList " + fileList);
		int i = 0;
		for (MultipartFile mf : fileList) {
			
			String OriginalFilename = mf.getOriginalFilename();
			  String FileExtension = OriginalFilename.substring(OriginalFilename.lastIndexOf("."));

			System.out.println("OriginalFilename " + OriginalFilename);

			File file = new File(CURR_IMAGE_REPO_PATH + "\\" + OriginalFilename);
			if (mf.getSize() != 0) {
				if (!file.exists()) {
					if (file.getParentFile().mkdirs()) {
						file.createNewFile();
					}
				}
			}
			
			mf.transferTo(new File(CURR_IMAGE_REPO_PATH + "\\" + OriginalFilename));

			for (String img : imgs) {
				System.out.println(img);
				System.out.println(OriginalFilename);
				if (img.equals(OriginalFilename)) {
					System.out.println("for 실행됨");
					String path = "C:/Users/bitcamp/Documents/GitHub/honjok/src/main/webapp/resources/img/review/"+OriginalFilename;
					file = new File(path);
					System.out.println(path);
					if(file.exists()) {
						file.delete();
						System.out.println("삭제됨");
					}

				} 

			}
			
			
		// 첨부된파일 체크 및 경로에 파일이 없으면 그경로에 해당 하는 디랙토리 만듬

				// 파일 이름 변겅
				file = new File(CURR_IMAGE_REPO_PATH + "\\" + OriginalFilename);
				 if(file.exists()){
					 OriginalFilename = UUID.randomUUID().toString()+FileExtension;
					 file.renameTo(new File(CURR_IMAGE_REPO_PATH + "\\" + OriginalFilename));
						if (i == 0) {
							productreviewvo.setPhotoImage1(OriginalFilename);
						
						} else {
							productreviewvo.setPhotoImage2(OriginalFilename);
						}
						i++;
				 }
		

					System.out.println(productreviewvo);
	

		}
	}
}
