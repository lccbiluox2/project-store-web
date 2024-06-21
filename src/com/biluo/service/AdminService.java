package com.biluo.service;

import java.util.ArrayList;
import java.util.List;

import com.biluo.domain.Admin;
import com.biluo.domain.Brand;
import com.biluo.domain.Category;
import com.biluo.domain.Product;


public interface AdminService {

	public Admin getAdmin(Admin admin);

	public ArrayList<Brand> getAllBrand();

	public Brand getBrandById(String id);

	public boolean updateBrandById(Brand brand);

	public boolean delBrandById(String id);

	public boolean addBrand(Brand brand);

	public boolean updateBrandPhoto(Integer integer, String filePath);



	
	List<Category> finaCategoryTop();

	List<Category> finaCategoryById(Long id);

	Category getCategoryById(Long id);

	void categoryAdd(Category category);

	void categoryUpdate(Category category);

	void categoryDelete(Category category);

	

	List<Category> finaCategoryAll();

	List<Category> getCategoryByNames(String name);
	
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
