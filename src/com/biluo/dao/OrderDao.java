package com.biluo.dao;

import java.util.List;

import com.biluo.domain.MyOrder;
import com.biluo.domain.PageBean;


public interface OrderDao {

	boolean addOrder(MyOrder order);

	List<MyOrder> goAndShowUserOrder(String u_id, int currentPage, int pageSize);

	int getAllUserOrderCount();

	boolean delCartByCart_id(int cart_id);

	int goAndShowAllUserOrderCount();

	List goAndShowUserOrder(int currentPage, int pageSize);

	boolean updateOrderState(String o_id);

	List<MyOrder> goAndShowAllUserOrderCountState1();

	List<MyOrder> printAllOrderToTextState1();

	boolean updateAllOrderStateTo2();

	

	

	

}
