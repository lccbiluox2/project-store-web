package com.biluo.domain;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



@Entity
@Table(name="product")
public class Product {
	
	//商品ID
	@Id
	@GeneratedValue
	private Integer p_id;
	
	
	//类别ID  这里不应该写id 应该写类别这个类，并且不使用使用延迟加载
	//是多对一的关系，一个商品只能对应一种类别
	@Column
	private Integer c_id;
	
	//商品名称
	@Column
	private String p_name;
	
	//属性
	@Column
	private String p_attr;
	
	//会员价
	@Column
	private Integer p_vip_price;
	
	//市场价
	@Column
	private Integer p_shop_price;
	
	// 状态   1，新品 ,2 热卖 3特价商品 4精品
	@Column
	private Integer p_state;
	
	//点击量
	@Column
	private Integer p_click_count;
	
	//品牌ID  这里不应该写id 应该写品牌这个类，并且使用延迟加载
	//是多对一的关系，一个商品只能对应一种品牌
	@Column
	private Integer p_b_id;
	
	//图片路径
	@Column
	private String p_img_path;
	
	//商品详情
	@Column
	private String p_description; //这里查询的是需要string 的不是Text
	
	
	
	
	//库存量
	@Column
	private Integer p_goods_surplus;
	
	
	//库存总量累加(月清空)搜索关键字
	@Column
	private Integer p_month_count;
	
	
	//搜索关键字
	@Column
	private String p_search_key;

	
	//商品编号
	private String p_number;
	

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


	public Integer getC_id() {
		return c_id;
	}


	public void setC_id(Integer c_id) {
		this.c_id = c_id;
	}


	public String getP_name() {
		return p_name;
	}


	public void setP_name(String p_name) {
		this.p_name = p_name;
	}


	public String getP_attr() {
		return p_attr;
	}


	public void setP_attr(String p_attr) {
		this.p_attr = p_attr;
	}


	public Integer getP_vip_price() {
		return p_vip_price;
	}


	public void setP_vip_price(Integer p_vip_price) {
		this.p_vip_price = p_vip_price;
	}


	public Integer getP_shop_price() {
		return p_shop_price;
	}


	public void setP_shop_price(Integer p_shop_price) {
		this.p_shop_price = p_shop_price;
	}


	public Integer getP_state() {
		return p_state;
	}


	public void setP_state(Integer p_state) {
		this.p_state = p_state;
	}


	public Integer getP_click_count() {
		return p_click_count;
	}


	public void setP_click_count(Integer p_click_count) {
		this.p_click_count = p_click_count;
	}


	public Integer getP_b_id() {
		return p_b_id;
	}


	public void setP_b_id(Integer p_b_id) {
		this.p_b_id = p_b_id;
	}


	public String getP_img_path() {
		return p_img_path;
	}


	public void setP_img_path(String p_img_path) {
		this.p_img_path = p_img_path;
	}


	public String getP_description() {
		return p_description;
	}


	public void setP_description(String p_description) {
		this.p_description = p_description;
	}


	public Integer getP_goods_surplus() {
		return p_goods_surplus;
	}


	public void setP_goods_surplus(Integer p_goods_surplus) {
		this.p_goods_surplus = p_goods_surplus;
	}


	public Integer getP_month_count() {
		return p_month_count;
	}


	public void setP_month_count(Integer p_month_count) {
		this.p_month_count = p_month_count;
	}


	public String getP_search_key() {
		return p_search_key;
	}


	public void setP_search_key(String p_search_key) {
		this.p_search_key = p_search_key;
	}


	public void setP_c_id(int parseInt) {
		// TODO Auto-generated method stub
		
	}


	
	
	
	
}
