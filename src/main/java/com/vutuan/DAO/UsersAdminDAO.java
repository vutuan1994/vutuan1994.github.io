package com.vutuan.DAO;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.vutuan.DAOImp.UsersAdminImp;
import com.vutuan.entity.Useradmin;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class UsersAdminDAO implements UsersAdminImp{
	
	@Autowired
	SessionFactory sessionfactory;

	@Override
	@Transactional
	public boolean DangNhapAdmin(String user_ad_email, String user_ad_pass) {
		
		Session session = sessionfactory.getCurrentSession();
		
		try {
		Useradmin admin = (Useradmin) session.createQuery("from useradmin where user_ad_email='"+user_ad_email+"' And user_ad_pass='"+user_ad_pass+"'").getSingleResult();
		
		if(admin != null) {
			
			return true;
		}else {
			
			return true;
		}
		}catch (Exception e) {
			return false;
		}
	}
	
	

}
