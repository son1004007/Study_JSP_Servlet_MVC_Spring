package com.spring.beans;

public class Bean2 {
	public Bean2() {
		System.out.println("Bean2 생성자");
	}
	public void default_init() {
		System.out.println("Bean2 Default Init");
	}
	public void default_destroy() {
		System.out.println("Bean2 Default Destory");
	}
	public void b2_init() {
		System.out.println("Bean2 b2 Init");
	}
	public void b2_destroy() {
		System.out.println("Bean2 b2 Destory");
	}
}
