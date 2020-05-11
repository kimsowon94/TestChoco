package com.test.choco.dao;

import com.test.choco.vo.AdminVO;
import com.test.choco.vo.BoardVO;

public interface AdminDAO {
	// admin로그인
	public int adminLogin(AdminVO ad) throws Exception;
	
	// 공지사항 insert
	public int noticeInsert(BoardVO bo) throws Exception;
	
}
