package com.biluo.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.biluo.common.TreeShow;
import com.biluo.dao.AdminDao;
import com.biluo.domain.Admin;
import com.biluo.domain.Brand;
import com.biluo.domain.Category;
import com.biluo.domain.PageBean;
import com.biluo.domain.Product;
import com.biluo.domain.User;
import com.biluo.service.AdminService;

@Service
@Transactional
public class AdminServiceImpl implements AdminService{

	@Resource
	private AdminDao adminDao;
	
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public Admin getAdmin(Admin admin) {
		return adminDao.getAdmin(admin);
	}

	//5/27分页
	@Override
	public PageBean getAllBrand(int currentPage, int pageSize) {
		//list集合
		List<Brand> brandList = adminDao.getAllBrand(currentPage, pageSize);
		//所有品牌的总数
		int recordCount = adminDao.getAllBrandCount();
		//pageCount判断页数有没有超出总页数
		int pageCount = recordCount % pageSize == 0 ? recordCount / pageSize : recordCount / pageSize +1;
		if(currentPage > pageCount ){
			currentPage = pageCount;
		}
		if(currentPage < 1){
			currentPage = 1;
		}
		//返回个PageBean
		return new PageBean(currentPage, pageSize, recordCount, brandList);
	}

	@Override
	public Brand getBrandById(String id) {
		return adminDao.getBrandById(id);
	}

	@Override
	public boolean updateBrandById(Brand brand) {
		return adminDao.updateBrandById(brand);
	}

	@Override
	public boolean delBrandById(String id) {
		return adminDao.delBrandById(new Integer(id));
	}

	@Override
	public boolean addBrand(Brand brand) {
		// TODO Auto-generated method stub
		return adminDao.addBrand(brand);
	}

	@Override
	public boolean updateBrandPhoto(Integer integer, String filePath) {
		// TODO Auto-generated method stub
		return adminDao.updateBrandPhoto(integer,filePath);
	}

	
	
	
	@Override
	public List<Category> finaCategoryTop() {
		
		return adminDao.finaCategoryTop();
	}

	@Override
	public List<TreeShow> finaCategoryTreeShow(List<Category> top , TreeShow tree ) {
		List<TreeShow> treeList = new ArrayList<TreeShow>();
		for(Category category : top){
			TreeShow treeShow = new TreeShow();
			treeShow.setParent(tree);
			treeShow.setCategory(category);
			List<Category> categoryChild = adminDao.finaCategoryById(new Long(category.getC_id()));
			List<TreeShow> categoryList2 = finaCategoryTreeShow(categoryChild , treeShow);
			treeShow.setChildrens(categoryList2);
			treeList.add(treeShow);
		}
		
		
		return treeList;
	}

	@Override
	public Category getCategoryById(Long id) {
		// TODO Auto-generated method stub
		return adminDao.getCategoryById(id);
	}

	@Override
	public void categoryAdd(Category category) {
		adminDao.categoryAdd(category);
		
	}

	@Override
	public void categoryUpdate(Category category) {
		adminDao.categoryUpdate(category);
		
	}

	@Override
	public void categoryDelete(Category category) {
		Long id = category.getC_id().longValue();
		adminDao.categoryDelete(category);
	
			List<Category> categories = adminDao.finaCategoryById(id);
			for(Category category1 : categories){
				
				categoryDelete(category1);
			}
		
		
	}

	@Override
	public List<Category> getCategoryByNames(String name) {
		// TODO Auto-generated method stub
		return adminDao.getCategoryByNames(name);
	}

	@Override
	public List<Category> finaCategoryAll() {
		// TODO Auto-generated method stub
		return adminDao.finaCategoryAll();
	}

	@Override
	public int getAllBrandCount() {
		// TODO Auto-generated method stub
		return adminDao.getAllBrandCount();
	}

	@Override
	public boolean addUserRegister(User user) {
		// TODO Auto-generated method stub
		return adminDao.addUserRegister(user);
	}

	@Override
	public int getAllUserCount() {
		// TODO Auto-generated method stub
		return adminDao.getAllUserCount();
	}

	

	@Override
	public boolean getUser(User user) {
		User myUser = adminDao.getUser(user);
		if(myUser == null)
			return false;
		return true;
	}

	@Override
	public boolean delUserById(String id) {
		// TODO Auto-generated method stub
		return adminDao.delUserById(new Integer(id));
	}
	
	

	@Override
	public void productAdd(Product product) {
		adminDao.productAdd(product);
		
	}

	@Override
	public Product getProductById(Long id) {
		// TODO Auto-generated method stub
		return adminDao.getProductById(id);
	}

	@Override
	public void productUpdate(Product product) {
		adminDao.productUpdate(product);
		
	}

	@Override
	public void productDelete(Long id) {
		// TODO Auto-generated method stub
		adminDao.productDelete(id);
	}

	@Override
	public int getAllProductCount() {
		// TODO Auto-generated method stub
		return adminDao.getAllProductCount();
	}

	@Override
	public List<Product> finaProductKCList(int myoffset, int mypagesize,
			Long kuCunNum, Long stateNum, String name) {
		// TODO Auto-generated method stub
		
		String string = "";
		if(name != ""){
			string = "where p.p_name like '%" + name + "%' ";
		}
		
		
			//0是升序,1是降序
		if(kuCunNum == 0){
			string += "order by p.p_goods_surplus asc";
		}else{
			string += "order by p.p_goods_surplus desc";
		}
		System.out.println("--------------------dd" + string);
		return adminDao.finaProductKCList(myoffset , mypagesize, string);
	}

	@Override
	public List<Brand> getAllBrand() {
		// TODO Auto-generated method stub
		return adminDao.getAllBrand();
	}

	@Override
	public List<Category> getChildCategoryByFatherId(int integer) {
		// TODO Auto-generated method stub
		return adminDao.getChildCategoryByFatherId(integer);
	}

	@Override
	public User getUserById(int id) {
		// TODO Auto-generated method stub
		return adminDao.getUserById(id);
	}

	@Override
	public boolean updateUserById(User user) {
		// TODO Auto-generated method stub
		return adminDao.getUserById(user);
	}

   //分页数据2016/5/25
	@Override
	public PageBean getAllUser(int myoffset, int mypagesize) {
		int recordCount = adminDao.getAllUserCount();
		int pageCount = recordCount % mypagesize == 0 ? recordCount / mypagesize : recordCount / mypagesize +1;
		if(myoffset > pageCount ){
			myoffset = pageCount;
		}
		if(myoffset < 1){
			myoffset = 1;
		}
		return new PageBean(myoffset, mypagesize, recordCount, adminDao.getAllUser( myoffset,  mypagesize));
	}
		
		
	//分页数据2016/5/25
	@Override
	public PageBean finaProductList(int offset , int pagesize) {
		// TODO Auto-generated method stub
		int recordCount = adminDao.getAllProductCount();
		int pageCount = recordCount % pagesize == 0 ? recordCount / pagesize : recordCount / pagesize +1;
		if(offset > pageCount ){
			offset = pageCount;
		}
		if(offset < 1){
			offset = 1;
		}
		return new PageBean(offset, pagesize, recordCount, adminDao.finaProductList(offset , pagesize));
	}

	
	
	
}
