package com.honjok.app.info;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.honjok.comm.CommunityVO;


@Controller
public class list {
	
	@RequestMapping(value="insert.do")
	public void lists(CommunityVO community) {
		
		System.out.println(community);
		
		System.out.println("성공~");
		
	}
	
	

}

