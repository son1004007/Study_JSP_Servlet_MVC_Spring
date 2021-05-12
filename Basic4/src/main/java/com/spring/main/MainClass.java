package com.spring.main;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.spring.beans.TestBean;

public class MainClass {

	public static void main(String[] args) {
		TestBean obj1 = new TestBean();
		obj1.setData1(100);
		
		System.out.printf("obj1.data1 : %d\n", obj1.getData1());
		
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("com/spring/config/beans.xml");
		
		TestBean t1 = ctx.getBean("t1", TestBean.class);
		System.out.printf("t1.data1 : %d\n", t1.getData1());
		System.out.printf("t1.data2 : %f\n", t1.getData2());
		System.out.printf("t1.data3 : %s\n", t1.isData3());
		System.out.printf("t1.data4 : %s\n", t1.getData4());
		System.out.printf("t1.data5 : %s\n", t1.getData5());
		System.out.printf("t1.data6 : %s\n", t1.getData6());
		
		t1.setData1(10);
		t1.setData2(3.14);
		t1.setData3(false);
		t1.setData4("테스트");
		System.out.println(t1.getData1());
		System.out.println(t1.getData2());
		System.out.println(t1.isData3());
		System.out.println(t1.getData4());
		ctx.close();
	}
}
