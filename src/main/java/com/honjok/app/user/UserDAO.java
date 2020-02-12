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
}
