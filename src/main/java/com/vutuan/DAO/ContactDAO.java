package com.vutuan.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.vutuan.DAOImp.ContactImp;
import com.vutuan.entity.Contact;
@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class ContactDAO implements ContactImp{
	
	@Autowired
	SessionFactory sessionfactory;

	@Override
	@Transactional
	public List<Contact> dsContact() {
		Session session = sessionfactory.getCurrentSession();
		List<Contact> dsContact = session.createQuery("from contact").getResultList();
		return dsContact;
	}

}
