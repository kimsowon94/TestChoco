package com.test.choco.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.choco.HomeController;
import com.test.choco.service.AdminService;
import com.test.choco.vo.AdminVO;
import com.test.choco.vo.BoardVO;
import com.test.choco.vo.PageVO;
import com.test.choco.vo.UserVO;

@Controller
public class AdminController {

	@Autowired
	AdminService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value="/adminLogin.do", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String>adminLogin(AdminVO ad, HttpSession session) throws Exception
	{
		HashMap<String, String> result = new  HashMap<String, String>();
		int count = service.adminLogin(ad);
		System.out.println("관리자 로그인했니? ======= : " + count);
		
		
		if(count>0)
		{
			System.out.println("로그인 성공");
			session.setAttribute("adminId", ad.getAdminId());
			System.out.println("admin아이디 넘어오니?" + ad.getAdminId());
			result.put("result","success"); 		
		}
		else
		{
			System.out.println("로그인 실패");
			 result.put("result", "fail"); 
		}
		
		return result;	
	}
	
	/* 공지사항 insert */
	@RequestMapping(value="/noticeInsert.do", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> noticeInsert(Model model, BoardVO bo) throws Exception
	{
		HashMap<String, String> result = new  HashMap<String, String>();
		
		int count = service.noticeInsert(bo);
		if(count==1)
		{
			System.out.println("공지사항 insert완료");
			result.put("result","success");
		}
		else
		{
			System.out.println("공지사항 insert실패");
			result.put("result","fail");
		}
		
		return result;		
	}
	
	/* 공지사항 delete */
	@RequestMapping(value="/noticeDelete.do", method = RequestMethod.GET)
	public String noticeDelete(String boardNum) throws Exception
	{
		service.noticeDelete(boardNum);
		return "redirect:boardNotice.do";	
	}
	
	/* 공지사항 update 데이터 뿌리기 */
	@RequestMapping(value="/noticeUpdateForm.do", method = RequestMethod.POST)
	@ResponseBody 
	public Map<String, Object> noticeUpdateForm(String boardNum) throws Exception
	{		
		Map<String, Object> map = new HashMap<String, Object>();
		BoardVO bo = service.noticeUpdateForm(boardNum);
		
		map.put("boardTitle", bo.getBoardTitle());
		map.put("boardContent",bo.getBoardContent());
		map.put("boardNum",bo.getBoardNum());

		return map;
	}
	
	/* 공지사항 update */
	@RequestMapping(value="/noticeUpdate.do", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public HashMap<String, String> noticeUpdate(BoardVO bo) throws Exception
	{
		HashMap<String, String> result = new HashMap<String, String>();
		
		int count = service.noticeUpdate(bo);
		if(count == 1)
		{
			System.out.println("공지사항 update완료");
			result.put("result", "1");
		}
		else
		{
			System.out.println("공지사항 update완료");
			result.put("result", "0");
		}
		return result;
	}
	
	/* 회원관리 페이지 이동 */
	@RequestMapping(value="/userList.do", method = RequestMethod.GET)
	public String userList(Model model, UserVO vo) throws Exception
	{
		List<UserVO> list = service.userList(vo);
		
		
		model.addAttribute("list", list);
		return "userList";		
	}
	
	/* 회원정보 찾기 */
	@RequestMapping(value="/searchUser.do", method = RequestMethod.POST)
	public String searchUser(Model model, UserVO vo) throws Exception
	{
		List<UserVO> searchList = service.userList(vo);
		
		model.addAttribute("searchList", searchList);
		return "userListDiv";
	}
	
	/* 회원 블랙리스트 */
	@RequestMapping(value="userBlackList.do", method = RequestMethod.GET)
	public String userBlackList(Model model, UserVO vo) throws Exception
	{
		List<UserVO> userBlackList = service.userBlackList(vo);
		
		model.addAttribute("list", userBlackList);
		return "userBlackList";
	}
	
	/* 블랙 버튼 누를 시 */
	@RequestMapping(value="/blackUser.do", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> blackUser(String userNum) throws Exception
	{
		HashMap<String, String> result = new HashMap<String, String>();

		int count = service.blackUser(userNum);
		if (count == 1) {
			System.out.println("블랙처리 update완료");
			result.put("result", "1");
		} else {
			System.out.println("블랙처리 update안함");
			result.put("result", "0");
		}
		return result;
	}
	
	/* 블랙 해제 */
	@RequestMapping(value="/reUser.do", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> reUser(String userNum) throws Exception
	{
		HashMap<String, String> result = new HashMap<String, String>();

		int count = service.reUser(userNum);
		if (count == 1) {
			System.out.println("블랙처리 해제완료");
			result.put("result", "1");
		} else {
			System.out.println("블랙처리 해제안함");
			result.put("result", "0");
		}
		return result;
	}
	
	

	

	
}
