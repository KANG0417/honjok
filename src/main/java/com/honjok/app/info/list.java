package com.honjok.app.info;

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
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;
import com.honjok.app.vo.CommInfoVO;
import com.honjok.app.vo.CommunityVO;





@Controller
@RequestMapping(value = "/honjokInfo") 
public class list {
   
   @Autowired
   honjokinfoService service; 

   @RequestMapping("/insert.do")
   public String lists(CommInfoVO comI) {
      
     // System.out.println(com);
      System.out.println(comI);
      
      
      //content 공백 처리 
      String a = comI.getContent();
      comI.setContent(a.replaceAll("\r\n", ""));
      
      
      //service.insertCommunity(com);
      service.insertCommInfoVO(comI);
      
    
     
      return "/honjokInfo/select.do";
      
    
   }
   
   @RequestMapping("/select.do")
   public String select(Model model, 
         @RequestParam(required = false) String section , 
         @RequestParam(required = false) String pageNum) {
      
     System.out.println(section);
     String section_ = section;
     String pageNum_ = pageNum;
     
  if(section == null) {
        section_  =((section == null)?  "1" : section);
        pageNum_  = ((pageNum == null)?  "1" : pageNum);
     }
     
     System.out.println(section_);
     System.out.println(pageNum_);
     
      Map<String,Integer> pagingMap = new HashMap<String, Integer>();
      
      pagingMap.put("section", Integer.parseInt(section_));
      pagingMap.put("pageNum", Integer.parseInt(pageNum_));
      
    
      
      
      //community 조회 
      List<CommunityVO> list = service.selectAll(pagingMap);
 
      
      //comminfo 조회   
      List<CommInfoVO> infoList = service.selectInfo(pagingMap);
      
    	
      //페이징 처리위해 전체 조회
      int countList = service.selectAllCount();
      System.out.println("총게시글수"+countList);
      
    
      
      model.addAttribute("infoList",infoList);
      model.addAttribute("pageNum", pageNum_);
      model.addAttribute("section", section_);
      model.addAttribute("CommunityVOList",list);
      model.addAttribute("countList", countList);
     
      return "/honjokInfo/list.jsp";
      
   }
   
   
   
   @RequestMapping("/get.do")
   public String select(String com_seq ,Model model) {
      System.out.println("com_seq값" + com_seq);
      
      CommInfoVO CommInfoVO = service.select(com_seq);
      model.addAttribute("CommInfoVO",CommInfoVO);
      return "/honjokInfo/get.jsp";
   }
   
   
   
   
   @RequestMapping("/delete.do")
   public String delete(String com_seq ,Model model) {
      System.out.println(" com_seq값" + com_seq );
      service.delete(com_seq);
      return "/honjokInfo/select.do";
   }
   
   @RequestMapping("/update.do")
   public String update(CommInfoVO comI) {
   
         System.out.println("com값: "+ comI);
         
         String a = comI.getContent();
         comI.setContent(a.replaceAll("\r\n", ""));
      
         service.uptate(comI);
      
      return "/honjokInfo/select.do";
      
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


   }  
