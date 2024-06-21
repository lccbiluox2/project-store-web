package com.biluo.common;

import java.util.List;

import com.biluo.domain.Category;
import com.biluo.domain.Product;


public class TreeShow {
	
	private Category category;
	private TreeShow parent;
	private List<TreeShow> childrens;
	private List<Product> childProducts;
	private TreeShow children;
	
	
	
	public TreeShow getChildren() {
		return children;
	}
	public void setChildren(TreeShow children) {
		this.children = children;
	}
	public List<Product> getChildProducts() {
		return childProducts;
	}
	public void setChildProducts(List<Product> childProducts) {
		this.childProducts = childProducts;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public TreeShow getParent() {
		return parent;
	}
	public void setParent(TreeShow parent) {
		this.parent = parent;
	}
	public List<TreeShow> getChildrens() {
		return childrens;
	}
	public void setChildrens(List<TreeShow> childrens) {
		this.childrens = childrens;
	}
	

	
	
	

}
