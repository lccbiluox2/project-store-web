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
import com.biluo.domain.Product;
import com.biluo.domain.User;

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
	public ArrayList<Brand> getAllBrand(int offset, int pagesize) {
		// TODO Auto-generated method stub
		String hql = "from Brand order by b_id desc";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		query.setFirstResult((offset - 1)*pagesize);
		query.setMaxResults(pagesize);
		
		return  (ArrayList<Brand>) query.list();
	}

	
	@SuppressWarnings("unchecked")
	@Override
	public List<Brand> getAllBrand() {
		String hql = "from Brand ";
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

	@Override
	public int getAllBrandCount() {
		// TODO Auto-generated method stub
		String hql = "from Brand";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		return   query.list().size();
	}

	@Override
	public boolean addUserRegister(User user) {
		// TODO Auto-generated method stub
		int flag = (Integer) sessionFactory.getCurrentSession().save(user) ;
		return (flag>0?true:false);
	}

	@Override
	public int getAllUserCount() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from User").list().size();
	}

	@Override
	public ArrayList<User> getAllUser(int offset, int pagesize) {
		// TODO Auto-generated method stub
		String hql = "from User order by u_id desc";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		query.setFirstResult((offset - 1)*pagesize);
		query.setMaxResults(pagesize);
		
		return  (ArrayList<User>) query.list();
	}

	@Override
	public User getUser(User user) {
		String hql = "from User u where u.u_name=? and u.u_passwd=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, user.getU_name());
		query.setString(1, user.getU_passwd());
		return (User) query.uniqueResult();
	}

	@Override
	public boolean delUserById(Integer integer) {
		String hql = "delete User u where u.id=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, integer);
		return (query.executeUpdate() > 0);
	}

	
	@Override
	public List<Product> finaProductList(int offset , int pagesize) {
		String sql = "from Product";
		Query query = sessionFactory.getCurrentSession().createQuery(sql);
		query.setFirstResult((offset - 1) * pagesize);
		query.setMaxResults(pagesize);
		return query.list();
	}

	@Override
	public void productAdd(Product product) {
		
		if(product.getP_img_path() == "" || product.getP_img_path() == null){
			product.setP_img_path("/mystory/admin/brand/img/mydefault.jpg");
		}
		sessionFactory.getCurrentSession().save(product);
		
	}

	@Override
	public Product getProductById(Long id) {
		// TODO Auto-generated method stub
		return (Product) sessionFactory.getCurrentSession().get(Product.class, id.intValue());
	}

	@Override
	public void productUpdate(Product product) {
		if(product.getP_img_path() == "" || product.getP_img_path() == null){
			product.setP_img_path(getProductById(new Long(product.getP_id())).getP_img_path());
		}
		
		String sql = "update Product p set p.p_vip_price=?,p.p_shop_price=?,p.p_attr=?,p.p_b_id=?,p.p_description=?" +
				",p.p_goods_surplus=?,p.c_id=?,p.p_name=?,p.p_img_path=?,p.p_number=? where p.p_id=?";
		sessionFactory.getCurrentSession().createQuery(sql)//
		.setInteger(0, product.getP_vip_price())//
		.setInteger(1, product.getP_shop_price())//
		.setString(2, product.getP_attr())//
		.setInteger(3, product.getP_b_id())//
		.setString(4, product.getP_description())//
		.setInteger(5, product.getP_goods_surplus())//
		.setInteger(6, product.getC_id())//
		.setString(7, product.getP_name())//
		.setString(8, product.getP_img_path())
		.setString(9, product.getP_number())//
		.setInteger(10, product.getP_id())//
		.executeUpdate();
		
	}

	@Override
	public void productDelete(Long id) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().createQuery(//
				"delete Product p where p.p_id=?")//
				.setInteger(0, id.intValue())//
				.executeUpdate();
	}

	@Override
	public int getAllProductCount() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from Product").list().size();
	}

	@Override
	public List<Product> finaProductKCList(int myoffset, int mypagesize,
			String string) {
		String sql = "from Product p " + string;
		System.out.println(sql);
		return sessionFactory.getCurrentSession().createQuery(sql)//
				.setFirstResult((myoffset - 1) * mypagesize)
				.setMaxResults(mypagesize)
				.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Category> getChildCategoryByFatherId(int integer) {
		System.out.println("integer"+integer);
		// TODO Auto-generated method stub
		String hql = "from  Category g where g.c_pid=?";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, integer);
		
		return  (ArrayList<Category>) query.list();
	}

	
	

	
	
}
