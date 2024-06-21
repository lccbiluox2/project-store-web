package com.biluo.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.biluo.dao.AdminDao;
import com.biluo.domain.Admin;
import com.biluo.domain.Brand;
import com.biluo.domain.Category;
import com.biluo.domain.Product;
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

	@Override
	public ArrayList<Brand> getAllBrand() {
		return adminDao.getAllBrand();
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
	public List<Category> finaCategoryById(Long id) {
		// TODO Auto-generated method stub
		return adminDao.finaCategoryById(id);
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
	
			List<Category> categories = finaCategoryById(id);
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
	
	
	
}
