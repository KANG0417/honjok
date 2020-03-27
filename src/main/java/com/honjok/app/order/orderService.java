package com.honjok.app.order;

import java.util.Map;

import com.honjok.app.vo.UserVO;


public interface orderService {

	public void updateCartCount(Map<String, Object> map);
	public Map<String, Object> getProductCartData(Map<String, Object> map);
	public UserVO getUserData(Map<String, Object> map);
	
}
