package com.vutuan.DAOImp;

import java.util.List;

import com.vutuan.entity.Users;

public interface UsersImp {
	Users DangNhap(String user_name, String user_pass);
	boolean KiemTraDangNhap(String user_name, String user_pass);
	boolean DangKy(Users users);
	List<Users> dsusers();
	boolean KiemTraTrungTenDangNhap(String user_name);
	boolean CapNhatThongTinUsers(Users user);
}
