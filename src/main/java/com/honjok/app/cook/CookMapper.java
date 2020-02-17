package com.honjok.app.cook;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.CommunityVO;
import com.honjok.app.vo.CookVO;

@Repository("cookmapper")
public class CookMapper {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public CommunityVO select(String com_seq) {
		
		CommunityVO vo = mybatis.selectOne("cookMapper.selectOne",com_seq);
		System.out.println(vo);
		return vo;
	}
	

}
