package com.honjok.app.info;

import java.util.List;
import java.util.Map;

import com.honjok.app.vo.CommInfoVO;
import com.honjok.app.vo.CommunityVO;
import com.honjok.app.vo.UploadVO;
import com.honjok.app.vo.commReplyVO;
import com.honjok.app.vo.replyUploadVO;

public interface honjokinfoService {
   
   public List<CommunityVO> selectAll(Map<String, Integer> pagingMap);

   public CommInfoVO select(String com_seq);

   public void delete(String com_seq);

   public void uptate(CommInfoVO comI);

   public int selectAllCount();
  
   public void insertCommInfoVO(CommInfoVO comI);
    
   public List<CommInfoVO> selectInfo(Map<String, Integer> pagingMap);

   public void FileUpload(UploadVO uploadvo);

   public List<UploadVO[]> getFileName(String comseq);

   public void insertReview(commReplyVO commreplyvo);

   public void reviewUpload(replyUploadVO replyuploadvo);

   public List<commReplyVO> getReview(String com_seq);

   public List<replyUploadVO> getReviewImg(String idx);

   public void inserLikesUp(String com_seq);
   
}