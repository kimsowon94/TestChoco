package com.test.choco.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.choco.dao.AdminDAO;
import com.test.choco.vo.AdminVO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	private SqlSession sqlsession;

	@Override
	public int adminLogin(AdminVO ad) throws Exception {
		return sqlsession.selectOne("AdminDAO.adminLogin", ad);
	}
}
