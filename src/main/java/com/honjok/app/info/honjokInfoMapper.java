package com.honjok.app.info;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.honjok.app.vo.CommInfoVO;
import com.honjok.app.vo.CommunityVO;
import com.honjok.app.vo.UploadVO;

@Repository("honjokInfomapper")
public class honjokInfoMapper {

	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertCommInfoVO(CommInfoVO comI) {

		System.out.println("mybatis 전");
		mybatis.insert("honjokInfoMapper.insert", comI);
		System.out.println(comI);
		System.out.println("mybatis 후");

	}
	
	
	public void insertFileUpload(UploadVO uploadvo) {
		mybatis.insert("honjokInfoMapper.menuUplodat",uploadvo);
	}	

	

	public List<CommunityVO> selectAll(Map<String, Integer> pagingMap) {

		System.out.println("selectAll 실행");
		List<CommunityVO> list = mybatis.selectList("honjokInfoMapper.selectAll", pagingMap);

		return list;

	}
	

	public List<CommInfoVO> selectInfo(Map<String, Integer> pagingMap) {
		List<CommInfoVO> list = mybatis.selectList("honjokInfoMapper.selectCommInfoVO",pagingMap);
		return list;
	}
	
	public List<UploadVO[]> getFileName(String comseq) {
		return mybatis.selectList("honjokInfoMapper.getFileName",comseq);
	}
	
	

	public int selectAllCount() {
		return mybatis.selectOne("honjokInfoMapper.selectAllCount");
	}

	public CommInfoVO select(String com_seq) {

		System.out.println("select실행");
		CommInfoVO CommInfoVO = mybatis.selectOne("honjokInfoMapper.select", com_seq);
		System.out.println(CommInfoVO);
		return CommInfoVO;

	}

	public void delete(String com_seq) {

		System.out.println("delete 실행");
		mybatis.delete("honjokInfoMapper.delete", com_seq);

	}

	public void uptate(CommInfoVO comI) {
		System.out.println("uptate");
		mybatis.update("honjokInfoMapper.uptate", comI);

	}





	



}