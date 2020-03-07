package com.vutuan.entity;

import java.util.Set;
import com.vutuan.entity.Users;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Generated;

@Entity(name = "bill")
public class Bill {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="bill_id")
	long bill_id;
	
	String total;
	String payment;
	String address;
	String date;
	String name;
	String phone;
	long user_id;



	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="bill_id")
	Set<Bill_Detail> bill_details;
	
	
	
	public long getUser_id() {
		return user_id;
	}
	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}

	public Set<Bill_Detail> getBill_details() {
		return bill_details;
	}
	public void setBill_details(Set<Bill_Detail> bill_details) {
		this.bill_details = bill_details;
	}



	public long getBill_id() {
		return bill_id;
	}
	public void setBill_id(long bill_id) {
		this.bill_id = bill_id;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
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
	
	

}
