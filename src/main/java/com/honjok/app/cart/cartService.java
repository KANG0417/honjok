package com.honjok.app.cart;

import java.util.List;
import java.util.Map;


public interface cartService {
	
	 public int getSameCart(Map<String, String> map);
	 public int addCartProduct(Map<String, String> map);
	 public List<Map<String,String>>getCartList(Map<String, String> map);
}
