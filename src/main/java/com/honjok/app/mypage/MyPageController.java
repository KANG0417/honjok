package com.honjok.app.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/mypage")
public class MyPageController {
	
	@Autowired
	private MyPageService mypages;
	
	
}
