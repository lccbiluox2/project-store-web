package com.biluo.dao;

import java.util.ArrayList;
import java.util.List;

import com.biluo.domain.Admin;
import com.biluo.domain.Brand;
import com.biluo.domain.Category;
import com.biluo.domain.Product;

public interface AdminDao {

	public Admin getAdmin(Admin admin);

	public ArrayList<Brand> getAllBrand();

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

}
