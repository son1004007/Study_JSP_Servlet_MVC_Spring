package com.spring.beans;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;

public class Test2 {

	@Resource
	public Data data1;
	@Resource(name="data4")
	public Data data2;
	public Test2() {
		System.out.println("Test2의 생성자");
	}
	public Data getData1() {
		return data1;
	}
	public Data getData2() {
		return data2;
	}
	
	

}
