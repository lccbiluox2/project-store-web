package com.biluo.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cartbean")
public class CartBean {
	
	@Id
	@GeneratedValue
	private Integer cart_id;
	@Column
	private String  p_img_path;
	@Column
	private String  p_id;
	@Column
	private String  p_count;
	@Column
	private String  b_img_path;
	@Column
	private String  u_id;
	@Column
	private String  u_name;
	@Column
	private String p_number;
	@Column
	private String p_vip_price;
	//新加字段  判断是否购物车已经处理   0 刚加入 未处理   1 添加到订单   2 删除  默认为0
	@Column
	private int  state = 0; 
	
	
	

	public CartBean(String p_img_path, String p_id, String p_count,
			String b_img_path, String u_id, String u_name, String p_number,
			String p_vip_price) {
		super();
		this.p_img_path = p_img_path;
		this.p_id = p_id;
		this.p_count = p_count;
		this.b_img_path = b_img_path;
		this.u_id = u_id;
		this.u_name = u_name;
		this.p_number = p_number;
		this.p_vip_price = p_vip_price;
	}



	public String getP_vip_price() {
		return p_vip_price;
	}



	public void setP_vip_price(String p_vip_price) {
		this.p_vip_price = p_vip_price;
	}



	public String getP_number() {
		return p_number;
	}



	public void setP_number(String p_number) {
		this.p_number = p_number;
	}



	public int getState() {
		return state;
	}



	public void setState(int state) {
		this.state = state;
	}



	public CartBean() {
		super();
	}



	


	public Integer getCart_id() {
		return cart_id;
	}



	public void setCart_id(Integer cart_id) {
		this.cart_id = cart_id;
	}



	public String getP_img_path() {
		return p_img_path;
	}



	public void setP_img_path(String p_img_path) {
		this.p_img_path = p_img_path;
	}



	public String getP_id() {
		return p_id;
	}



	public void setP_id(String p_id) {
		this.p_id = p_id;
	}



	public String getP_count() {
		return p_count;
	}



	public void setP_count(String p_count) {
		this.p_count = p_count;
	}



	public String getB_img_path() {
		return b_img_path;
	}



	public void setB_img_path(String b_img_path) {
		this.b_img_path = b_img_path;
	}



	public String getU_id() {
		return u_id;
	}



	public void setU_id(String u_id) {
		this.u_id = u_id;
	}



	public String getU_name() {
		return u_name;
	}



	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	

}
