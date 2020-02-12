package com.honjok.app.info;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.honjok.app.vo.CommunityVO;



@Service("honjokinfoService")
public class honjokinfoServiceImpl implements honjokinfoService {

   @Autowired
   private honjokInfoMapper Mapper;



	@Override
	public void inserthonjokinfo(CommunityVO com) {
		   System.out.println(com);
		      System.out.println("implement  전");
		      Mapper.inserthonjokinfo(com);
		      System.out.println("implement  후");
		
	}



	@Override
	public List<CommunityVO> selectAll() {
		
		 List<CommunityVO> list =Mapper.selectAll();
		return list;
	}



	@Override
	public CommunityVO select(String com_seq) {
		
		CommunityVO communityvo = Mapper.select(com_seq);
		return communityvo;
	}



	@Override
	public void delete(String com_seq) {
		Mapper.delete(com_seq);
	}



	@Override
	public void uptate(CommunityVO com) {
		Mapper.uptate(com);
		
	}
	   
   
   
}