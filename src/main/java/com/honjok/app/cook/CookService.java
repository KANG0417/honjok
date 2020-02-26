package com.honjok.app.cook;

import java.util.List;
import java.util.Map;

import com.honjok.app.vo.CommInfoVO;
import com.honjok.app.vo.CommunityVO;
import com.honjok.app.vo.CookVO;

public interface CookService {
	
  public void insertCook(CookVO cvo);

  public List<CookVO> CookAll(Map<String, Integer> pagingMap);
  
  public List<CookVO> selectInfo(Map<String, Integer> pagingMap);
  
  public CookVO getBoardList(CookVO cvo);
  
  
  public CookVO select(String com_seq);
	  
  public CookVO selectOne(CookVO	cvo);

  public void delete(String com_seq);

  public void update(CookVO cvo);
   
  public int selectAllCount();
  
  void boardHitsUpdate(int com_seq);
	    
	   
}
