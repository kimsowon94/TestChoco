package com.test.choco.dao;

import com.test.choco.vo.AdminVO;

public interface AdminDAO {
	// admin로그인
	public int adminLogin(AdminVO ad) throws Exception;
}
