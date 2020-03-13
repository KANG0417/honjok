package com.honjok.app.cart;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("cartService")
public class cartServiceImpl implements cartService {
		
	@Autowired
	private cartDAO cartDAO;
	
	@Override
	public int getSameCart(Map<String, String> map) {
		System.out.println("서비스임플에서 map값 여기는세임:" + map);
		return cartDAO.getSameCart(map);
	}

	@Override
	public int addCartProduct(Map<String, String> map) {
		System.out.println("서비스임플에서 map값 여기는 값넣는곳:" + map);
		return cartDAO.addCartProduct(map);
	}

}
