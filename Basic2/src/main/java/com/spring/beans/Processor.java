package com.spring.beans;

import org.springframework.beans.factory.config.BeanPostProcessor;

public class Processor implements BeanPostProcessor{
//	https://jjeongil.tistory.com/1077?category=756027
	public Object postProcessBeforeInitialization(Object obj, String name) {
		
		System.out.println("before");
		return obj;
	}
	public Object postProcessAfterInitialization(Object obj, String name) {
		System.out.println("After");
		return obj;
	}
}
