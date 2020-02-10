package com.honjok.app.info;

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
      mybatis.insert("honjokInfoMapper.insert", com);
      System.out.println("mybatis 후");
   }
}