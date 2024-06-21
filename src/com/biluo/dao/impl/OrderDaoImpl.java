package com.biluo.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.biluo.dao.OrderDao;
import com.biluo.domain.Brand;
import com.biluo.domain.MyOrder;
import com.biluo.domain.PageBean;
import com.biluo.domain.User;

//Repository把这个注册  AdminDaoImpl
@Repository
public class OrderDaoImpl implements OrderDao {

	@Resource
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public boolean addOrder(MyOrder order) {
		int flag = (Integer) sessionFactory.getCurrentSession().save(order) ;
		return (flag>0?true:false);
	}

	@Override
	public List<MyOrder> goAndShowUserOrder(String u_id, int currentPage, int pageSize) {
		String hql = "from MyOrder where u_id=?";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, u_id);
		query.setFirstResult((currentPage - 1)*pageSize);
		query.setMaxResults(pageSize);
		
		return  (ArrayList<MyOrder>) query.list();
	}

	@Override
	public int getAllUserOrderCount() {
		// TODO Auto-generated method stub
		String hql = "from MyOrder";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		return  query.list().size();
	}

	@Override
	public boolean delCartByCart_id(int cart_id) {
		// TODO Auto-generated method stub
		String hql = "delete CartBean c where c.cart_id=?";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, cart_id);
		return (query.executeUpdate() > 0);
	}

	@Override
	public int goAndShowAllUserOrderCount() {
		String hql = "from MyOrder";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		return  query.list().size();
	}

	@Override
	public List goAndShowUserOrder(int currentPage, int pageSize) {
		String hql = "from MyOrder order by o_id desc ";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		return  query.list();
	}

	@Override
	public boolean updateOrderState(String o_id) {
		//注意set之间是有逗号分割的
		String hql = "update MyOrder m set m.o_state=2  where m.o_id=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, Integer.parseInt(o_id));
		return (query.executeUpdate() > 0);
	}

	@Override
	public List<MyOrder> goAndShowAllUserOrderCountState1() {
		String hql = "from MyOrder where o_state=1 order by o_id desc ";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		return  query.list();
	}

	@Override
	public List<MyOrder> printAllOrderToTextState1() {
		String hql = " from MyOrder where  o_state =1 ";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		return  (ArrayList<MyOrder>) query.list();
	}

	@Override
	public boolean updateAllOrderStateTo2() {
		//注意set之间是有逗号分割的
		String hql = "update MyOrder m set m.o_state=2  where m.o_state=1";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
	
		return (query.executeUpdate() > 0);
	}


	
}
