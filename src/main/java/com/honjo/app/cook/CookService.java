package com.honjo.app.cook;

import java.util.List;

import com.honjok.app.vo.CookVO;

public interface CookService {
	void insertCook(CookVO CVO);
	  public void createCook(CookVO cvo);

	   public List<CookVO> selectAll();

	   public CookVO select(String com_seq);

	   public void delete(String com_seq);

	   public void uptate(CookVO com);
	    
	   
}
