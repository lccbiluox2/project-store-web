package com.biluo.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.biluo.dao.BeanControlDao;
import com.biluo.domain.CartBean;
import com.biluo.domain.User;
import com.biluo.service.BeanControlService;

@Service
@Transactional
public class BeanControlServiceImpl implements BeanControlService{
		
	@Resource
	private BeanControlDao beanControlDao;

	public void setBeanControlDao(BeanControlDao beanControlDao) {
		this.beanControlDao = beanControlDao;
	}

	@Override
	public User getUser(String username, String userPasswd) {
		// TODO Auto-generated method stub
		
		return beanControlDao.getUser(username,userPasswd);
	}

	@Override
	public boolean addProductToCart(CartBean cartBean) {
		// TODO Auto-generated method stub
		return beanControlDao.addProductToCart(cartBean);
	}

	@Override
	public List<CartBean> goAndShowUserCart(String u_id) {
		// TODO Auto-generated method stub
		return beanControlDao.goAndShowUserCart(new Integer(u_id));
	}

	@Override
	public boolean delCartById(Integer integer) {
		// TODO Auto-generated method stub
		return beanControlDao.delCartById(integer);
	}

	
	
	

	
}
