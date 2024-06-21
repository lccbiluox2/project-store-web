package com.biluo.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.biluo.dao.AdminDao;
import com.biluo.domain.Admin;
import com.biluo.domain.Brand;
import com.biluo.domain.Category;

//Repository把这个注册  AdminDaoImpl
@Repository
public class AdminDaoImpl implements AdminDao {

	@Resource
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public Admin getAdmin(Admin admin) {
		String hql = "from Admin u where u.a_name=? and u.a_passwd=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, admin.getA_name());
		query.setString(1, admin.getA_passwd());
		return (Admin) query.uniqueResult();
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<Brand> getAllBrand() {
		// TODO Auto-generated method stub
		String hql = "from Brand";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		return  (ArrayList<Brand>) query.list();
	}

	@Override
	public Brand getBrandById(String id) {
		String hql = "from Brand b where b.b_id=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, new Integer(id));
		return (Brand) query.uniqueResult();
	}

	@Override
	public boolean updateBrandById(Brand brand) {
		// TODO Auto-generated method stub
		//注意set之间是有逗号分割的
		String hql = "update Brand b set b.b_name=? , b.b_img_path=? where b.b_id=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, brand.getB_name());
		query.setString(1, brand.getB_img_path());
		query.setInteger(2, brand.getB_id());
		return (query.executeUpdate() > 0);
	}

	@Override
	public boolean delBrandById(Integer integer) {
		// TODO Auto-generated method stub
		String hql = "delete Brand b where b.id=?";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, integer);
		return (query.executeUpdate() > 0);
	}

	@Override
	public boolean addBrand(Brand brand) {
		
		if(brand.getB_img_path() == ""){
			brand.setB_img_path("/mystory/admin/brand/img/mydefault.jpg");
		}
		int flag = (Integer) sessionFactory.getCurrentSession().save(brand) ;
		return (flag>0?true:false);
	}

	@Override
	public boolean updateBrandPhoto(Integer integer, String filePath) {
		// TODO Auto-generated method stub
		String hql = "update Brand b set b.b_img_path=?  where b.b_id=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, filePath);
		query.setInteger(1, integer);
		return (query.executeUpdate() > 0);
	}

	
	@Override
	public List<Category> finaCategoryTop() {
		String sql = "from Category g where g.c_pid=0";
		return sessionFactory.getCurrentSession().createQuery(sql).list();
	}

	@Override
	public List<Category> finaCategoryById(Long id) {
		String sql = "from Category g where g.c_pid=?";
		return sessionFactory.getCurrentSession().createQuery(sql)//
				.setParameter(0, id.intValue())//
				.list();
	}
	
	
	@Override
	public Category getCategoryById(Long id) {
		// TODO Auto-generated method stub
		return (Category) sessionFactory.getCurrentSession().get(Category.class, id.intValue());
	}
	@Override
	public void categoryAdd(Category category) {
		sessionFactory.getCurrentSession().save(category);
		
	}
	@Override
	public void categoryUpdate(Category category) {
		String hqlString= "update Category g set g.c_pid=?,g.c_name=? where g.c_id=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hqlString);
		
				
		query.setInteger(0, category.getC_pid());
		query.setString(1, category.getC_name());
		query.setInteger(2, category.getC_id());
		query.executeUpdate();
		
	}
	@Override
	public void categoryDelete(Category category) {
		String hql = "delete from Category g where g.c_id=?";
		sessionFactory.getCurrentSession().createQuery(hql)//
		.setInteger(0, category.getC_id())//
		.executeUpdate();
		
	}
	@Override
	public List<Category> getCategoryByNames(String name) {
		String sql = "from Category g where g.c_name like %" + name +"%";
		return sessionFactory.getCurrentSession().createQuery(sql).list();
	}
	@Override
	public List<Category> finaCategoryAll() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from Category").list();
	}

	
	
	/*
	@Override
	public ArrayList<Category> getCategory() {
		// TODO Auto-generated method stub
		String hql = "from Category";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		return  (ArrayList<Category>) query.list();
	}

	@Override
	public boolean addCategory(Category category) {
		// TODO Auto-generated method stub
		int flag = (Integer) sessionFactory.getCurrentSession().save(category) ;
		return (flag>0?true:false);
	}
	
	@Override
	public boolean delCategory(Integer id){
		String hql = "delete Category c where c.id=?";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, id);
		return (query.executeUpdate() > 0);
	}

	@Override
	public boolean addStory(Story story) {
		// TODO Auto-generated method stub
		int flag = (Integer) sessionFactory.getCurrentSession().save(story);
		return (flag>0?true:false);
	}

	@Override
	public Category getCategoryById(Integer id) {
		String hql = "from Category c where c.id=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, id);
		
		return (Category) query.uniqueResult();
	}

	@Override
	public boolean modifyCategoryByIdReal(Category category) {
		String hql = "update Category c set c.name=? where c.id=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, category.getName());
		query.setInteger(1, category.getId());
		return (query.executeUpdate() > 0);
	}

	@Override
	public List<Story> getStoryByCategoryReal(Integer id) {
		// TODO Auto-generated method stub
		String hql = "from Category c where c.id=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, id);
		
		Category cate = (Category) query.uniqueResult();
		List<Story> list = cate.getStory();
		return list;
	}

	@Override
	public boolean updateStoryPhoto(Integer integer, String fileName) {
		String hql = "update Story s set s.photo=? where s.id=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, fileName);
		query.setInteger(1, integer);
		return (query.executeUpdate() > 0);
	}

	@Override
	public boolean delStoryById(Integer id) {
		// TODO Auto-generated method stub
		String hql = "delete Story s where s.id=?";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, id);
		return (query.executeUpdate() > 0);
	}

	@Override
	public List<Story> getStoryByClick() {
		// TODO Auto-generated method stub
		String hql = "from Story c where c.click=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, 0);
		return query.list();
	}

	@Override
	public List<Story> getStoryBySerialize() {
		// TODO Auto-generated method stub
		String hql = "from Story c where c.serialize=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, 2);
		return query.list();
	}

	@Override
	public List<Story> getStoryByMounthVote() {
		String hql = "from Story c where c.mounthVote=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, 0);
		return query.list();
	}
*/
}
