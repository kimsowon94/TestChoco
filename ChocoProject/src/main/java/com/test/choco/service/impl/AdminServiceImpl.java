package com.test.choco.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.choco.dao.AdminDAO;
import com.test.choco.service.AdminService;
import com.test.choco.vo.AdminVO;
import com.test.choco.vo.BoardVO;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	AdminDAO adminDao;

	@Override
	public int adminLogin(AdminVO ad) throws Exception {
		return adminDao.adminLogin(ad);
	}

	@Override
	public int noticeInsert(BoardVO bo) throws Exception {
		return adminDao.noticeInsert(bo);
	}
	
	

}
