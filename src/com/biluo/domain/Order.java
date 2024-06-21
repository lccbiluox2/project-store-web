package com.biluo.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="order")
public class Order {
	
	//����ID
	@Id
	@GeneratedValue
	private Integer o_id;

	
	//������
	@Column
	private String o_number;
	

	//��ƷID
	@Column
	private Integer p_id;

	//��Ʒ����
	@Column
	private Integer o_count;
	
	//�ܷ���
	@Column
	private Integer o_all_money;
	
	//֧����ʽ
	@Column
	private Integer o_method;
	
	//�˷�
	@Column
	private Integer o_path_money;
	
	//״̬���ѽ��㣬δ���㣩
	private Integer o_state;

	//�µ�ʱ��
	@Column
	private Date o_time;

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

	public Integer getP_id() {
		return p_id;
	}

	public void setP_id(Integer p_id) {
		this.p_id = p_id;
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

	public Date getO_time() {
		return o_time;
	}

	public void setO_time(Date o_time) {
		this.o_time = o_time;
	}
	
	

}
