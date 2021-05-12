package com.spring.main;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.spring.beans.Bean;
import com.spring.beans.Bean2;
import com.spring.beans.Bean3;

public class MainClass {

	
	public static void main(String[]args) {

		System.out.println("==================");
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("com/spring/config/beans.xml");

		Bean b1 = ctx.getBean("b1", Bean.class);

		System.out.println("==================");
		System.out.print("b1 : ");
		System.out.println(b1);
		
		System.out.println("==================");
		
		Bean2 b2 = ctx.getBean("b2", Bean2.class); 
		System.out.print("b2 : ");
		System.out.println(b2);
		
		System.out.println("==================");
//		
//		Bean3 b3 = ctx.getBean("b3", Bean3.class);20210416 주석처리
//		System.out.print("b3 : ");
//		System.out.println(b3);
		
		ctx.close(); // 객체 소멸 = destroy 메소드 호출, 마지막 호출된것부터 닫는다.
		
//		Bean b2 = ctx.getBean("b2", Bean.class);
//		System.out.print("b2 : ");
//		System.out.println(b2);
//		
//		Bean b3 = ctx.getBean("b2", Bean.class);
//		System.out.print("b3 : ");
//		System.out.println(b3);
//		
//		Bean b4 = ctx.getBean("b3", Bean.class);
//		System.out.print("b4 : ");
//		System.out.println(b4);
//		
//		Bean b5 = ctx.getBean("b3", Bean.class);
//		System.out.print("b5 : ");
//		System.out.println(b5);
	}
	
	
	
}
