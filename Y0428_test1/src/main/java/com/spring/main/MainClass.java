package com.spring.main;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.spring.beans.Test;
import com.spring.beans.Test2;
import com.spring.config.BeanConfigClass;

public class MainClass {
	public static void main(String []args) {


// 		문제1
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("com/spring/config/beans.xml");

		
		Test t1 = ctx.getBean("test1", Test.class);
		System.out.printf("t1 : %s\n", t1);
		
		Test t2 = ctx.getBean("test2", Test.class);
		System.out.printf("t2 : %s\n", t2);

//		문제 2.
		Test t3 = ctx.getBean("test3", Test.class);
		System.out.printf("t3.data3 : %s\n", t3.getData3());
		
		Test t4 = ctx.getBean("test4", Test.class);
		System.out.printf("t4.data4 : %s\n", t4.getData4());
		
//		문제3
		AnnotationConfigApplicationContext ctx2 = new AnnotationConfigApplicationContext(BeanConfigClass.class);
		Test2 t5 = ctx2.getBean("java1",Test2.class);
		System.out.println("t5 : "+t5.getData1());
		System.out.println("t5 : "+t5.getData2());
		
		ctx.close();
	
	}
}
