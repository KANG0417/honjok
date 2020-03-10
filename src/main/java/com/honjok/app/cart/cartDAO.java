package com.honjok.app.cart;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("cartDAO")
public class cartDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public int getSameCart(Map<String, String> map) {
		System.out.println("CartDAO에서 SAMEmap값:" + map);
		return mybatis.selectOne("cartDAO.getSameCart", map);
	}
	
	public int addCartProduct(Map<String, String> map) {
		System.out.println("CartDAO에서 ADDmap값:" + map);
		mybatis.insert("cartDAO.addCartProduct", map);
		return mybatis.selectOne("cartDAO.getCartCount",map);
	}
	
	public int getCartCount(String id) {
		return mybatis.selectOne("cartdao.getCartCount", id);
	}

}
