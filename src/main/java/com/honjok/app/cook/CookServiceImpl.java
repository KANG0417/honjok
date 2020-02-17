package com.honjok.app.cook;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.honjok.app.vo.CommunityVO;
import com.honjok.app.vo.CookVO;


@Service
public class CookServiceImpl implements CookService{
	
	@Autowired
	private CookMapper Mapper;
	
	
	
	@Override
	public CommunityVO select(String com_seq) {
		// TODO Auto-generated method stub
		CommunityVO cvo = Mapper.select(com_seq);
		return cvo;
	}

	
	

}
