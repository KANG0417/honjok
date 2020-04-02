package com.honjok.app.cook;

import java.util.List;
import java.util.Map;

import com.honjok.app.vo.CookVO;

public interface CookService {
	
  public void insertCook(CookVO cvo);
  public List<CookVO> CookAll(Map<String, Integer> pagingMap);
  public List<CookVO> selectInfo(Map<String, Integer> pagingMap);
  
  public CookVO getBoardList(CookVO cvo);
  
  
  public CookVO select(String comSeq);
  public CookVO selectOne(CookVO	cvo);

  public void delete(String comSeq);
  public void update(CookVO cvo);
   
  public int selectAllCount();
  
  void boardHitsUpdate(int comSeq);
}
