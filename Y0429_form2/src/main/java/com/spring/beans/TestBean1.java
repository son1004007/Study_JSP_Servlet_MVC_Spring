package com.spring.beans;


import org.springframework.stereotype.Component;

@Component
public class TestBean1 {

	public TestBean1() {
		System.out.println("Bean1 생성자");
	}
	
	public void init_1() {
		System.out.println("init");
	}
	public void destory_1() {
		System.out.println("destroy");
	}
}
