package com.honjo.app.cook;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.CookVO;

@Repository("CookMapper")
public class CookMapper {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<CookVO> selectAll() {
		
		System.out.println("selectAll 실행");
		List<CookVO> list =mybatis.selectList("CookMapper.selectAll");
		
		System.out.println(list);
		return list;
		
	}
	
	public void createCook(CookVO cvo) {
		System.out.println("mybatis 전");
		System.out.println(cvo);
		mybatis.insert("CookMapper.insert", cvo);
		
	}
	public CookVO select(String cvo_seq) {
		System.out.println("select");
		CookVO cvo = mybatis.selectOne("CookMapper.select", cvo_seq);
		System.out.println(cvo);
		return cvo;
	
	}
	public void delete(String cvo_seq) {
		
		
		System.out.println("delete 실행");
		mybatis.delete("CookMapper.delete",cvo_seq);
		
		
	}

	public void uptate(CookVO cvo) {
		System.out.println("uptate");
		mybatis.update("honjokInfoMapper.uptate",cvo);
		
	}
}
