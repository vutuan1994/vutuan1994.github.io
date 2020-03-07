package com.vutuan.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity(name = "product")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long product_id;
	String product_name;
	String product_image;
	String product_image_forward;
	String product_image_back;
	String product_price;
	String product_description;
	
	@OneToOne()
	@JoinColumn(name="category_id")
	Category category;
	
	@OneToOne()
	@JoinColumn(name="brand_id")
	Brand brand;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="product_id")
	Set<Bill_Detail> bill_details;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="product_id")
	Set<Review> reviews;
	
	
	
	public Set<Review> getReviews() {
		return reviews;
	}
	public void setReviews(Set<Review> reviews) {
		this.reviews = reviews;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Brand getBrand() {
		return brand;
	}
	public void setBrand(Brand brand) {
		this.brand = brand;
	}
	public Set<Bill_Detail> getBill_details() {
		return bill_details;
	}
	public void setBill_details(Set<Bill_Detail> bill_details) {
		this.bill_details = bill_details;
	}
	public long getProduct_id() {
		return product_id;
	}
	public void setProduct_id(long product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_image() {
		return product_image;
	}
	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}
	public String getProduct_image_forward() {
		return product_image_forward;
	}
	public void setProduct_image_forward(String product_image_forward) {
		this.product_image_forward = product_image_forward;
	}
	public String getProduct_image_back() {
		return product_image_back;
	}
	public void setProduct_image_back(String product_image_back) {
		this.product_image_back = product_image_back;
	}
	public String getProduct_price() {
		return product_price;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}
	public String getProduct_description() {
		return product_description;
	}
	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}
	
	
}
