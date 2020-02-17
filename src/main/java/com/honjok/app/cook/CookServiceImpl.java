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
	private CookMapper CookMapper;
	
	
	
	@Override
	public void insertCook(CookVO cvo) {
		System.out.println("전");
		CookMapper.insertCook(cvo);
		System.out.println("후");
	}


	@Override
	public CookVO select(String com_seq) {
		// TODO Auto-generated method stub
		CookVO ckvo = CookMapper.select(com_seq);
		return ckvo;
	}

	@Override
	public void delete(String com_seq) {
		// TODO Auto-generated method stub
		
	}

	

	@Override
	public List<CookVO> selectAll() {
		return null;
	}


	@Override
	public CookVO getBoardList(CookVO ckvo) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int selectAllCount() {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public void update(CookVO com) {
		// TODO Auto-generated method stub
		
	}
	

}
