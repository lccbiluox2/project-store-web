package com.biluo.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin")
public class Admin {
	
	//����ԱiD
	@Id
	@GeneratedValue
	private Integer a_id;
	
	//����Ա����
	@Column(length=32)
	private String a_name;
	
	//����
	@Column(length=32)
	private String a_passwd;
	
	
	//Ȩ��  ����ֵ
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
