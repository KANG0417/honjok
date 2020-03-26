//package com.honjok.app.review;
//
//import java.lang.reflect.Member;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.honkok.app.util.PagingUtil;
//
//@Controller
//@RequestMapping("/review")
//public class ReviewController {
//
//	@Autowired
//	private ReviewService reviewService;
//	
////		@Autowired
////		private FileItemService fileItemService;
//	
//	
//	@RequestMapping("/reviewList")
//	public String reviewList(Model model, String searchType, String searchWord,
//			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
//			@RequestParam(value = "pageSize", required = false, defaultValue = "10") int pageSize
//
//	) throws Exception {
//
//		int pageCount = 5;
//		int totalCount = 0;
//
//		Map<String, Object> paramMap = new HashMap<String, Object>();
//
//		paramMap.put("searchType", searchType);
//		paramMap.put("searchWord", searchWord);
//
//		totalCount = reviewService.getReviewCount(paramMap);
//
//		PagingUtil pagingUtil = new PagingUtil(currentPage, totalCount, pageSize, pageCount);
//
//		paramMap.put("startRow", pagingUtil.getStartRow());
//		paramMap.put("endRow", pagingUtil.getEndRow());
//
//		List<ReviewVO> reviewList = reviewService.getReviewList(paramMap);
//
//		model.addAttribute("reviewList", reviewList);
//		model.addAttribute("pagingUtil", pagingUtil);
//
//		return "board/review/reviewList";
//	}
//	
//	
//	@RequestMapping("/reviewForm")
//	public String reviewForm(
//			@RequestParam(required=false) String v_isbn,
//			HttpSession session, Model model) throws Exception {
//
//		Member member = (Member) session.getAttribute("LOGIN_USER");
//
//		if (member == null) {
//			return "redirect:/login/loginForm";
//		}
//		
//		ReviewVO review = new ReviewVO();
//		model.addAttribute("review", review);
//		model.addAttribute("v_isbn", v_isbn);
//		
//		return "board/review/reviewForm";
//	}
//	
//
//	@RequestMapping("/reviewInsert")
//	public String reviewInsert(
//			@ModelAttribute(name="review") ReviewVO review,	// 모델에 애트리뷰트에 넣기. 즉 밑에서 직접 넣어주지 않아도됨. 실패했을때 데이터 다시 가지고오기. 
//			HttpSession session,
//			HttpServletRequest request,
//
//			Model model 
//			) throws Exception {
//		
//		
//		
//		// 세션에 로그인된 사용자
//		Member member = (Member) session.getAttribute("LOGIN_USER");
//
//		if (member == null) {
//			return "redirect:/login/loginForm";
//		}
//		
//
//		review.setId(member.getId());
//		review.setReg_user(member.getMem_id());
//		review.setUpd_user(member.getMem_id());
//
//		int updCnt = reviewService.insertReview(review);
//
//		boolean isError = false;
//		String message = "정상 등록 되었습니다.";
//		String location = "board/review/reviewList";
//		if (updCnt == 0) {
//			isError = true;
//			message = "게시글 등록 실패했습니다.";
//			// model.addAttribute("review", review);
//			// return review/reviewForm;
//		}
//
//		model.addAttribute("isError", isError);
//		model.addAttribute("message", message);
//		model.addAttribute("location", location);
//
//		
//		return "common/message";
//	}
//	
//
//	@RequestMapping("/reviewView/{rev_num}") // *1. 여기들어온 데이터를
//	public String reviewView(
//			@PathVariable(value = "rev_num", required = true) int rev_num, // *2. 이곳에 변수선언했다.( 경로를 변수선언 하겠다...)
//			Model model) throws Exception {
//
//		ReviewVO review = reviewService.getReview(rev_num, true);
//
//		model.addAttribute("review", review);
//
//		return "board/review/reviewView";
//	}
//
//	@RequestMapping("/reviewEdit")
//	public String reviewEdit(HttpSession session, int rev_num, Model model) throws Exception {
//
//		// 세션에 로그인된 사용자
//		Member member = (Member) session.getAttribute("LOGIN_USER");
//
//		if (member == null) {
//			return "redirect:/login/loginForm";
//		}
//
//		ReviewVO review = reviewService.getReview(rev_num, false);
//
//		model.addAttribute("review", review);
//
//		return "board/review/reviewEdit";
//	}
//
//	@RequestMapping("/reviewUpdate")
//	public String reviewUpdate(ReviewVO review, Model model, HttpSession session, HttpServletRequest request) throws Exception {
//
//		// 세션에 로그인된 사용자
//		Member member = (Member) session.getAttribute("LOGIN_USER");
//
//		if (member == null) {
//			return "redirect:/login/loginForm";
//		}
//		
//		// 파일에대한 정보..
////			List<FileItem> fileItemList = fileItemService.uploadFiles(request, review.getBo_type());
//		
//		// 세팅..
////			review.setFileItemList(fileItemList);
//
//		review.setMem_id(member.getMem_id());
//		review.setReg_user(member.getMem_id());
//		review.setUpd_user(member.getMem_id());
//
//		int updCnt = reviewService.updateReview(review);
//
//		System.out.println(updCnt + "시퀀스" + review.getRev_num());
//		boolean isError = false;
//		String message = "게시글 수정이 정상 처리되었습니다.";
//		String location = "board/review/reviewList";
//		if (updCnt == 0) {
//			isError = true;
//			message = "게시글 수정 실패했습니다.";
//		}
//
//		model.addAttribute("isError", isError);
//		model.addAttribute("message", message);
//		model.addAttribute("location", location);
//
//		return "common/message";
//	}
//
//	
//	@RequestMapping("/reviewDelete")
//	public String reviewDelete(HttpSession session, @RequestParam(value = "rev_num", required = true) int rev_num,
//			Model model) throws Exception {
//
//		Member member = (Member) session.getAttribute("LOGIN_USER");
//
//		if (member == null) {
//			return "redirect:/login/loginForm";
//		}
//
//		Map<String, Object> paramMap = new HashMap<>();
//
//		paramMap.put("rev_num", rev_num);
//		paramMap.put("upd_user", member.getMem_id());
//
//		int updCnt = reviewService.deleteReview(paramMap);
//
//		boolean isError = false;
//		String message = "삭제가 정상 처리되었습니다.";
//		String location = "board/review/reviewList/";
//
//		if (updCnt == 0) {
//			isError = false;
//			message = "삭제를 실패했습니다.";
//		}
//
//		model.addAttribute("isError", isError);
//		model.addAttribute("message", message);
//		model.addAttribute("location", location);
//
//		return "common/message";
//		}
//	
//}
