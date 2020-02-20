package com.honjok.app.info;

import java.util.List;
import java.util.Map;

import com.honjok.app.vo.CommInfoVO;
import com.honjok.app.vo.CommunityVO;

public interface honjokinfoService {
   
   public List<CommunityVO> selectAll(Map<String, Integer> pagingMap);

   public CommInfoVO select(String com_seq);

   public void delete(String com_seq);

   public void uptate(CommunityVO com);

   public int selectAllCount();
  
   public void insertCommInfoVO(CommInfoVO comI);
    
   public List<CommInfoVO> selectInfo(Map<String, Integer> pagingMap);
   
}