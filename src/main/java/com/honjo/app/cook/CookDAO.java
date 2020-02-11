package com.honjo.app.cook;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("CookDAO")
public class CookDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertCook(CookVO cvo) {
		System.out.println("Cook DB에 자료넣기");
		mybatis.insert("cook.insertCook", cvo);
	}
	
	
}
