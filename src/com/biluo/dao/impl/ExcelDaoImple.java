package com.biluo.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.biluo.dao.ExcelDao;
import com.biluo.domain.Brand;
import com.biluo.domain.MyOrder;
import com.biluo.domain.User;

@Repository
public class ExcelDaoImple implements ExcelDao {
	
	@Resource
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<User> getAllUser() {
		String hql = " from User ";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		return  (ArrayList<User>) query.list();
	}

	@Override
	public List<MyOrder> getAllMyOrder() {
		String hql = " from MyOrder ";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		return  (ArrayList<MyOrder>) query.list();
	}

	@Override
	public List<MyOrder> getAllOrder() {
		// TODO Auto-generated method stub
		String hql = "from MyOrder ";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		return  (ArrayList<MyOrder>) query.list();
	}
	
}
