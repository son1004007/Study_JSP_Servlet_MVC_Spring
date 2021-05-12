package com.spring.main;

import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;

import com.spring.beans.Bean;
import com.spring.beans.Hello;

public class MainClass {
	public static void main(String []args) {
		/* 20210414 spring 첫날

// bean.xml 파일을 로딩한다.
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("com/spring/config/beans.xml");
//		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("C:/Users/son10/OneDrive - re-contextualize efficient channels/java_soldesk/workspace/soldesk_java_easy1/jsp_src/Basic/src/main/java/com/spring/config");
		
//		다운캐스팅
		Hello h1 = (Hello)ctx.getBean("hello");
		me(h1);
//		클래스 지정
		Hello h2 = ctx.getBean("hello", Hello.class);
		me(h2);
		
	}
	
	public static void me(Hello h) {
		h.say();
		*/
		

	}
	
	public static void b1() {
		ClassPathResource res = new ClassPathResource("com/spring/config/beans.xml");
		
		XmlBeanFactory fac = new XmlBeanFactory(res);
		Bean be1 = fac.getBean("b1", Bean.class);
		System.out.println(be1);
		
		Bean be2 = fac.getBean("b1", Bean.class);
		System.out.println(be2);
	}
	
	public static void b2() {
		ClassPathXmlApplicationContext ctx2 = new ClassPathXmlApplicationContext("com/spring/config/beans.xml");
//		클래스 패스에 위치한 xml 파일에서 내용을 읽어 들인다.
		
		Bean be1=(Bean)ctx2.getBean("b1", Bean.class);
		
		Bean be2=ctx2.getBean("b1", Bean.class);
	}
	
	
}
