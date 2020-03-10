package com.honjok.app.admin;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.AdminVO;

@Repository("adminDAO")
public class adminDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertProduct(AdminVO vo) {
		System.out.println("vo : " + vo);
		mybatis.insert("adminDAO.insertProduct", vo);
	}
	
}
