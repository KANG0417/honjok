package com.honjok.view.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class login {

/*	@Autowired
	private UserService userService;
*/
	//요청방식 POST에 대한 처리
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(/*UserVO vo*/) {
		System.out.println(">>> 로그인 처리 - login()");
	/*	System.out.println("전달받은 vo : " + vo);*/
		
		//일부러 예외발생
	/*	if (vo.getId() == null || vo.getId().equals("")) {
			throw new IllegalArgumentException(
					"아이디는 반드시 입력해야 합니다.");
		}
		
		//UserVO user = userDAO.getUser(vo);
		UserVO user = userService.getUser(vo);
		System.out.println("> user : " + user);
		if (user != null) {
			return "getBoardList.do";
		} else {
			return "login.jsp";
		}*/
	 
		return "login.jsp";
	}
	
	//@ModelAttribute : 모델의 속성값으로 지정(속성명 별도지정)
	//  별도 명칭 부여 안하면 <데이터 타입>의 첫글자 소문자로 작성된 명치 사용됨
	//@ModelAttribute UserVO vo : 속성명 userVO 형태
	//@ModelAttribute("user") UserVO vo : 속성명 user 사용
/*	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String loginView(@ModelAttribute("user") UserVO vo) {
		System.out.println(">> 로그인 화면으로 이동 - loginView()");
		vo.setId("test");
		vo.setPassword("test");
		
		return "login.jsp";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		System.out.println(">>> 로그아웃 처리 - logout()");
		
		session.invalidate();
		return "login.jsp";
	}*/
}