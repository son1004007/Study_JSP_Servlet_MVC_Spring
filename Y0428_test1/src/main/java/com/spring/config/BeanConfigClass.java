package com.spring.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.spring.beans.Data;
import com.spring.beans.Test2;

@Configuration
public class BeanConfigClass {
	@Bean
	public Test2 java1() {
		return new Test2();
	}
	
	@Bean
	public Data data4() {
		return new Data();
	}
	
	@Bean
	public Data data1() {
		return new Data();
	}
}
