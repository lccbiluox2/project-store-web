package com.biluo.service;

import java.util.List;


import com.biluo.common.TreeShow;
import com.biluo.common.ProductAndCategory;
import com.biluo.domain.Brand;
import com.biluo.domain.Category;
import com.biluo.domain.PageBean;
import com.biluo.domain.Product;

public interface IndexService {

	List<TreeShow> finaCategoryTreeShow(List<Category> top, TreeShow treeShow);

	List<Category> finaCategroyTop();

	List<Product> finaProductByCondition(int i);

	List<Product> finaProductByLike();

	List<TreeShow> finaProductByFL(List<Category> top , TreeShow tree , int i);

	PageBean finaProductBySearch(String str, int currentPage, int pageSize);

	List<Brand> getAllBrand();

	List<Brand> getRandomBrandList(int randomCount);

	PageBean getProductByBrandId(int id,int currentPage, int mypagesize);

	Product getProductById(Integer integer);

	Brand getBrandById(Integer c_id);
	

	ProductAndCategory finaCategoryByClick(Long layerNum, Integer id,
			int intValue, int i);

	int getProductCount();

	PageBean finaProductList(int intValue, int i);

	PageBean getProductByCategoryId(int i, int j, Integer id);

	

}
