package com.test.choco.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.choco.dao.AdminDAO;
import com.test.choco.vo.AdminVO;
import com.test.choco.vo.BoardVO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	private SqlSession sqlsession;

	@Override
	public int adminLogin(AdminVO ad) throws Exception {
		return sqlsession.selectOne("AdminDAO.adminLogin", ad);
	}

	@Override
	public int noticeInsert(BoardVO bo) throws Exception {
		return sqlsession.insert("AdminDAO.noticeInsert", bo);
	}

	@Override
	public List<BoardVO> noticeList() throws Exception {
		return sqlsession.selectList("AdminDAO.noticeList");
	}

	@Override
	public int noticeDelete(String boardNum) throws Exception {
		return sqlsession.delete("AdminDAO.noticeDelete", boardNum);
	}

	@Override
	public int noticeUpdate(BoardVO bo) throws Exception {
		return sqlsession.update("AdminDAO.noticeUpdate", bo);
	}

	@Override
	public BoardVO noticeUpdateForm(String boardNum) throws Exception {
		return sqlsession.selectOne("AdminDAO.noticeUpdateForm",boardNum);
	}
}
