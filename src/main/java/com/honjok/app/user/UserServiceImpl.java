package com.honjok.app.user;

import org.springframework.beans.factory.annotation.Autowired;
import com.honjok.app.vo.UserVO;
import org.springframework.stereotype.Service;

@Service("UserService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO UserDAO;

	@Override
	public void insertUser(UserVO vo) {
		UserDAO.insertUser(vo);
	}
	
	
}
