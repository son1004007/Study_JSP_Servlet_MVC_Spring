package com.spring.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@Configuration
public class BeanConfigClass {
	@Bean(initMethod="init_1", destroyMethod="destory_1")

}
