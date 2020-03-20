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

import com.honjok.app.vo.productReviewPagingVO;
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
		
			service.insertReview(productreviewvo);
	}


	@RequestMapping("ProductReview.do")
	public void ProductReview(String cPage, String pNum) {
		System.out.println(cPage);
		System.out.println(pNum);
		
		//페이징 객체 생성
		productReviewPagingVO p  = new productReviewPagingVO();
		
		
		//1. 전체 게시물의 수 구하기 totalRecord 작성한 총 게시물
		p.setTotalRecord(service.getTotalCount(pNum));
		System.out.println("전체개시글수 : " + p.getTotalRecord());
		//계산 전체 페이지 토탈 레코드에서 페이지장 표시할 개수 값 나누고 나머니 존재 할씨 1증가 
		p.setTotalPage();
		System.out.println("전체페이지수  : " + p.getTotalPage());
		
		//2.현재 페이지 구하거(default : 1)
		if(cPage != null) {
			p.setNowPage(Integer.parseInt(cPage));
		}
		
		//3. 현재페이지의 시작번호(begin)와 끝번호(end) 구하기 
		//현재 페이지  	   2                표시할 페이지 수 5
		p.setEnd(p.getNowPage() * p.getNumPerPage()); //10
		p.setBegin(p.getEnd() - p.getNumPerPage());  //10 - 5 = 5 
		
		
		
		System.out.println("시작번호begin : " + p.getBegin());
		System.out.println("끝번호 end : " + p.getEnd());
		
		//블록 계산하기(block) 계산하기 
		//4. 블록의 시작 페이지, 끝페이지 구하기 (현재페이 사용)
		int nowPage = p.getNowPage();
		//  블록당 표시 계수 	
		
		//현재 블록 시작 페이지 (12 - 1) /  10 * 10 +1  
		int beginPage = (nowPage-1) / p.getPagePerBlock() *  p.getPagePerBlock() +1;
		
		//현재블록의 시작 페이지 번호 
		p.setBeginPage(beginPage);
		
		// 현재블록 끝번호   현재 블록의 사작 페이지 12 +   10-1  블록당 표시하는 갯수  
		p.setEndPage(p.getBeginPage() + p.getPagePerBlock() -1);
		
		//   21 보다         >        전체 페이지 갯수 
		if(p.getEndPage() > p.getTotalPage()) {
			
			p.setEndPage(p.getTotalPage());
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	

}
