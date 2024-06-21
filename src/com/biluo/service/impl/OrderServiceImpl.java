package com.biluo.service.impl;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.biluo.dao.OrderDao;
import com.biluo.domain.MyOrder;
import com.biluo.domain.PageBean;
import com.biluo.service.OrderService;

@Service
@Transactional
public class OrderServiceImpl implements OrderService{
		
	@Resource
	private OrderDao orderDao;

	@Override
	public boolean addOrder(MyOrder order) {
		// TODO Auto-generated method stub
		return orderDao.addOrder(order);
	}

	@Override
	public PageBean goAndShowUserOrder(String u_id, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		int recordCount = orderDao.getAllUserOrderCount();
		int pageCount = recordCount % pageSize == 0 ? recordCount / pageSize : recordCount / pageSize +1;
		if(currentPage > pageCount ){
			currentPage = pageCount;
		}
		if(currentPage < 1){
			currentPage = 1;
		}
		return new PageBean(currentPage, pageSize, recordCount, orderDao.goAndShowUserOrder(u_id,  currentPage,  pageSize));
		
	}

	@Override
	public boolean delCartByCart_id(int cart_id) {
		// TODO Auto-generated method stub
		return orderDao.delCartByCart_id(cart_id);
	}

	@Override
	public PageBean goAndShowAllUserOrder(int currentPage, int pageSize) {
		int recordCount = orderDao.goAndShowAllUserOrderCount();
		int pageCount = recordCount % pageSize == 0 ? recordCount / pageSize : recordCount / pageSize +1;
		if(currentPage > pageCount ){
			currentPage = pageCount;
		}
		if(currentPage < 1){
			currentPage = 1;
		}
		return new PageBean(currentPage, pageSize, recordCount, orderDao.goAndShowUserOrder( currentPage,  pageSize));
		
	}

	@Override
	public boolean updateOrderState(String o_id) {
		// TODO Auto-generated method stub
		return orderDao.updateOrderState(o_id);
	}

	@Override
	public PageBean goAndShowAllUserOrderState1(int currentPage, int pageSize) {
		
		List<MyOrder> list = orderDao.goAndShowAllUserOrderCountState1();
		int recordCount  = list.size();
		int pageCount = recordCount % pageSize == 0 ? recordCount / pageSize : recordCount / pageSize +1;
		if(currentPage > pageCount ){
			currentPage = pageCount;
		}
		if(currentPage < 1){
			currentPage = 1;
		}
		return new PageBean(currentPage, pageSize, recordCount, list);
		
	}

	@Override
	public void printAllOrderToTextState1(String path) {
		List<MyOrder> listOrder = orderDao.printAllOrderToTextState1();
		System.out.println("path="+path);
		File file = new File(path+"/"+"orderState1.txt");
		FileWriter os = null;
		try {
			 os = new FileWriter(file);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		
		for (MyOrder myOrder : listOrder) {
			//System.out.println(myOrder.toString());
			String line = myOrder.toString();
			try {
				os.write(line+"\r\n");
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		try {
			os.flush();
			os.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	@Override
	public boolean updateAllOrderStateTo2() {
		// TODO Auto-generated method stub
		return orderDao.updateAllOrderStateTo2();
	}

	

	
}
