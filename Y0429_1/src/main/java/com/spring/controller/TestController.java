package com.spring.controller;

import org.springframework.stereotype.Controller;

import com.spring.beans.DataBean;

@Controller
public class TestController {
	@PostMapping("/test1")
	public String test1(@ModelAttribute DataBean bean) {
		return "test1";
	}
	
}
