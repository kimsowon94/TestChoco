package com.test.choco.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.choco.HomeController;
import com.test.choco.service.AdminService;
import com.test.choco.vo.AdminVO;
import com.test.choco.vo.BoardVO;

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
	
	/* 공지사항에서 -> 공지사항 입력폼 */
//	@RequestMapping(value="noticeList.do", method = RequestMethod.GET)
//	public String noticeList()
//	{
//		return "noticeBoard";	
//	}
	
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
}
