package com.vutuan.DAO;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.vutuan.DAOImp.UsersImp;

import com.vutuan.entity.Users;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class UsersDAO implements UsersImp{
	
	@Autowired
	SessionFactory sessionfactory;

	
	
	
	
	@Transactional
	public Users DangNhap(String user_name, String user_pass) {
		Session session = sessionfactory.getCurrentSession();
		

		Users user = (Users) session.createQuery("from users s where s.user_name='"+user_name+"' AND s.user_pass='"+user_pass+"'").getSingleResult();

		return user;

		
	}

	@Override
	@Transactional
	public boolean DangKy(Users users) {
		Session session = sessionfactory.getCurrentSession();
		long user_id = (long) session.save(users);

		if(user_id > 0) {
			return true;
		}		else {
			return false;
		}
		
	}

	@Override
	@Transactional
	public List<Users> dsusers() {
		Session session = sessionfactory.getCurrentSession();
		List<Users> dsusers = session.createQuery("from users").getResultList();
		return dsusers;
	}

	@Override
	@Transactional
	public boolean KiemTraTrungTenDangNhap(String user_name) {
		Session session = sessionfactory.getCurrentSession();
		Users users = (Users) session.createQuery("from users where user_name ='"+user_name+"'").getSingleResult();
		
		if(users == null) {
			return true;
		}else {
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean CapNhatThongTinUsers(Users user) {
		Session session = sessionfactory.getCurrentSession();
		session.update(user);
		return false;
	}

	@Override
	@Transactional
	public boolean KiemTraDangNhap(String user_name, String user_pass) {
	Session session = sessionfactory.getCurrentSession();
		
		try {
			Users user = (Users) session.createQuery("from users s where s.user_name='"+user_name+"' AND s.user_pass='"+user_pass+"'").getSingleResult();
			if(user!=null) {
				return true;
			}else {
				return false;
			}
		} catch (Exception e) {
			return false;
		}
		
	}





}
