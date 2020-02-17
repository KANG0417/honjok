package com.honjok.app.user;

import com.honjok.app.vo.UserVO;

public interface UserService {
 void insertUser(UserVO vo);
 int userIdCheck(String Id);
 int emailCheck(String email);
 int nickCheck(String nick);
 int phoneCheck(String phone);
}
