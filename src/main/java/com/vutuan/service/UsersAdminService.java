package com.vutuan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vutuan.DAO.UsersAdminDAO;
import com.vutuan.DAOImp.UsersAdminImp;

@Service
public class UsersAdminService implements UsersAdminImp{
	
	@Autowired
	UsersAdminDAO usersadmindao;

	@Override
	public boolean DangNhapAdmin(String user_ad_email, String user_ad_pass) {
		boolean kiemtraAdmin = usersadmindao.DangNhapAdmin(user_ad_email, user_ad_pass);
		return kiemtraAdmin;
	}

}
