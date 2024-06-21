package com.biluo.dao;

import java.util.List;

import com.biluo.domain.MyOrder;
import com.biluo.domain.User;

public interface ExcelDao {

	List<User> getAllUser();

	List<MyOrder> getAllMyOrder();

	List<MyOrder> getAllOrder();

}
