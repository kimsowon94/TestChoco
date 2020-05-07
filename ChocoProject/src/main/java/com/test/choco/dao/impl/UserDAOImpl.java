package com.test.choco.dao.impl;

import java.util.List;

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

	@Override
	public int idCheck(String userId) throws Exception {
		return sqlsession.selectOne("UserDAO.idCheck", userId);
	}

	@Override
	public String userLogin(UserVO vo) throws Exception {
		return sqlsession.selectOne("UserDAO.userLogin", vo);
	}

	@Override
	public List<UserVO> userInfoList(String userId) throws Exception {
		return sqlsession.selectList("UserDAO.userInfoList", userId);
	}

	@Override
	public int userInfoUpdate(UserVO vo) throws Exception {
		return sqlsession.update("UserDAO.userInfoUpdate", vo);
	}
	

}
