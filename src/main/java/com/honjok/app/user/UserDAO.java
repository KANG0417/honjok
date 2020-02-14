package com.honjok.app.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.honjok.app.vo.UserVO;

@Repository("UserDAO")
public class UserDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public void insertUser(UserVO vo) {
		mybatis.insert("UserDAO.insertUser", vo);
	}
	public int userIdCheck(String Id) {
		int set = mybatis.selectOne("UserDAO.userIdCheck", Id);
		System.out.println("set : " + set);
		return set;
	}
	public int emailCheck(String email) {
			int set2 = mybatis.selectOne("UserDAO.emailCheck", email);
			System.out.println("set : " + set2);
			return set2;	
	}
	public int nickCheck(String nick) {
		int set3 = mybatis.selectOne("UserDAO.nickCheck", nick);
		System.out.println("set : " + set3);
		return set3;	
	}
	public int phoneCheck(String phone) {
		int set4 = mybatis.selectOne("UserDAO.phoneCheck", phone);
		System.out.println("set : " + set4);
		return set4;	
	}
	
}
