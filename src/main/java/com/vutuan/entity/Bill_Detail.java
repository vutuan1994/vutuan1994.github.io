package com.vutuan.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name = "bill_detail")
public class Bill_Detail {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long bill_detail_id;
	Double price;
	int quantity;
	
	@OneToOne()
	@JoinColumn(name="bill_id")
	Bill bill;
	
	@OneToOne()
	@JoinColumn(name="product_id")
	Product product;
	
	
	
	public Bill getBill() {
		return bill;
	}
	public void setBill(Bill bill) {
		this.bill = bill;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public long getBill_detail_id() {
		return bill_detail_id;
	}
	public void setBill_detail_id(long bill_detail_id) {
		this.bill_detail_id = bill_detail_id;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}
