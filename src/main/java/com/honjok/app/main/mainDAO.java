package com.honjok.app.main;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.AdminVO;

@Repository("mainDAO")
public class mainDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<AdminVO> selectMainList(){
		List<AdminVO> list = mybatis.selectList("mainDAO.selectMainList");
		return list;
	}
	
	public AdminVO selectMain(AdminVO vo) {
			return mybatis.selectOne("mainDAO.selectMainDetail", vo);
		}
	


}
