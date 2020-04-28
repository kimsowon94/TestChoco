package com.test.choco.controller;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.choco.HomeController;
import com.test.choco.service.UserService;
import com.test.choco.vo.UserVO;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value="/boardNotice.do", method = RequestMethod.GET)
	public String boardNotice()
	{
		return "noticeBoard";		
	}
	
	@RequestMapping(value="/signupForm.do", method = RequestMethod.GET)
	public String sigupForm()
	{
		return "signup";
	}
	
	
	// 회원 insert
	@RequestMapping(value="registerUser.do", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> registerUser(UserVO vo) throws Exception
	{
		HashMap<String, String> result = new  HashMap<String, String>();
		int count = userService.registerUser(vo);
		
		if(count > 0)
		{
			System.out.println("회원가입 완료");
			result.put("result", "success");
		}
		else
		{
			System.out.println("회원가입 실패");
			result.put("result", "fail");
		}
		return result;
	}
	
	
	/* userId 중복값 확인 */
	@RequestMapping(value="userIdCheck.do", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(@RequestParam("userId") String userId) throws Exception
	{
		return userService.idCheck(userId);
	}
}
