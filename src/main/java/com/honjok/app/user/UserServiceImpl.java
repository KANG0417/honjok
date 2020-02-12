package com.honjok.app.user;

import com.honjok.app.vo.UserVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("UserService")
public class UserServiceImpl implements UserService {
	
	
	@Autowired
	private UserDAO UserDAO;

	@Override
	public void insertUser(UserVO vo) {
		UserDAO.insertUser(vo);
		System.out.println("유저서비스 임플");
	}

	@Override
	public int userIdCheck(String Id) {
		int result =UserDAO.userIdCheck(Id);
		System.out.println(result);
		return result;
	}




	
}