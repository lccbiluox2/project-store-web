package com.biluo.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.biluo.dao.IndexDao;
import com.biluo.domain.Brand;
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

	@SuppressWarnings("unchecked")
	@Override
	public List<Brand> getAllBrand() {
		// TODO Auto-generated method stub
		 String sql = "from Brand ";
		return getSession().createQuery(sql).list();
	}

	@Override
	public Brand getBrandById(int brandId) {
		// TODO Auto-generated method stub
		String sql = "from Brand b where b.b_id=?";
		return (Brand) getSession().createQuery(sql).setInteger(0, brandId)
				.uniqueResult();
	}


	@Override
	public List<Product> getProductByBrandId(int id) {
		// TODO Auto-generated method stub
		String sql = "from Product p where p.p_b_id=?";
		return getSession().createQuery(sql).setInteger(0, id)
				.list();
	}

	@Override
	public Category getCategoryById(Integer id) {
		// TODO Auto-generated method stub
		return (Category) getSession().get(Category.class, id);
	}

	@Override
	public List<Product> finaProductByCategory(String sql, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return getSession().createQuery(sql)
				.setFirstResult((currentPage - 1) * pageSize)
				.setMaxResults(pageSize).list();
	}

	@Override
	public List<Product> finaProductList(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return getSession().createQuery("from Product")
				.setFirstResult((currentPage - 1) * pageSize)
				.setMaxResults(pageSize).list();
	}

	//搜索栏查询商品
	@Override
	public List<Product> finaProductBySearch(String sql, int currentPage, int pageSize) {
		
		return getSession().createQuery(sql)
				.setFirstResult((currentPage - 1) * pageSize)
				.setMaxResults(pageSize).list();
		
	}

	
	
	
	

}
