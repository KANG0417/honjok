package com.honjok.app.interior.impl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;
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
	/*	 
		MultipartFile uploadFile = getUploadFile();
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
	

	@RequestMapping(value="fileupload.do", method=RequestMethod.POST)
	   @ResponseBody
	   public String fileUpload(HttpServletRequest req, HttpServletResponse resp, 
	                MultipartHttpServletRequest multiFile) throws Exception {
	      JsonObject json = new JsonObject();
	      PrintWriter printWriter = null;
	      OutputStream out = null;
	      MultipartFile file = multiFile.getFile("upload");
	      if(file != null){
	         if(file.getSize() > 0 && StringUtils.isNotBlank(file.getName())){
	            if(file.getContentType().toLowerCase().startsWith("image/")){
	               try{
	                  String fileName = file.getName();
	                  byte[] bytes = file.getBytes();
	                  String uploadPath = req.getServletContext().getRealPath("/img");
	                  System.out.println(req.getServletContext().getRealPath("/img"));
	                  File uploadFile = new File(uploadPath);
	                  if(!uploadFile.exists()){
	                     uploadFile.mkdirs();
	                  }
	                  fileName = UUID.randomUUID().toString();
	                  uploadPath = uploadPath + "/" + fileName;
	                  out = new FileOutputStream(new File(uploadPath));
	                       out.write(bytes);
	                       
	                       printWriter = resp.getWriter();
	                       resp.setContentType("text/html");
	                       String fileUrl = req.getContextPath() + "/img/" + fileName;
	                       System.out.println(req.getContextPath() + "/img/" + fileName);
	                       
	                       json.addProperty("uploaded", 1);
	                       json.addProperty("fileName", fileName);
	                       json.addProperty("url", fileUrl);
	                       
	                       printWriter.println(json);
	                   }catch(IOException e){
	                       e.printStackTrace();
	                   }finally{
	                       if(out != null){
	                           out.close();
	                       }
	                       if(printWriter != null){
	                           printWriter.close();
	                       }      
	                       
	               }
	            }
	         }
	      }
	      return null;
	   }
	
	@RequestMapping("/updateInterior.do")
	public String updateBoard(/*@ModelAttribute("board")*/ CommInteriorVO cvo) {
		System.out.println(">>> 글 수정 처리 - updateBoard()");
		System.out.println("> board vo : " + cvo);

        try{
            interiorService.updateBoard(cvo);
        } catch (Exception e){
            e.printStackTrace();
        }        
        return "interiorAllList.do?";
    }
	
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(CommInteriorVO cvo) {
		System.out.println(">>> 글 삭제 처리 - deleteBoard()");
		
		interiorService.deleteBoard(cvo);
		return "getInterior.do";
	}
}
