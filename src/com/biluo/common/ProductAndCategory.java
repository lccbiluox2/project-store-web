package com.biluo.common;

import java.util.List;

import com.biluo.domain.Category;
import com.biluo.domain.Product;

public class ProductAndCategory {
	private List<Category> categorys;
	private List<Product> products;
	public List<Category> getCategorys() {
		return categorys;
	}
	public void setCategorys(List<Category> categorys) {
		this.categorys = categorys;
	}
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	
	

}
