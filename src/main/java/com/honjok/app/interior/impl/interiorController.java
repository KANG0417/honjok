package com.honjok.app.interior.impl;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.honjok.app.vo.CommInteriorVO;

@Controller
@RequestMapping("/interior")
public class interiorController {
	
	@Autowired
	private InteriorService interiorService;
	
	@RequestMapping("/interiorAllList.do")
	public String interiorAllList(Model model) {
		System.out.println("===>인테리어게시판 전체 조회");
		List<CommInteriorVO> CommInteriorList = interiorService.BoardAllList();
		model.addAttribute("interiorList", CommInteriorList);
		System.out.println(CommInteriorList.toString());
		return "InBoardList.jsp";
	}
	
	@RequestMapping("/getInterior.do")
	public String getinteriorSelect(Model model, CommInteriorVO cvo) {
		System.out.println("===>인테리어게시판 하나 조회");
		CommInteriorVO CommInterior = interiorService.getBoardList(cvo);
		System.out.println(CommInterior);
		model.addAttribute("interiorSelect", CommInterior);
		return "InBoardDetail.jsp";
	}
	
	@RequestMapping("/insertInteriorB.do")
	public String insertBoard(CommInteriorVO cvo) {
		System.out.println(">>> 글 등록 처리 - insertBoard()");
	/*	 *** 파일 업로드 처리 ********
		 * MultipartFile 인터페이스 주요 메소드 
		 * String getOriginalFilename() : 업로드한 파일명 찾기
		 * void transferTo(File destFile) : 업로드한 파일을 destFile에 저장
		 * boolean isEmpty() : 업로드한 파일의 존재여부(없으면 true 리턴)*/
		 
		/*MultipartFile uploadFile = getUploadFile();
		System.out.println("uploadFile : " + uploadFile);
		
		if (!uploadFile.isEmpty()) {//파일이 있으면(비어있지 않으면)
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File("c:/MyStudy/temp/" + fileName));
		}
		*/

			interiorService.insertBoard(cvo);
/*			interiorService.insertBoard2(cvo);*/

			System.out.println(cvo);
		return "interiorAllList.do";
	}
	
	@RequestMapping("/updateInterior")
	public String updateBoard(CommInteriorVO cvo) {
		
	}
}
