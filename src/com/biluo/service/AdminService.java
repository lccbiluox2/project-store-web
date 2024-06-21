package com.biluo.service;

import java.util.ArrayList;
import java.util.List;

import com.biluo.common.TreeShow;
import com.biluo.domain.Admin;
import com.biluo.domain.Brand;
import com.biluo.domain.Category;
import com.biluo.domain.Product;
import com.biluo.domain.User;


public interface AdminService {

	public Admin getAdmin(Admin admin);

	public ArrayList<Brand> getAllBrand(int offset, int pagesize);

	public Brand getBrandById(String id);

	public boolean updateBrandById(Brand brand);

	public boolean delBrandById(String id);

	public boolean addBrand(Brand brand);

	public boolean updateBrandPhoto(Integer integer, String filePath);



	
	List<Category> finaCategoryTop();
	
	public List<TreeShow> finaCategoryTreeShow(List<Category> categoryList,TreeShow treeShow);

	Category getCategoryById(Long id);

	void categoryAdd(Category category);

	void categoryUpdate(Category category);

	void categoryDelete(Category category);

	

	List<Category> finaCategoryAll();

	List<Category> getCategoryByNames(String name);

	public int getAllBrandCount();

	public boolean addUserRegister(User user);

	public int getAllUserCount();

	public ArrayList<User> getAllUser(int myoffset, int mypagesize);

	public boolean getUser(User user);

	public boolean delUserById(String id);

	public void productDelete(Long id);

	public void productUpdate(Product product);

	public int getAllProductCount();

	public List<Product> finaProductKCList(int myoffset, int mypagesize,
			Long kuCunNum, Long stateNum, String name);

	public List<Product> finaProductList(int myoffset, int mypagesize);

	public List<Brand> getAllBrand();

	public void productAdd(Product product);

	public Product getProductById(Long id);

	public List<Category> getChildCategoryByFatherId(int integer);

	public User getUserById(int id);

	public boolean updateUserById(User user);

	

	

	
	
	/*
	public ArrayList<Category> getCategory();

	public boolean addCategory(Category category);

	public boolean delCategory(Integer integer);

	public boolean addStory(Story story);

	public Category getCategoryById(Integer id);

	public boolean modifyCategoryByIdReal(Category category);

	public List<Story> getStoryByCategoryReal(Integer integer);

	public boolean updateStoryPhoto(Integer integer, String fileName);

	public boolean delStoryById(Integer integer);

	public List<Story> getStoryByClick();

	public List<Story> getStoryBySerialize();

	public List<Story> getStoryByMounthVote();*/

}
