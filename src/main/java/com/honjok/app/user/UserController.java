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
		public String signUp(UserVO vo) {
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
	
}