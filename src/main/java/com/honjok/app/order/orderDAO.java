package com.honjok.app.order;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.UserVO;


@Repository("orderDAO")
public class orderDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

		public Object updateCartCount(Map<String, Object> map) {
		return mybatis.update("orderDAO.updateCartCount", map);
		}
		
		public Map<String, Object> getProductCartData(Map<String, Object> map) {
			return mybatis.selectOne("orderDAO.getProductCartData", map);
		}
		
		public UserVO getUserData(Map<String, Object> map) {
			return mybatis.selectOne("orderDAO.getUserData", map);
		}



}
