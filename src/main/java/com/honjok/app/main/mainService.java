package com.honjok.app.main;

import java.util.List;

import com.honjok.app.vo.AdminVO;

public interface mainService {
	List<AdminVO>getMainList();
	public AdminVO getMain(AdminVO vo);
}
