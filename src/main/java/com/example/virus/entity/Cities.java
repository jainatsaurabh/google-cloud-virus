package com.example.virus.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.ColumnDefault;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table
public class Cities {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String ccode;

	@Column
	private int active;

	@Column
	private int total;
	@Column
	private int decease;
	@Column

	private int recover;
	@Column
	private String date;
	
	
	@JsonManagedReference
	@ManyToOne
	@JoinColumn(name = "stateId", referencedColumnName = "id")
	private States states;

	public States getState() {
		return states;
	}

	public void setState(States state) {
		this.states = state;
	}

	public String getCcode() {
		return ccode;
	}

	public void setCcode(String ccode) {
		this.ccode = ccode;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getDecease() {
		return decease;
	}

	public void setDecease(int decease) {
		this.decease = decease;
	}

	public int getRecover() {
		return recover;
	}

	public void setRecover(int recover) {
		this.recover = recover;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Cities(String ccode, int active, int total, int decease, int recover, String date) {
		this.ccode = ccode;
		this.active = active;
		this.total = total;
		this.decease = decease;
		this.recover = recover;
		this.date = date;
	}

	public Cities() {
	}

}
