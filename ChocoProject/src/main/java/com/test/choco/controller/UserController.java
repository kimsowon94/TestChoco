package com.test.choco.controller;

import java.util.HashMap;
import java.util.List;

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
	
	/* 마이페이지 이동 */
	@RequestMapping(value="myPage.do", method = RequestMethod.GET)
	public String myPage(Model model,@RequestParam("userId") String userId ) throws Exception
	{
		List<UserVO> userInfo = userService.userInfoList(userId);
		
		model.addAttribute("userInfo", userInfo);
		return "myPage";
	}
	/* 회원정보 수정란에 데이터뿌리기 */
//	@RequestMapping(value="myPage.do", method = RequestMethod.POST)
//	@ResponseBody
//	public String userInfoList(@RequestParam("userId") String userId, Model model) throws Exception
//	{
//		List<UserVO> userInfo = userService.userInfoList(userId);
//		
//		model.addAttribute("userInfo", userInfo);
//		return "myPage";
//	}
	
	/* 로그인 */
	@RequestMapping(value="userLogin.do", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> userLogin(@RequestParam("userId") String userId, @RequestParam("userPw") String userPw
			, HttpSession session, UserVO vo, Model model) throws Exception
	{
		HashMap<String, String> result = new  HashMap<String, String>();
		String userName = userService.userLogin(vo);
		System.out.println("userName ======= : " + userName);
		
		
		if(userName == ""  || userName == null)
		{
			System.out.println("로그인 실패");
			 result.put("result", "fail"); 
		}
		else
		{
			System.out.println("로그인 성공");
			session.setAttribute("userId", userId);
			model.addAttribute("userName", userName);
			result.put("result",userName); 
		}
		
		return result;
	}
	
	/* 회원정보 update */
	@RequestMapping(value="/userInfoUpdate.do", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> userInfoUpdate(UserVO vo) throws Exception
	{
		HashMap<String, String> result = new HashMap<String, String>();
		int count = userService.userInfoUpdate(vo);
		
		if(count > 0)
		{
			System.out.println("회원정보 수정 완료");
			result.put("result", "success");
		}
		else
		{
			System.out.println("회원정보 수정 실패");
			result.put("result", "fail");
		}
		return result;		
	}
	
	/* 로그아웃 */
	@RequestMapping(value="/logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session)
	{
		String id=(String) session.getAttribute("userId");
		
		session.removeAttribute(id);
		
		session.invalidate();
		
		System.out.println("session에 아이디값 남아있니? :" +id);
		
		
		return "redirect:home.do";
	}

}
