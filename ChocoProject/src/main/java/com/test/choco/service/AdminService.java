package com.test.choco.service;

import com.test.choco.vo.AdminVO;

public interface AdminService {
	// admin로그인
	public int adminLogin(AdminVO ad) throws Exception;
}
