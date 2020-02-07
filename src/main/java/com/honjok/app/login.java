package com.honjok.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class login {

	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login() {
		System.out.println(">>> 로그인 처리 - login()");
		
		
		return null;
	}		
}
