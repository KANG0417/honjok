package com.honjok.app.cook;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.honjok.app.interior.CommInteriorDAO;
import com.honjok.app.vo.CommunityVO;
import com.honjok.app.vo.CookVO;
import com.honjok.app.vo.commReplyVO;


@Service
public class CookServiceImpl implements CookService{
	
	@Autowired
	private CookMapper CookMapper;
	@Autowired
	private CommInteriorDAO commDAO;
	
	
	
	@Override
	public void insertCook(CookVO cvo) {
		System.out.println("전");
		CookMapper.insertCook(cvo);
		System.out.println("후");
	}



	@Override
	public void delete(String comSeq) {
		// TODO Auto-generated method stub
		CookMapper.delete(comSeq);
	}



	@Override
	public CookVO getBoardList(CookVO ckvo) {
		return null;
	}


	@Override
	public int selectAllCount() {
		return CookMapper.selectAllCount();
	}


	@Override
	public void update(CookVO com) {
		 CookMapper.update(com);
		
	}



	@Override
	public CookVO selectOne(CookVO ckvo) {
		
		return CookMapper.select(ckvo);
	}



	@Override
	public List<CookVO> CookAll(Map<String, Integer> pagingMap) {
		List<CookVO> list = CookMapper.selectAll(pagingMap);
		return list;
	}



	@Override
	public List<CookVO> selectInfo(Map<String, Integer> pagingMap) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public CookVO select(String comSeq) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public void boardHitsUpdate(int comSeq) {
		CookMapper.boardHitsUpdate(comSeq);
		
	}



	@Override
	public void insertComment(commReplyVO rvo) {
		commDAO.insertComment(rvo);
		
	}



	@Override
	public List<commReplyVO> commentList(int comSeq) {
		return commDAO.commentList(comSeq);
	}



	@Override
	public void updateComment(commReplyVO rvo) {
		commDAO.updateComment(rvo);
		
	}
	

}
