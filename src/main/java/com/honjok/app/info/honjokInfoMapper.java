package com.honjok.app.info;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.CommInfoVO;
import com.honjok.app.vo.CommunityVO;

@Repository("honjokInfomapper")
public class honjokInfoMapper {

	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertCommunity(CommunityVO com) {

		System.out.println("mybatis 전");
		System.out.println(com);
		mybatis.insert("honjokInfoMapper.insert", com);
		System.out.println("mybatis 후");

	}
	

	public void insertCommInfo(CommInfoVO comI) {
		mybatis.insert("honjokInfoMapper.insertCommInfo",comI);
		
	}
	
	

	public List<CommunityVO> selectAll(Map<String, Integer> pagingMap) {

		System.out.println("selectAll 실행");
		List<CommunityVO> list = mybatis.selectList("honjokInfoMapper.selectAll", pagingMap);

		return list;

	}
	

	public List<CommInfoVO> selectInfo(Map<String, Integer> pagingMap) {
		List<CommInfoVO> list = mybatis.selectList("honjokInfoMapper.selectCommInfoVO",pagingMap);
		return list;
	}

	public int selectAllCount() {
		return mybatis.selectOne("honjokInfoMapper.selectAllCount");
	}

	public CommunityVO select(String com_seq) {

		System.out.println("select실행");
		CommunityVO communityvo = mybatis.selectOne("honjokInfoMapper.select", com_seq);
		return communityvo;

	}

	public void delete(String com_seq) {

		System.out.println("delete 실행");
		mybatis.delete("honjokInfoMapper.delete", com_seq);

	}

	public void uptate(CommunityVO com) {
		System.out.println("uptate");
		mybatis.update("honjokInfoMapper.uptate", com);

	}




}