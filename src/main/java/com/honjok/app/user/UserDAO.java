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
		System.out.println("회원가입 vo를 데이터베이스로 전송중");
		mybatis.insert("user.insertUser", vo);
		System.out.println("회원가입 vo를 데이터베이스로 전송중22");
	}
}
