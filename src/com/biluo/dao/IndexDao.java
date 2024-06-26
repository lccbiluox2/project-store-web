package com.biluo.dao;

import java.util.List;

import com.biluo.domain.Brand;
import com.biluo.domain.Category;
import com.biluo.domain.Product;

public interface IndexDao {

	List<Category> finaCategroyTop();

	List<Category> finaCategoryById(Long long1);


	

	List<Product> finaProductByCondition(String sql);

	int getProductCount();

	Product getProductById(int n);

	List<Product> finaProductById(Integer c_id);

	List<Product> finaProductBySearch(String sql);

	List<Brand> getAllBrand();

	Brand getBrandById(int brandId);

	List<Product> getProductByBrandId(int id, int currentPage, int pageSize);

	Category getCategoryById(Integer c_id);

	List<Product> finaProductByCategory(String sql, int currentPage,
			int pageSize);

	List<Product> finaProductList(int currentPage, int pageSize);

	List<Product> finaProductBySearch(String sql, int currentPage, int pageSize);

	List<Product> getProductByCategoryId(int currentPage, int pageSize,
			Integer id);

	List<Product> getProductByBrandIdCount(int id);

}
