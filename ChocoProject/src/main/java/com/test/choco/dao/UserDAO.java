package com.test.choco.dao;

import com.test.choco.vo.UserVO;

public interface UserDAO {
	
	// 회원 insert
	public int registerUser(UserVO vo) throws Exception;
	
	// userId 중복값 확인
	public int idCheck(String userId) throws Exception;
	
	// 로그인
	public String userLogin(UserVO vo) throws Exception;

}
