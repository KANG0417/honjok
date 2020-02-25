package com.honjok.app.cook;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;
import com.honjok.app.vo.CommInfoVO;
import com.honjok.app.vo.CommInteriorVO;
import com.honjok.app.vo.CommunityVO;
import com.honjok.app.vo.CookVO;

@Controller
@RequestMapping("/cook") 
public class CookController {
   
   @Autowired
   CookService cookservice; 

   @RequestMapping("/CookAll.do")
   public String CookAll(Model model, @RequestParam(required = false) String section,
			@RequestParam(required = false) String pageNum) {
	   	System.out.println(section);
		String section_ = section;
		String pageNum_ = pageNum;

		if (section == null) {
			section_ = ((section == null) ? "1" : section);
			pageNum_ = ((pageNum == null) ? "1" : pageNum);
		}

		System.out.println(section_);
		System.out.println(pageNum_);

		Map<String, Integer> pagingMap = new HashMap<String, Integer>();

		pagingMap.put("section", Integer.parseInt(section_));
		pagingMap.put("pageNum", Integer.parseInt(pageNum_));
	   
		//cookvo 조회
	   List<CookVO> CookList = cookservice.CookAll(pagingMap);
	   //게시글 전체갯수
	   int allcount = cookservice.selectAllCount();
	   System.out.println("게시글수: "+allcount);
	   
	   model.addAttribute("cookList", CookList);
	   model.addAttribute("pageNum", pageNum_);
	   model.addAttribute("section", section_);
	   model.addAttribute("allCount", allcount);
	return "/cook/CookList.jsp";
   }
   
   @RequestMapping("/CookDetail.do")
	public String cookDetail(Model model, CookVO cvo) {
		System.out.println("Cook게시판 하나 조회입니다.");
		CookVO Cook = cookservice.selectOne(cvo);
		model.addAttribute("cookDetail", Cook);
		System.out.println(Cook);
		return "CookDetail.jsp";
	}
   
   @RequestMapping("/InsertCook.do")
   public String insert(CookVO ckvo) {
	   	
	   System.out.println(ckvo);
		  cookservice.insertCook(ckvo);
		  System.out.println("게시물 등록이 완료되었습니다.");
		  System.out.println(ckvo.toString());
		  return "/cook/CookAll.do";
   }
   
   @RequestMapping("/update.do")   
   public String updateBoard(/*@ModelAttribute("board")*/ CookVO cvo) {
		System.out.println(">>> 글 수정 처리 - update()");
		System.out.println("> board vo : " + cvo);

         cookservice.update(cvo);
         
         
         
       return "/cook/CookDetail.do";
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
                  File uploadFile = new File("C:/Users/bitcamp/Documents/GitHub/honjok/src/main/webapp/resources/img/");
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
   @RequestMapping("/delete.do")
	public String delete(String com_seq ,Model model) {
		System.out.println(com_seq);
		System.out.println(" 글 삭제");
		cookservice.delete(com_seq);
		
		return "/cook/CookAll.do";
	}

}