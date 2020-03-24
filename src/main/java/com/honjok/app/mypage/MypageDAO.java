package com.honjok.app.mypage;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.CommInteriorVO;
import com.honjok.app.vo.UserVO;

@Repository("mypageDAOMybatis")
public class MypageDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public UserVO getUser(UserVO uvo) {
		System.out.println("===> 유저 정보 id 조회");
		return mybatis.selectOne("UserDAO.getBoard", uvo);
	}

	//회원ID로 본인 게시물 조회
	//---인테리어 게시판 조회
	public List<CommInteriorVO> getSelectBoard(CommInteriorVO cvo) {
		return mybatis.selectList("MypageDAO.interiorBoard", cvo);
	}
}
