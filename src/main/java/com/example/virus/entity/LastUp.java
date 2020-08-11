package com.example.virus.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class LastUp {
	@Id
	@Column
	private int id;
	@Column
	private String dt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDt() {
		return dt;
	}
	public void setDt(String dt) {
		this.dt = dt;
	}
	public LastUp() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
