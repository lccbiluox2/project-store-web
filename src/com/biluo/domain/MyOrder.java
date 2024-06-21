package com.biluo.domain;

import java.util.Date;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="myorder")
public class MyOrder {
	
	//订单ID
	@Id
	@GeneratedValue
	private Integer o_id;

	
	//订单号
	@Column
	private String o_number;
	
	//商品编号
	@Column
	private String p_number;
	
	//商品ID
	@Column
	private Integer p_id;
	
	//商品图片
	@Column
	private String p_img_path;
	
	//品牌图片
	@Column
	private String b_img_path;
	
	
	//商品VIP price
	@Column
	private String p_vip_price;
		
	
	//商品数量
	@Column
	private Integer o_count;
	
	//总费用
	@Column
	private Integer o_all_money;
	
	//谁下的单  u_id
	@Column
	private String u_id;
	
	//谁下的单  u_name
	@Column
	private String u_name;
		
	
	//支付方式
	@Column
	private Integer o_method = 1;
	
	//运费
	@Column
	private Integer o_path_money = 1;
	
	//状态（已结算，未结算）
	private Integer o_state = 1;

	//下单时间
	@Column
	private String o_time ;

	//购物车ID 用来删除已经加入订单的购物车
	@Column
	private int cart_id ;
	
	
	@Override
	public String toString() {
		return "[订单ID:" + o_id + "\t:订单编号"  + p_number + "\t: 商品ID:" + p_id +"\t会员价:"
				+ p_vip_price + "\t商品数量:" + o_count + "\t商品总费用:"
				+ o_all_money + "\t订单人ID:" + u_id + "\t订单人姓名:" + u_name
				+ "\t订单时间:"  + o_time +  "]";
	}
	
	
	
	
	public MyOrder() {
		super();
	}







	public Integer getO_id() {
		return o_id;
	}







	public void setO_id(Integer o_id) {
		this.o_id = o_id;
	}







	public String getO_number() {
		return o_number;
	}







	public void setO_number(String o_number) {
		this.o_number = o_number;
	}







	public String getP_number() {
		return p_number;
	}







	public void setP_number(String p_number) {
		this.p_number = p_number;
	}







	public Integer getP_id() {
		return p_id;
	}







	public void setP_id(Integer p_id) {
		this.p_id = p_id;
	}







	public String getP_img_path() {
		return p_img_path;
	}







	public void setP_img_path(String p_img_path) {
		this.p_img_path = p_img_path;
	}







	public String getB_img_path() {
		return b_img_path;
	}







	public void setB_img_path(String b_img_path) {
		this.b_img_path = b_img_path;
	}







	public String getP_vip_price() {
		return p_vip_price;
	}







	public void setP_vip_price(String p_vip_price) {
		this.p_vip_price = p_vip_price;
	}







	public Integer getO_count() {
		return o_count;
	}







	public void setO_count(Integer o_count) {
		this.o_count = o_count;
	}







	public Integer getO_all_money() {
		return o_all_money;
	}







	public void setO_all_money(Integer o_all_money) {
		this.o_all_money = o_all_money;
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







	public Integer getO_method() {
		return o_method;
	}







	public void setO_method(Integer o_method) {
		this.o_method = o_method;
	}







	public Integer getO_path_money() {
		return o_path_money;
	}







	public void setO_path_money(Integer o_path_money) {
		this.o_path_money = o_path_money;
	}







	public Integer getO_state() {
		return o_state;
	}







	public void setO_state(Integer o_state) {
		this.o_state = o_state;
	}







	public String getO_time() {
		return o_time;
	}







	public void setO_time(String o_time) {
		this.o_time = o_time;
	}







	public int getCart_id() {
		return cart_id;
	}







	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}







	

	
	
	
	

}
