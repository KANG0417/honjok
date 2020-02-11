package com.honjok.app.info;

import java.util.List;


import com.honjok.app.vo.CommunityVO;

public interface honjokinfoService {
   
   public void inserthonjokinfo(CommunityVO com);

   public List<CommunityVO> selectAll();
    
   
}