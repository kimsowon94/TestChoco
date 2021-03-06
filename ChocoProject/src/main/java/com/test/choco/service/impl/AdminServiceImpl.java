package com.test.choco.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.choco.dao.AdminDAO;
import com.test.choco.service.AdminService;
import com.test.choco.vo.AdminVO;
import com.test.choco.vo.BoardVO;
import com.test.choco.vo.UserVO;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	AdminDAO adminDao;

	@Override
	public int adminLogin(AdminVO ad) throws Exception {
		return adminDao.adminLogin(ad);
	}

	@Override
	public int noticeInsert(BoardVO bo) throws Exception {
		return adminDao.noticeInsert(bo);
	}

	@Override
	public List<BoardVO> noticeList() throws Exception {
		return adminDao.noticeList();
	}

	@Override
	public int noticeDelete(String boardNum) throws Exception {
		return adminDao.noticeDelete(boardNum);
	}

	@Override
	public int noticeUpdate(BoardVO bo) throws Exception {
		return adminDao.noticeUpdate(bo);
	}

	@Override
	public BoardVO noticeUpdateForm(String boardNum) throws Exception {
		return adminDao.noticeUpdateForm(boardNum);
	}

	@Override
	public List<UserVO> userList(UserVO vo) throws Exception {	
		return adminDao.userList(vo);
	}

	@Override
	public List<UserVO> searchUser(UserVO vo) throws Exception {
		return adminDao.searchUser(vo);
	}

	@Override
	public List<UserVO> userBlackList(UserVO vo) throws Exception {
		return adminDao.userBlackList(vo);
	}

	@Override
	public int blackUser(String userNum) throws Exception {
		return adminDao.blackUser(userNum);
	}

	@Override
	public int reUser(String userNum) throws Exception {
		return adminDao.reUser(userNum);
	}

	@Override
	public int noticeCnt() throws Exception {
		return adminDao.noticeCnt();
	}
	
	

}
