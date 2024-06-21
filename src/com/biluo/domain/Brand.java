package com.biluo.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="brand")
public class Brand {
	
	//品牌ID
	@Id
	@GeneratedValue
	private Integer b_id;
	
	//品牌名称
	@Column
	private String b_name;
	
	//品牌图片
	@Column
	private String b_img_path;

	public Integer getB_id() {
		return b_id;
	}

	public void setB_id(Integer b_id) {
		this.b_id = b_id;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public String getB_img_path() {
		return b_img_path;
	}

	public void setB_img_path(String b_img_path) {
		this.b_img_path = b_img_path;
	}
	
	
	
	
}
