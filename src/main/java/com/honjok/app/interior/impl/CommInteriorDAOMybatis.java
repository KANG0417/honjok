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
	public void insertComm() {
		System.out.println("===> MyBatis로 insertInterior() 실행");
		mybatis.insert("commInteriorDAO.insertComm");
	}
	
	//전체 데이터 조회
	public List<CommInteriorVO> getInteriorList() {
		System.out.println("===> MyBatis로 getInteriorList() 실행");

		return mybatis.selectList("commInteriorDAO.InteriorAll");
	}
}
