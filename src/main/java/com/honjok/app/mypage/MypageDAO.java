package com.honjok.app.mypage;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.UserVO;

@Repository("mypageDAOMybatis")
public class MypageDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public UserVO getUser(UserVO uvo) {
		System.out.println("===> 유저 정보 id 조회");
		return mybatis.selectOne("UserDAO.getBoard", uvo);
	}
	
	/*public getBoard() {
		return mybatis.selectOne(statement);
	}
*/
}
