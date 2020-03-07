package com.vutuan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vutuan.DAO.UsersDAO;
import com.vutuan.DAOImp.UsersImp;
import com.vutuan.entity.Users;

@Service
public class UsersService implements UsersImp{
	
	@Autowired
	UsersDAO usersdao;

	public Users DangNhap(String user_name, String user_pass) {
//		boolean kiemtra = usersdao.DangNhap(user_name, user_pass);
		return usersdao.DangNhap(user_name, user_pass);
	}

	@Override
	public boolean DangKy(Users users) {
		boolean KiemTraThem = usersdao.DangKy(users);
		return KiemTraThem;
	}

	@Override
	public List<Users> dsusers() {
		// TODO Auto-generated method stub
		return usersdao.dsusers();
	}

	@Override
	public boolean KiemTraTrungTenDangNhap(String user_name) {
		// TODO Auto-generated method stub
		return usersdao.KiemTraTrungTenDangNhap(user_name);
	}

	@Override
	public boolean CapNhatThongTinUsers(Users user) {
		// TODO Auto-generated method stub
		return usersdao.CapNhatThongTinUsers(user);
	}

	@Override
	public boolean KiemTraDangNhap(String user_name, String user_pass) {
		// TODO Auto-generated method stub
		return usersdao.KiemTraDangNhap(user_name, user_pass);
	}





}
