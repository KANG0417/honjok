package com.honjok.app.order;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.honjok.app.vo.UserVO;

@Controller
public class orderController {
	
	
	@Autowired
	private orderService orderService;
	
	
	@RequestMapping(value="/order.do", method=RequestMethod.GET)
	public String orderList(@RequestParam String pCnt, @RequestParam String pNum,
							@RequestParam String shippingFee, Map<String, Object> resultMap,
							Model model, HttpSession session) {
		
		System.out.println(pCnt);
		System.out.println(pNum);
		System.out.println(shippingFee);
		System.out.println("여기까지 들어옴 1차");
		UserVO vo = (UserVO)session.getAttribute("userSession");
		String id = vo.getId();
		
		Map<String,Object> map = new HashMap<String,Object>();
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		//카트 수량 조절
		String[] pCntWord = pCnt.split(",");
		String[] pNumWord = pNum.split(",");
		for (int i = 0; i < pCntWord.length; i++) {
			map.put("pCnt", pCntWord[i]);
			map.put("pNum", pNumWord[i]);
			map.put("id", id);
			System.out.println(map + "map확인");
			orderService.updateCartCount(map);
			
			resultMap = orderService.getProductCartData(map);
			list.add(resultMap);
			System.out.println(resultMap + "여기까지 2차");
		}
		
		vo = orderService.getUserData(map);
		
		System.out.println(vo + "여기까지 3차 ");
		model.addAttribute("shippingFee", shippingFee);
		model.addAttribute("list", list);
		model.addAttribute("vo", vo);
		//model.addAttribute("display", "/shop/goods/order.jsp");
		return "/order/order.jsp";
	}
	
	
	
	
	

}
