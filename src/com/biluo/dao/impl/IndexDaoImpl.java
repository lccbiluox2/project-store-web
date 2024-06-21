package com.biluo.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.biluo.dao.IndexDao;
import com.biluo.domain.Category;
import com.biluo.domain.Product;

@Repository
public class IndexDaoImpl implements IndexDao{
	@Resource
	private SessionFactory sessionFactory;
	private Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public List<Category> finaCategroyTop() {
		String sql = "from Category g where g.c_pid=0";
		return getSession().createQuery(sql).list();
	}
	@Override
	public List<Category> finaCategoryById(Long id) {
		// TODO Auto-generated method stub
		 String sql = "from Category g where g.c_pid=?";
		return getSession().createQuery(sql)//
				.setParameter(0, id.intValue())//
				.list();
	}
	@Override
	public List<Product> finaProductByCondition(String sql) {
	
		return getSession().createQuery(sql)//
				.setFirstResult(0)//
				.setMaxResults(5).list();
	}

	@Override
	public int getProductCount() {
		// TODO Auto-generated method stub
		return getSession().createQuery("from Product").list().size();
	}

	@Override
	public Product getProductById(int n) {
		return (Product) getSession().get(Product.class, n);
		
	}

	@Override
	public List<Product> finaProductById(Integer c_id) {
		String sql = "from Product p where p.c_id=" + c_id + " order by p.p_id desc";
		return getSession().createQuery(sql).setFirstResult(0)//
				.setMaxResults(10).list();
	}




	//搜索栏查询商品
	@Override
	public List<Product> finaProductBySearch(String sql) {
		
		return getSession().createQuery(sql).list();
		
	}

	
	
	
	

}
