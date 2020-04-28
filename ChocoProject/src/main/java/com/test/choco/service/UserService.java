package com.test.choco.service;

import com.test.choco.vo.UserVO;

public interface UserService {
	// 회원 insert
		public int registerUser(UserVO vo) throws Exception;

}
