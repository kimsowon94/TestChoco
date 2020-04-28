package com.test.choco.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.choco.HomeController;

@Controller
public class UserController {
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
}
