package com.biluo.service;

import java.util.List;

import com.biluo.domain.CartBean;
import com.biluo.domain.User;


public interface BeanControlService {

	User getUser(String username, String userPasswd);

	boolean addProductToCart(CartBean cartBean);

	List<CartBean> goAndShowUserCart(String u_id);

	boolean delCartById(Integer integer);

	

	

}
