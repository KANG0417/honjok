package com.honjok.app.admin;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.honjok.app.user.UserService;
import com.honjok.app.vo.AdminVO;




@Controller
public class adminController {
	
	@Autowired
	private adminService adminService;
	
	
	//썸머노트 상세입력 시 이미지 업로드 AJAX 컨트롤러
	@RequestMapping(value = "/admin/imageUpload.do", method = RequestMethod.POST, produces = "application/text; charset=utf-8")
	@ResponseBody
	public String handleFileUpload(@RequestParam("uploadFile") MultipartFile multiPartFile) {
		System.out.println("이쪽으로 넘어왔음");
		String filePath = "C:/Users/bitcamp/Documents/GitHub/honjok/src/main/webapp/resources/img/"; // 원하는위치 (storage로 잡아주세요)
		//"C:/Users/bitcamp/Documents/GitHub/honjok/src/main/webapp/resources/img/"
		String fileName = multiPartFile.getOriginalFilename();
		File file = new File(filePath, fileName);
		try {
			FileCopyUtils.copy(multiPartFile.getInputStream(), new FileOutputStream(file)); // spring저장소에서 storage로 복사
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println(file);
		return fileName;
	}
	
	//상품등록 시 INSERT시키는 컨트롤러
	@RequestMapping(value="/admin/productWrite.do", method=RequestMethod.POST)
	public String signUp(AdminVO vo, HttpServletRequest request, @RequestParam MultipartFile thumnail) {
		System.out.println("thumnail");
		String filePath = "C:/Users/bitcamp/Documents/GitHub/honjok/src/main/webapp/resources/img/";
		try {
			FileCopyUtils.copy(thumnail.getInputStream(),
					new FileOutputStream(new File(filePath, thumnail.getOriginalFilename()))); // spring저장소에서 storage로 복사
		} catch (IOException e) {
			e.printStackTrace();
		}	
		vo.setThumnailImg(thumnail.getOriginalFilename());
		adminService.insertProduct(vo);
		System.out.println("vo :" + vo);
		return "index.jsp";

    }
}
