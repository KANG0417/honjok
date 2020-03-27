package com.honjok.app.order;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.honjok.app.vo.UserVO;

@Service("orderService")
public class orderServiceImpl implements orderService {

	@Autowired
	private orderDAO orderDAO;
	
	@Override
	public void updateCartCount(Map<String, Object> map) {
		orderDAO.updateCartCount(map);	
	}

	@Override
	public Map<String, Object> getProductCartData(Map<String, Object> map) {
		return orderDAO.getProductCartData(map);
	}

	@Override
	public UserVO getUserData(Map<String, Object> map) {
		return orderDAO.getUserData(map);
	}

}
