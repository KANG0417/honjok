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

	@Override
	public int emailCheck(String email) {
		int result2 = UserDAO.emailCheck(email); 
		return result2;
	}

	@Override
	public int nickCheck(String nick) {
		int result3 = UserDAO.nickCheck(nick); 
		return result3;
	}

	@Override
	public int phoneCheck(String phone) {
		int result4 = UserDAO.phoneCheck(phone); 
		return result4;
	}





	
}
