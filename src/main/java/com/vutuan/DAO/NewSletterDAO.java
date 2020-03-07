package com.vutuan.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.vutuan.DAOImp.NewSletterImp;
import com.vutuan.entity.Newsletter;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class NewSletterDAO implements NewSletterImp{
	
	@Autowired
	SessionFactory sessionfactory;

	@Override
	@Transactional
	public List<Newsletter> dsnewsletter() {
		Session session = sessionfactory.getCurrentSession();
		List<Newsletter> dsnewsletter = session.createQuery("from newsletter").getResultList();
		return dsnewsletter;
	}

}
