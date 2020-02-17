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
	
//	public int selectAllCount() {
//		return mybatis.selectOne("cookmapper.selectAllCount");
//	}
//	
	//전체조회
	public List<CookVO> selectAll() {
		List<CookVO> list =mybatis.selectList("CookController.selectAll");
		System.out.println("selectAll 전체조회");
		return list;
	}
	//게시물 한개 조회
	public CookVO select(String com_seq) {
		System.out.println("select 하나 조회");
		CookVO cvo = mybatis.selectOne("cookmapper.select", com_seq);
		System.out.println(cvo);
		return cvo;
	
	}
	//mybatis.insert
	public void insertCook(CookVO cvo) {
		System.out.println("Cook DB에 자료넣기 전");
		mybatis.insert("cook.insertCook", cvo);
		System.out.println("Cook DB에 자료넣기 후");
	}
	public void delete(String com_seq) {
		System.out.println("delete 실행");
		mybatis.delete("cookmapper.delete",com_seq);
		
		
	}

}
