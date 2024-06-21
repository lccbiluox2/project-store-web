package com.biluo.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="goodscart")
public class GoodsCart {
	
	//���ﳵID
	@Id
	@GeneratedValue
	private Integer g_id;

	//��ƷID
	@Column
	private Integer p_id;
	
	//�û�ID(������)
	@Column
	private Integer u_id;

	//��Ʒ����
	@Column
	private Integer g_count;

	public Integer getG_id() {
		return g_id;
	}

	public void setG_id(Integer g_id) {
		this.g_id = g_id;
	}

	public Integer getP_id() {
		return p_id;
	}

	public void setP_id(Integer p_id) {
		this.p_id = p_id;
	}

	public Integer getU_id() {
		return u_id;
	}

	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}

	public Integer getG_count() {
		return g_count;
	}

	public void setG_count(Integer g_count) {
		this.g_count = g_count;
	}
	
	
	

}
