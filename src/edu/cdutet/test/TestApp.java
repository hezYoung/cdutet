package edu.cdutet.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import edu.cdutet.entity.User;
import edu.cdutet.mapper.UserMapper;
import edu.cdutet.service.UserService;

public class TestApp {
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/*.xml");
		//DataSource ds = (DataSource) context.getBean("dataSource");
		//System.out.println();
		String[] beanNames = context.getBeanDefinitionNames();
		for(String beanName : beanNames) {
			System.out.println(beanName);
		}
		
		UserService userService = context.getBean("userServiceImpl",UserService.class);
		System.out.println(userService);
		
		UserMapper userMapper = context.getBean("userMapper",UserMapper.class);
		User user = userMapper.queryUser("001");
		System.out.println(user);
	}

}
