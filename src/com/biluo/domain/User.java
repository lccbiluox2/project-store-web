package com.biluo.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	
	//用户ID	
	@Id
	@GeneratedValue
	private Integer u_id;				

	//用户name	 用户名要唯一吗、？
	@Column
	private String u_name;
	
	//用户密码
	@Column
	private String u_passwd;
	
	//手机号	
	@Column
	private String u_phone;
	
	//邮箱	
	@Column
	private String u_email;
	
	//送货地址
	@Column
	private String u_address;
	
	//订单id
	@Column
	private Integer o_id;

	public Integer getU_id() {
		return u_id;
	}

	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getU_passwd() {
		return u_passwd;
	}

	public void setU_passwd(String u_passwd) {
		this.u_passwd = u_passwd;
	}

	public String getU_phone() {
		return u_phone;
	}

	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}

	public String getU_email() {
		return u_email;
	}

	public void setU_email(String u_email) {
		this.u_email = u_email;
	}

	public String getU_address() {
		return u_address;
	}

	public void setU_address(String u_address) {
		this.u_address = u_address;
	}

	public Integer getO_id() {
		return o_id;
	}

	public void setO_id(Integer o_id) {
		this.o_id = o_id;
	}
	
}
