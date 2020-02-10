package com.honjok.app.info;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.CommunityVO;



@Repository("honjokInfomapper")
public class honjokInfoMapper {
   
   @Autowired 
   private SqlSessionTemplate mybatis;
   
   public void inserthonjokinfo(CommunityVO com) {
      System.out.println("mybatis 전");
      System.out.println(com);
      mybatis.insert("honjokInfoMapper.insert", com);
      System.out.println("mybatis 후");
   }

public List<CommunityVO> selectAll() {
	System.out.println("selectAll 실행");
	List<CommunityVO> list =mybatis.selectList("honjokInfoMapper.selectAll");
	
	System.out.println(list);
	return list;
}
}