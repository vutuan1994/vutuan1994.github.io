package com.vutuan.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "newsletter")
public class Newsletter {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long newsletter_id;
	String newsletter_email;
	String date;
	public long getNewsletter_id() {
		return newsletter_id;
	}
	public void setNewsletter_id(long newsletter_id) {
		this.newsletter_id = newsletter_id;
	}
	public String getNewsletter_email() {
		return newsletter_email;
	}
	public void setNewsletter_email(String newsletter_email) {
		this.newsletter_email = newsletter_email;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
}
