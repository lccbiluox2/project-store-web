package com.biluo.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.biluo.dao.AdminDao;
import com.biluo.domain.Admin;

public class TestDao {
	
	@Test
	public void test1(){
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:config/spring*.xml");
	
		AdminDao dao = applicationContext.getBean(AdminDao.class);
		
		
		Admin admin = new Admin();
		
		dao.getAdmin(admin);
	}
}
