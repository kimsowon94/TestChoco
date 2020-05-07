package com.test.choco.service;

import java.util.List;

import com.test.choco.vo.UserVO;

public interface UserService {
	// 회원 insert
	public int registerUser(UserVO vo) throws Exception;
	
	// userId 중복값 확인
	public int idCheck(String userId) throws Exception;
	
	// 로그인
	public String userLogin(UserVO vo) throws Exception;
	
	// 회원정보 수정란에 정보 뿌리기
	public List<UserVO> userInfoList(String userId) throws Exception;

	// 회원정보 update
	public int userInfoUpdate(UserVO vo) throws Exception;
}
