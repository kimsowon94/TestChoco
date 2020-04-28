package com.test.choco.service;

import com.test.choco.vo.UserVO;

public interface UserService {
	// 회원 insert
	public int registerUser(UserVO vo) throws Exception;
	
	// userId 중복값 확인
	public int idCheck(String userId) throws Exception;

}
