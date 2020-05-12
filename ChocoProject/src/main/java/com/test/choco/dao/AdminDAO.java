package com.test.choco.dao;

import java.util.List;

import com.test.choco.vo.AdminVO;
import com.test.choco.vo.BoardVO;
import com.test.choco.vo.UserVO;

public interface AdminDAO {
	// admin로그인
	public int adminLogin(AdminVO ad) throws Exception;
	
	// 공지사항 insert
	public int noticeInsert(BoardVO bo) throws Exception;
	
	// 공지사항 list 출력
	public List<BoardVO> noticeList() throws Exception;
	
	// 공지사항 삭제
	public int noticeDelete(String boardNum) throws Exception;
	
	// 공지사항 form에 데이터 뿌리기 
	public BoardVO noticeUpdateForm(String boardNum)throws Exception;
	
	// 공지사항 update
	public int noticeUpdate(BoardVO bo) throws Exception;
	
	// 회원정보 List
	public List<UserVO> userList() throws Exception;
}
