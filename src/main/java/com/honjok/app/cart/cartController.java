package com.honjok.app.cart;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.honjok.app.admin.adminDAO;

@Controller
public class cartController {
	
	

	@Autowired
	private cartService cartService;
	
	@RequestMapping(value="/addCartList.do", method=RequestMethod.POST)
	@ResponseBody
	public String addCartList(@RequestParam Map<String,String>map,HttpSession session,Model model) {
		System.out.println("addCartList map : " + map);
		
		//카드 담을때 같은 상품이 있나 확인
		//아이디 추가_20191202
		String memId = (String) session.getAttribute("userSession.id");
		map.put("memId", memId);
		
		int cnt  = cartService.getSameCart(map);
		
		//gubun3 은 재고보다 장바구니에 넣을 수량이 적을 시 return
		if(Integer.parseInt(map.get("stock")) <  Integer.parseInt(map.get("pCnt"))) {
			if(cnt > 0) {
				model.addAttribute("gubun",1);
			}else {
				model.addAttribute("gubun",3);
			}
		}else {
			if(cnt > 0) {
				model.addAttribute("gubun",1);
			}else {
				String id = (String)session.getAttribute("userSession.id");
				map.put("id", id);
				
				int count = cartService.addCartProduct(map);
				session.setAttribute("memCart", count);
				
				model.addAttribute("memCart", session.getAttribute("memCart"));
				model.addAttribute("gubun",2);
				
			}
		}
		return "jsonView";
	}

}
