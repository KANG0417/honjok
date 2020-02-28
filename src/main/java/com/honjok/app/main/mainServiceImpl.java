package com.honjok.app.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.honjok.app.vo.AdminVO;

@Service("mainService")
public class mainServiceImpl implements mainService{

	@Autowired
	private mainDAO mainDAO;
	
	@Override
	public List<AdminVO> getMainList() {
		return mainDAO.selectMainList();

	}
}

