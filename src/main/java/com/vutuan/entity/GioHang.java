package com.vutuan.entity;

public class GioHang {
	Long product_id;
	int soluong;
	String product_name;
	String product_image_forward;
	long product_price;
	
	long user_id;
	
	

	public long getUser_id() {
		return user_id;
	}
	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}
	public Long getProduct_id() {
		return product_id;
	}
	public void setProduct_id(Long product_id) {
		this.product_id = product_id;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_image_forward() {
		return product_image_forward;
	}
	public void setProduct_image_forward(String product_image_forward) {
		this.product_image_forward = product_image_forward;
	}
	public long getProduct_price() {
		return product_price;
	}
	public void setProduct_price(long product_price) {
		this.product_price = product_price;
	}


	
	
}
