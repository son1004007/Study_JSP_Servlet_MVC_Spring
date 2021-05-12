package kr.co.softcampus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String home() {
		System.out.println("home");
//		return null;
		return "/WEB-INF/views/index.jsp";
	}
	
//	@RequestMapping(value="/test1", method=RequestMethod.GET)
//	public String test1() {
//		System.out.println("test1");
//		return null;
//	}
}
