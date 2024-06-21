package com.biluo.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.biluo.dao.BeanControlDao;
import com.biluo.domain.CartBean;
import com.biluo.domain.User;

//Repository把这个注册  AdminDaoImpl
@Repository
public class BeanControlDaoImpl implements BeanControlDao {

	@Resource
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public User getUser(String username, String userPasswd) {
	
		String hql = "from User u where u.u_name=? and u.u_passwd=?";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, username);
		query.setString(1, userPasswd);
		
		return (User) query.uniqueResult();
	}

	@Override
	public boolean addProductToCart(CartBean cartBean) {
		int flag = (Integer) sessionFactory.getCurrentSession().save(cartBean) ;
		return (flag>0?true:false);
	}

	@Override
	public List<CartBean> goAndShowUserCart(Integer integer) {
		// TODO Auto-generated method stub
		String hql = "from CartBean b where b.u_id=? and b.state=0";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, integer);
		
		
		return  query.list();
	}

	@Override
	public boolean delCartById(Integer integer) {
		String hql = "delete CartBean o where o.cart_id=?";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, integer);
		return (query.executeUpdate() > 0);
	}
	
	
	
}
