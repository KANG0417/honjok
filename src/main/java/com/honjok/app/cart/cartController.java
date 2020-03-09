package com.honjok.app.cart;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class cartController {
	
	
	@RequestMapping(value="/addCartList.do", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView addCartList(@RequestParam Map<String,String>map,HttpSession session) {
		System.out.println("addCartList map : " + map);
		ModelAndView mav = new ModelAndView();
		
		//카드 담을때 같은 상품이 있나 확인
		//아이디 추가_20191202
		String memId = (String) session.getAttribute("userSession.id");
		map.put("memId", memId);
		
		int cnt  = cartService.getSameCart(map);
		
		//gubun3 은 재고보다 장바구니에 넣을 수량이 적을 시 return
		if(Integer.parseInt(map.get("stock")) <  Integer.parseInt(map.get("ctCount"))) {
			if(cnt > 0) {
				mav.addObject("gubun", 1);
				mav.setViewName("jsonView");
			}else {
				mav.addObject("gubun", 3);
				mav.setViewName("jsonView");
			}
		}/*else {
			if(cnt > 0) {
				mav.addObject("gubun", 1);
				mav.setViewName("jsonView");
			}else {
				String id = (String)session.getAttribute("memId");
				map.put("id", id);
				
				int count = cartService.addCartProduct(map);
				session.setAttribute("memCart", count);
				
				mav.addObject("memCart", session.getAttribute("memCart"));
				mav.addObject("gubun", 2);
				mav.setViewName("jsonView");
			}
		}*/
		return mav;
	}

}
