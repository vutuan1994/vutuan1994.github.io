package com.vutuan.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "contact")
public class Contact {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long contact_id;
	String contact_name;
	String contact_web;
	String contact_email;
	String contact_title;
	String contact_message;
	String 	contact_date;
	public long getContact_id() {
		return contact_id;
	}
	public void setContact_id(long contact_id) {
		this.contact_id = contact_id;
	}
	public String getContact_name() {
		return contact_name;
	}
	public void setContact_name(String contact_name) {
		this.contact_name = contact_name;
	}
	public String getContact_web() {
		return contact_web;
	}
	public void setContact_web(String contact_web) {
		this.contact_web = contact_web;
	}
	public String getContact_email() {
		return contact_email;
	}
	public void setContact_email(String contact_email) {
		this.contact_email = contact_email;
	}
	public String getContact_title() {
		return contact_title;
	}
	public void setContact_title(String contact_title) {
		this.contact_title = contact_title;
	}
	public String getContact_message() {
		return contact_message;
	}
	public void setContact_message(String contact_message) {
		this.contact_message = contact_message;
	}
	public String getContact_date() {
		return contact_date;
	}
	public void setContact_date(String contact_date) {
		this.contact_date = contact_date;
	}
	
	
}
