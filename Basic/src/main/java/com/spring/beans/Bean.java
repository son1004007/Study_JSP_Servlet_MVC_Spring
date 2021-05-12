package com.spring.beans;

public class Bean {

	public Bean() {
		System.out.println("생성자");
	}
	public void bean1() {
		System.out.println("Bean1의 init method");
	}
	public void bean1_destory() {
		System.out.println("Bean1의 destory method");
	}
}
