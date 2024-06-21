package com.biluo.dao;

import java.util.ArrayList;
import java.util.List;

import com.biluo.domain.Admin;
import com.biluo.domain.Brand;
import com.biluo.domain.CartBean;
import com.biluo.domain.Category;
import com.biluo.domain.Product;
import com.biluo.domain.User;

public interface BeanControlDao {

	User getUser(String username, String userPasswd);

	boolean addProductToCart(CartBean cartBean);

	List<CartBean> goAndShowUserCart(Integer integer);

	boolean delCartById(Integer integer);

	

	

}
