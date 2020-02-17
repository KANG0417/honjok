package com.honjok.app.interior.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.CommInteriorVO;

@Repository("commDAOMybatis")
public class CommInteriorDAOMybatis {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	//전체 데이터 조회
	public List<CommInteriorVO> BoardAllList() {
		List<CommInteriorVO> cvo = mybatis.selectList("commInteriorDAO.InteriorAll");
		System.out.println("===> MyBatis로 BoardAllList() 실행");
		return cvo;
	}
	
	//글 상세 조회
	public CommInteriorVO getInteriorOne(CommInteriorVO cvo) {
		System.out.println("===> MyBatis로 getInteriorOne() 실행");
		return mybatis.selectOne("commInteriorDAO.getInteriorOne", cvo);
	}
}
