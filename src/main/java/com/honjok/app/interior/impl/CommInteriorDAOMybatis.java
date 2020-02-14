package com.honjok.app.interior.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.CommInteriorVO;
import com.honjok.app.vo.CommunityVO;

@Repository("commDAOMybatis")
public class CommInteriorDAOMybatis {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	//글 입력(기본)
	public void insertComm(CommInteriorVO intervo) {
		System.out.println("===> MyBatis로 insertInterior() 실행");
		mybatis.insert("commInteriorDAO.insertComm");
	}
	
	//게시글 전체 조회
	public List<CommInteriorVO> getInteriorList() {
		System.out.println("===> MyBatis로 getInteriorList() 실행");

		return mybatis.selectList("commInteriorDAO.InteriorAll");
	}
	
	//게시글 하나 조회
	public CommInteriorVO getInteriorSelect(String com_seq) {
		System.out.println("===> MyBatis로 getInteriorSelect() 실행");
		int seq = Integer.parseInt(com_seq);
		return mybatis.selectOne("commInteriorDAO.getInteriorOne", seq);
	}
}
