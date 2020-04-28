package com.test.choco.dao;

import com.test.choco.vo.UserVO;

public interface UserDAO {
	
	// 회원 insert
	public int registerUser(UserVO vo) throws Exception;

}
