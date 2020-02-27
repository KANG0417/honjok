package com.honjok.app.info;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
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
import com.honjok.app.vo.UploadVO;
import com.honjok.app.vo.commReplyVO;
import com.honjok.app.vo.replyUploadVO;

@Controller
@RequestMapping(value = "/honjokInfo")
public class list {

	@Autowired
	honjokinfoService service;

	private static  String CURR_IMAGE_REPO_PATH = "";

	@RequestMapping("/insert.do")
	public String lists(CommInfoVO comI, MultipartHttpServletRequest multiFile) throws IOException {
		
		CURR_IMAGE_REPO_PATH = "C:/Users/bitcamp/Documents/GitHub/honjok/src/main/webapp/resources/img/menu";
		
		System.out.println(comI);

		// content 공백 처리
		String a = comI.getContent();
		comI.setContent(a.replaceAll("\r\n", ""));

		// service.insertCommunity(com);
		service.insertCommInfoVO(comI);

		// 파일업로드
		List<String> fileList = new ArrayList<String>();

		Iterator<String> fileNames = multiFile.getFileNames();
		System.out.println("src value : " + fileNames);
 
		while (fileNames.hasNext()) {
			String fileName = fileNames.next();

			// 첨부된 파일 이름 가져오기
			MultipartFile mFile = multiFile.getFile(fileName);
			System.out.println(mFile);

			// 파일 실제 이름 가져오기
			String originalFileName = mFile.getOriginalFilename();
			System.out.println(originalFileName);

			// 파일 이름 하나씩 저장
			fileList.add(originalFileName);
			System.out.println(fileList);
			
			File file = new File(CURR_IMAGE_REPO_PATH + "\\" + fileName);

			// 첨부된파일 체크 및 경로에 파일이 없으면 그경로에 해당 하는 디랙토리 만듬
			if (mFile.getSize() != 0) {
				if (!file.exists()) {
					if (file.getParentFile().mkdirs()) {
						file.createNewFile();
					}
				}

				//파일 이름 변겅 	 
				originalFileName = UUID.randomUUID().toString();
				System.out.println(originalFileName);
				mFile.transferTo(new File(CURR_IMAGE_REPO_PATH + "\\" + originalFileName));
				UploadVO uploadvo = new UploadVO();
				uploadvo.setUp_img_name(originalFileName);

				service.FileUpload(uploadvo);
			}
		}

		return "/honjokInfo/select.do";

	}
	
	@RequestMapping("/reviewInsert.do")
	@ResponseBody
	public String reviewInsert(commReplyVO commreplyvo, MultipartHttpServletRequest multiFile) throws IOException {
		System.out.println(commreplyvo);

		CURR_IMAGE_REPO_PATH  = "C:/Users/bitcamp/Documents/GitHub/honjok/src/main/webapp/resources/img/review";
		// 파일업로드
				List<String> fileList = new ArrayList<String>();

				Iterator<String> fileNames = multiFile.getFileNames();
				System.out.println("src value : " + fileNames);
		 
				//리뷰 데이터 저장
				service.insertReview(commreplyvo);
				
				
				while (fileNames.hasNext()) {
					String fileName = fileNames.next();

					// 첨부된 파일 이름 가져오기
					MultipartFile mFile = multiFile.getFile(fileName);
					System.out.println(mFile);

					// 파일 실제 이름 가져오기
					String originalFileName = mFile.getOriginalFilename();
					System.out.println(originalFileName);

					// 파일 이름 하나씩 저장
					fileList.add(originalFileName);
					System.out.println(fileList);
										
					File file = new File(CURR_IMAGE_REPO_PATH + "\\" + fileName);

					// 첨부된파일 체크 및 경로에 파일이 없으면 그경로에 해당 하는 디랙토리 만듬
					if (mFile.getSize() != 0) {
						if (!file.exists()) {
							if (file.getParentFile().mkdirs()) {
								file.createNewFile();
							}
						}

						//파일 이름 변겅 	 
						originalFileName = UUID.randomUUID().toString();
						System.out.println(originalFileName);
						mFile.transferTo(new File(CURR_IMAGE_REPO_PATH + "\\" + originalFileName));
						
						replyUploadVO replyupload = new replyUploadVO();
						replyupload.setCom_seq(commreplyvo.getCom_seq());
						replyupload.setUp_img_name(originalFileName);
						
						System.out.println(replyupload);

						service.reviewUpload(replyupload);

					}
				}
			
				
				return "ss";
	}

	@RequestMapping("/select.do")
	public String select(Model model, @RequestParam(required = false) String section,
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

		// community 조회
		List<CommunityVO> list = service.selectAll(pagingMap);

		// comminfo 조회
		List<CommInfoVO> infoList = service.selectInfo(pagingMap);

		// 페이징 처리위해 전체 조회
		int countList = service.selectAllCount();
		System.out.println("총게시글수" + countList);

		model.addAttribute("infoList", infoList);
		model.addAttribute("pageNum", pageNum_);
		model.addAttribute("section", section_);
		model.addAttribute("CommunityVOList", list);
		model.addAttribute("countList", countList);

		return "/honjokInfo/list.jsp";

	}

	@RequestMapping("/get.do")
	public String select(String com_seq, Model model) {
		System.out.println("com_seq값" + com_seq);

		// 업로드파일 가져오기
		CommInfoVO CommInfoVO = service.select(com_seq);
		
		List<UploadVO[]> UploadList = new ArrayList<UploadVO[]>();
		//메뉴사진 가져오기
		UploadList.addAll(service.getFileName(com_seq));
		System.out.println("uploadList" + UploadList);
		
		
		//리뷰 데이터 가져오기
		List<commReplyVO> reply = service.getReview(com_seq);
		
		
		
		
		for(commReplyVO commreplyvo :reply) {
			String idx = commreplyvo.getIdx();
			System.out.println(idx);
			commreplyvo.setReplyuploadvo(service.getReviewImg(idx));
		}
		
		
		System.out.println(reply);
		
		

		
		model.addAttribute("reply",reply);
		model.addAttribute("UploadList", UploadList);
		model.addAttribute("CommInfoVO", CommInfoVO);
		
		
		
		
		
		
		return "/honjokInfo/get.jsp";
	}
	
	@RequestMapping("likes.do")
	public Map likes() {
		
		System.out.println("좋아요 업데이트 시작 ");
		
		
		
		return null;
	}

	@RequestMapping("/delete.do")
	public String delete(String com_seq, Model model) {
		System.out.println(" com_seq값" + com_seq);
		service.delete(com_seq);
		return "/honjokInfo/select.do";
	}

	@RequestMapping("/update.do")
	public String update(CommInfoVO comI) {

		System.out.println("com값: " + comI);

		String a = comI.getContent();
		comI.setContent(a.replaceAll("\r\n", ""));

		service.uptate(comI);

		return "/honjokInfo/select.do";

	}

	@RequestMapping(value = "fileupload.do", method = RequestMethod.POST)
	@ResponseBody
	public String fileUpload(HttpServletRequest req, HttpServletResponse resp, MultipartHttpServletRequest multiFile)
			throws Exception {
		JsonObject json = new JsonObject();
		PrintWriter printWriter = null;
		OutputStream out = null;
		MultipartFile file = multiFile.getFile("upload");
		if (file != null) {
			if (file.getSize() > 0 && StringUtils.isNotBlank(file.getName())) {
				if (file.getContentType().toLowerCase().startsWith("image/")) {
					try {
						String fileName = file.getName();
						byte[] bytes = file.getBytes();

						// 경로설정                     
						String uploadPath = "C:/Users/bitcamp/Documents/GitHub/honjok/src/main/webapp/resources/img";
						System.out.println(uploadPath);

						// 파일저장
						File uploadFile = new File(uploadPath);

						// 디렉토리 없다면 생성
						if (!uploadFile.exists()) {
							uploadFile.mkdirs();
						}

						// 이름에 유일한 식별자 생성
						fileName = UUID.randomUUID().toString();
						uploadPath = uploadPath + "/" + fileName;
						// 파일 저장
						out = new FileOutputStream(new File(uploadPath));
						out.write(bytes);


						printWriter = resp.getWriter();
						resp.setContentType("text/html");
						String fileUrl = "/app/resources/img/" + fileName;

						System.out.println(req.getContextPath() + "/img/" + fileName);

						// json 데이터로 등록
						// {"uploaded" : 1, "fileName" : "test.jpg", "url" : "/img/test.jpg"}
						// 이런 형태로 리턴이 나가야함.

						json.addProperty("uploaded", 1);
						json.addProperty("fileName", fileName);
						json.addProperty("url", fileUrl);

						System.out.println(fileUrl);
						System.out.println(fileName);

						printWriter.println(json);
					} catch (IOException e) {
						e.printStackTrace();
					} finally {
						if (out != null) {
							out.close();
						}
						if (printWriter != null) {
							printWriter.close();
						}

					}
				}
			}
		}
		return null;
	}
	
}
