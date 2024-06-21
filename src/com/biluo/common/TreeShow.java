package com.biluo.common;

import java.util.List;

import com.biluo.domain.Category;


public class TreeShow {
	
	private Category category;
	private TreeShow parent;
	private List<TreeShow> childrens;
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
