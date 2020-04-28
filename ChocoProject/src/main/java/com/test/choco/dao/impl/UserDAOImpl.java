package com.test.choco.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.choco.dao.UserDAO;
import com.test.choco.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public int registerUser(UserVO vo) throws Exception {
		return sqlsession.insert("UserDAO.registerUser", vo);
	}
	

}
