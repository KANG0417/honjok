package com.honjok.app.cook;

import java.util.List;
import java.util.Map;

import com.honjok.app.vo.CommunityVO;
import com.honjok.app.vo.CookVO;

public interface CookService {
	
  public void insertCook(CookVO cvo);

  public List<CookVO> selectAll();
  CookVO getBoardList(CookVO cvo);
	  
  public CookVO selectOne(CookVO	ckvo);

  public void delete(String com_seq);

  public void update(CookVO com);
   
  public int selectAllCount();
	    
	   
}
