package com.honjok.app.cart;

import java.util.HashMap;
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

import com.honjok.app.vo.UserVO;

@Controller
public class cartController {
	
	

	@Autowired
	private cartService cartService;
	
	@RequestMapping(value="/addCartList.do", method=RequestMethod.POST)
	@ResponseBody
	public Map addCartList(@RequestParam Map<String,String>map,HttpSession session,Model model) {
		System.out.println("addCartList map : " + map);
		
		
		//카드 담을때 같은 상품이 있나 확인
		//아이디 추가_20191202
		UserVO vo = (UserVO)session.getAttribute("userSession");
		String memId = vo.getId();
		map.put("memId",memId);
		//String memId = (String)session.getAttribute("userSession.id");
		System.out.println("Id체크" + map);
		
		int cnt  = cartService.getSameCart(map);
		System.out.println(cnt);
		
		
		Map<String,Integer>map2 = new HashMap<String,Integer>();
		//gubun3 은 재고보다 장바구니에 넣을 수량이 적을 시 return
		if(Integer.parseInt(map.get("stock")) <  Integer.parseInt(map.get("pCnt"))) {
			if(cnt > 0) {
				map2.put("gubun",1);
				return map2;
			}else {
				map2.put("gubun",3);
				return map2;
			}
		}else{
			if(cnt > 0) {
				map2.put("gubun",1);
				return map2;
			}else {
				UserVO vo2 = (UserVO)session.getAttribute("userSession");
				String id = vo2.getId();
				map.put("id", id);
				System.out.println("id체크" + id);
				
				int count = cartService.addCartProduct(map);
				System.out.println(count);
				//session.setAttribute("memCart", count);
				
				//model.addAttribute("memCart", session.getAttribute("memCart"));
				map2.put("gubun",2);
				
				System.out.println(map2);
				//={gubun:2}
			}
		}
		return map2;
		}
	}

