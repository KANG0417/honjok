package com.honjok.app.cook;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.CookVO;

@Repository("cookmapper")
public class CookMapper {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//mybatis.insert
	public void insertCook(CookVO ckvo) {
		System.out.println("Cook DB에 자료넣기 전");
		mybatis.insert("cookMapper.insertCook", ckvo);
		System.out.println("Cook DB에 자료넣기 후");
	}
	//페이징 처리를위한 게시물 개수 카운트
	public int selectAllCount() {
		return mybatis.selectOne("cookmapper.selectAllCount");
	}
	
	//전체조회
	public List<CookVO> selectAll() {
		
		System.out.println("selectAll 전체조회");
		List<CookVO> list =mybatis.selectList("cookMapper.selectAll");
		
		System.out.println(list);
		return list;
	}
	//게시물 한개 조회
	public CookVO select(CookVO ckvo) {
		System.out.println("select 한 건");
		CookVO cvo = mybatis.selectOne("cookmapper.select", ckvo);
		System.out.println(ckvo);
		return ckvo;
	
	}
	public void delete(String com_seq) {
		System.out.println("delete 실행");
		mybatis.delete("cookmapper.delete",com_seq);
		
		
	}

	public void update(CookVO cvo) {
		System.out.println("update");
		mybatis.update("cookmapper.update",cvo);
		
	}
}
