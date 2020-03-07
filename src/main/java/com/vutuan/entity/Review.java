package com.vutuan.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name ="review")
public class Review {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long review_id;
	String review_name;
	String review_email;
	int review_star;
	String 	review_message;
	
	@OneToOne()
	@JoinColumn(name="product_id")
	Product product;
	
	
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public long getReview_id() {
		return review_id;
	}
	public void setReview_id(long review_id) {
		this.review_id = review_id;
	}
	public String getReview_name() {
		return review_name;
	}
	public void setReview_name(String review_name) {
		this.review_name = review_name;
	}
	public String getReview_email() {
		return review_email;
	}
	public void setReview_email(String review_email) {
		this.review_email = review_email;
	}
	public int getReview_star() {
		return review_star;
	}
	public void setReview_star(int review_star) {
		this.review_star = review_star;
	}
	public String getReview_message() {
		return review_message;
	}
	public void setReview_message(String review_message) {
		this.review_message = review_message;
	}
	
	
}
