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
		return cartDAO.getSameCart(map);
	}

	@Override
	public int addCartProduct(Map<String, String> map) {
		return cartDAO.addCartProduct(map);
	}

}
