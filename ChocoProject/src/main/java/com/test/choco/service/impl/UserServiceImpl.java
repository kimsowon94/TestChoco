package com.test.choco.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.choco.dao.UserDAO;
import com.test.choco.service.UserService;
import com.test.choco.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDAO userDao;
	@Override
	public int registerUser(UserVO vo) throws Exception {
		return userDao.registerUser(vo);
	}
	@Override
	public int idCheck(String userId) throws Exception {
		return userDao.idCheck(userId);
	}
	@Override
	public String userLogin(UserVO vo) throws Exception {
		return userDao.userLogin(vo);
	}

}
