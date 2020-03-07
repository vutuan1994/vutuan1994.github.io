package com.vutuan.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity(name = "useradmin")
public class Useradmin {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long user_ad_id;
	String user_ad_email;
	String user_ad_pass;
	int user_ad_role;
	public long getUser_ad_id() {
		return user_ad_id;
	}
	public void setUser_ad_id(long user_ad_id) {
		this.user_ad_id = user_ad_id;
	}
	public String getUser_ad_email() {
		return user_ad_email;
	}
	public void setUser_ad_email(String user_ad_email) {
		this.user_ad_email = user_ad_email;
	}
	public String getUser_ad_pass() {
		return user_ad_pass;
	}
	public void setUser_ad_pass(String user_ad_pass) {
		this.user_ad_pass = user_ad_pass;
	}
	public int getUser_ad_role() {
		return user_ad_role;
	}
	public void setUser_ad_role(int user_ad_role) {
		this.user_ad_role = user_ad_role;
	}
	
	

}
