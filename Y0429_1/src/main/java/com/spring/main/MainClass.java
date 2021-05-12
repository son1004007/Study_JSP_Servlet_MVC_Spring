package com.spring.main;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.spring.beans.TestBean1;
import com.spring.config.BeanConfigClass;

public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ClassPathXmlApplicationContext ctx1 = new ClassPathXmlApplicationContext("com/spring/config/beans.xml");

		TestBean1 xml1 = ctx1.getBean(TestBean1.class);
		try {
			xml1.method1();
		} catch (Exception e) {

		}

		ctx1.close();

		System.out.println("========================================");

		AnnotationConfigApplicationContext ctx2 = new AnnotationConfigApplicationContext(BeanConfigClass.class);

		TestBean1 java1 = ctx2.getBean(TestBean1.class);
		try {
			java1.method1();
		} catch (Exception e) {
			e.printStackTrace();
		}

		ctx2.close();
	}

}