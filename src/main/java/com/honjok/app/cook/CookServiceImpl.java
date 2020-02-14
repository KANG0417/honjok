package com.honjok.app.cook;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.honjok.app.vo.CookVO;

public class CookServiceImpl implements CookService{
	
	@Autowired
	private CookMapper Mapper;
	
	@Override
	public void insertCook(CookVO cvo) {
		System.out.println("전");
		Mapper.insertCook(cvo);
		System.out.println("후");
	}

	@Override
	public List<CookVO> selectAll(Map<String, Integer> pagingMap) {
		List<CookVO> list = Mapper.selectAll(pagingMap);
		return list;
	}

	@Override
	public CookVO select(String com_seq) {
		// TODO Auto-generated method stub
		CookVO cvo = Mapper.select(com_seq);
		return cvo;
	}

	@Override
	public void delete(String com_seq) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(CookVO cvo) {
		// TODO Auto-generated method stub
		Mapper.update(cvo);
	}

	@Override
	public int selectAllCount() {
		// TODO Auto-generated method stub
		return Mapper.selectAllCount();
	}

	

}
