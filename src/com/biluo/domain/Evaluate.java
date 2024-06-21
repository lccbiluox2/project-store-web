package com.biluo.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="evaluate")
public class Evaluate {
	
	//评价ID 
	@Id
	@GeneratedValue
	private Integer e_id;
	
	
	//商品ID
	@Column
	private Integer p_id;
	
	//评价内容
	@Column
	private String e_content;
	
	//用户ID
	@Column
	private Integer u_id;
	
	//好评 true 好评  false 差评
	@Column
	private boolean e_is_good;

	public Integer getE_id() {
		return e_id;
	}

	public void setE_id(Integer e_id) {
		this.e_id = e_id;
	}

	public Integer getP_id() {
		return p_id;
	}

	public void setP_id(Integer p_id) {
		this.p_id = p_id;
	}

	public String getE_content() {
		return e_content;
	}

	public void setE_content(String e_content) {
		this.e_content = e_content;
	}

	public Integer getU_id() {
		return u_id;
	}

	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}

	public boolean isE_is_good() {
		return e_is_good;
	}

	public void setE_is_good(boolean e_is_good) {
		this.e_is_good = e_is_good;
	}
	
	
	
	
}
