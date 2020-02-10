package com.honjok.app.info;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class list {
	public list() {
		System.out.println("생성자 생성");
	}
	
	@RequestMapping(value="list.do", method=RequestMethod.GET)
	public void lists() {
		System.out.println("잘넘어옴s ");
	}
	
	

}
