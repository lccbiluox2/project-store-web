package com.biluo.service;

import java.util.List;

import com.biluo.common.TreeShow;
import com.biluo.domain.Category;
import com.biluo.domain.Product;

public interface IndexService {

	List<TreeShow> finaCategoryTreeShow(List<Category> top, TreeShow treeShow);

	List<Category> finaCategroyTop();

	List<Product> finaProductByCondition(int i);

	List<Product> finaProductByLike();

	List<TreeShow> finaProductByFL(List<Category> top , TreeShow tree , int i);

	List<Product> finaProductBySearch(String str);

}
