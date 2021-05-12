package com.spring.beans;

public class Bean3 {
	public Bean3() {
		System.out.println("Bean3 생성자");
	}
	public void default_init() {
		System.out.println("Bean3 Default Init");
	}
	public void default_destroy() {
		System.out.println("Bean3 Default Destory");
	}
	public void b3_init() {
		System.out.println("Bean3 b3 Init");
	}
	public void b3_destroy() {
		System.out.println("Bean3 b3 Destory");
	}
}
