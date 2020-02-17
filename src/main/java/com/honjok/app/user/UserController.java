package com.honjok.app.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.honjok.app.vo.UserVO;



@Controller
public class UserController {

	@Autowired
	private UserService userService;

		
	@RequestMapping(value="/signUp.do", method=RequestMethod.POST)
	public String signUp(UserVO vo, @RequestParam("email1") String email1, @RequestParam("email2") String email2) {
		String email = email1 +"@"+ email2;
		vo.setEmail(email);
		System.out.println(vo);
		userService.insertUser(vo);
		return "index.jsp";
	}
	@RequestMapping(value = "/userIdCheck.do", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(@RequestParam("id") String id) {
		System.out.println("Id : "+ id);
		return userService.userIdCheck(id);
	}
	
	@RequestMapping(value = "/userEmailCheck.do", method = RequestMethod.GET)
	@ResponseBody
	public int emailCheck(@RequestParam("email") String email) {
		System.out.println("email");
		return userService.emailCheck(email);
	}
	
	@RequestMapping(value = "/userNickCheck.do", method = RequestMethod.GET)
	@ResponseBody
	public int nickCheck(@RequestParam("nick") String nick) {
		System.out.println("nick");
		return userService.emailCheck(nick);
	}
	
	@RequestMapping(value = "/userPhoneCheck.do", method = RequestMethod.GET)
	@ResponseBody
	public int phoneCheck(@RequestParam("phone") String phone) {
		System.out.println("nick");
		return userService.emailCheck(phone);
	}
	
}