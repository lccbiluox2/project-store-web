package com.biluo.common;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.biluo.domain.Admin;


@Component
public class Installer {

	@Resource
	private SessionFactory sessionFactory;
	
	@Transactional
	public void install(){
		Session session = sessionFactory.getCurrentSession();
		Admin admin = new Admin();
		admin.setA_name("aa");
		admin.setA_passwd("aaa");
		session.save(admin);
		
	}
	public static void main(String[] args){
		ApplicationContext ac = new ClassPathXmlApplicationContext("/config/springAnnotation-hibernate.xml");
		Installer installer = (Installer) ac.getBean("installer");
		installer.install();
	}
}
