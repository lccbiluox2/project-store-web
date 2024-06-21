package com.biluo.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin")
public class Admin {
	
	//管理员iD
	@Id
	@GeneratedValue
	private Integer a_id;
	
	//管理员姓名
	@Column(length=32)
	private String a_name;
	
	//密码
	@Column(length=32)
	private String a_passwd;
	
	
	//权限  保留值
	@Column(length=32)
	private Integer a_permissions;


	public Integer getA_id() {
		return a_id;
	}


	public void setA_id(Integer a_id) {
		this.a_id = a_id;
	}


	public String getA_name() {
		return a_name;
	}


	public void setA_name(String a_name) {
		this.a_name = a_name;
	}


	public String getA_passwd() {
		return a_passwd;
	}


	public void setA_passwd(String a_passwd) {
		this.a_passwd = a_passwd;
	}


	public Integer getA_permissions() {
		return a_permissions;
	}


	public void setA_permissions(Integer a_permissions) {
		this.a_permissions = a_permissions;
	}
	
	
	
	
}
