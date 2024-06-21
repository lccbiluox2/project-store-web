package com.biluo.dao;

import java.util.ArrayList;
import java.util.List;

import com.biluo.domain.Admin;
import com.biluo.domain.Brand;
import com.biluo.domain.Category;
import com.biluo.domain.Product;
import com.biluo.domain.User;

public interface AdminDao {

	public Admin getAdmin(Admin admin);

	public ArrayList<Brand> getAllBrand(int offset, int pagesize);

	public Brand getBrandById(String id);

	public boolean updateBrandById(Brand brand);

	public boolean delBrandById(Integer integer);

	public boolean addBrand(Brand brand);

	public boolean updateBrandPhoto(Integer integer, String filePath);

	List<Category> finaCategoryTop();

	List<Category> finaCategoryById(Long id);

	Category getCategoryById(Long id);

	void categoryAdd(Category category);

	void categoryUpdate(Category category);

	void categoryDelete(Category category);

	List<Category> getCategoryByNames(String name);

	List<Category> finaCategoryAll();

	public int getAllBrandCount();

	public boolean addUserRegister(User user);

	public int getAllUserCount();

	public ArrayList<User> getAllUser(int myoffset, int mypagesize);

	public User getUser(User user);

	public boolean delUserById(Integer integer);

	public List<Product> finaProductKCList(int myoffset, int mypagesize,
			String string);

	public List<Product> finaProductList(int offset, int pagesize);

	public void productAdd(Product product);

	public Product getProductById(Long id);

	public void productUpdate(Product product);

	public void productDelete(Long id);

	public int getAllProductCount();

	public List<Brand> getAllBrand();

	public List<Category> getChildCategoryByFatherId(int integer);

	public User getUserById(int id);

	public boolean getUserById(User user);

	

	

}
