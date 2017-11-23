package com.qian.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name="t_msguser")
public class MsgUser {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@NotEmpty(message="��������Ϊ��")
	@Column
	private String name;
	
	@NotEmpty(message="�绰���벻��Ϊ��")
	@Size(min=11,max=11,message="�绰����λ������")
	@Column
	private String phone;
	
	@NotEmpty(message="����Ϊ��Ŷ")
	@Size(min=1,max=120,message="ֻ����${min}-${max}֮��")
	@Column
	private String msg;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	

}
