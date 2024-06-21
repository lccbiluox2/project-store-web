package com.biluo.dao;

import java.util.List;

import com.biluo.domain.Category;
import com.biluo.domain.Product;

public interface IndexDao {

	List<Category> finaCategroyTop();

	List<Category> finaCategoryById(Long long1);


	

	List<Product> finaProductByCondition(String sql);

	int getProductCount();

	Product getProductById(int n);

	List<Product> finaProductById(Integer c_id);

}
