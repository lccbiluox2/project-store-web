package com.biluo.service;

import java.util.List;

import com.biluo.domain.CartBean;
import com.biluo.domain.MyOrder;
import com.biluo.domain.PageBean;
import com.biluo.domain.User;


public interface OrderService {

	boolean addOrder(MyOrder order);

	PageBean goAndShowUserOrder(String u_id, int currentPage, int pageSize);

	boolean delCartByCart_id(int cart_id);

	PageBean goAndShowAllUserOrder(int currentPage, int mypagesize);

	boolean updateOrderState(String o_id);

	PageBean goAndShowAllUserOrderState1(int currentPage, int mypagesize);

	void printAllOrderToTextState1(String path);

	boolean updateAllOrderStateTo2();

	
	

	

}
