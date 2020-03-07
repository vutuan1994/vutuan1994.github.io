package com.vutuan.entity;

public class Item {
	
	private Product product;
	private long quantity;
	
	private int soluong;
	private long user_id;
	
	public Item() {
		
	}
	
	 public Item(Product product, int quantity) {
	        this.product = product;
	        this.quantity = quantity;
	 }
	   
	   
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public long getQuantity() {
		return quantity;
	}
	public void setQuantity(long quatity) {
		this.quantity = quantity;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public long getUser_id() {
		return user_id;
	}

	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}
	
	
	

}
