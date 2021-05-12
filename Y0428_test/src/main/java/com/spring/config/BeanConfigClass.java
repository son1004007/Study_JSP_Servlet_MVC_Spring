package com.spring.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@Configuration
@ComponentScan(basePackages = {"com.spring.beans", "com.spring.advisor"})
@EnableAspectJAutoProxy
public class BeanConfigClass {

}
