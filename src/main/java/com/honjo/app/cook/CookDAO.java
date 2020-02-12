package com.honjo.app.cook;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.CookVO;


@Repository("CookDAO")
public class CookDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertCook(CookVO cvo) {
		System.out.println("Cook DB에 자료넣기1");
		mybatis.insert("cook.insertCook", cvo);
		System.out.println("Cook DB에 자료넣기2");
	}
	
	
}
