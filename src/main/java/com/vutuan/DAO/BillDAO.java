package com.vutuan.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.vutuan.DAOImp.BillImp;
import com.vutuan.entity.Bill;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class BillDAO implements BillImp{
	
	@Autowired
	SessionFactory sessionfactory;

	@Override
	@Transactional
	public boolean ThemBill(Bill bill) {
		Session session = sessionfactory.getCurrentSession();
		long bill_id = (long) session.save(bill);
		return false;
	}

	@Override
	@Transactional
	public List<Bill> dsBill() {
		Session session = sessionfactory.getCurrentSession();
		List<Bill> dsBill = session.createQuery("from bill").getResultList();
		return dsBill;
	}

	@Override
	@Transactional
	public List<Bill> dsBilltheouser(long user_id) {
		Session session = sessionfactory.getCurrentSession();
		List<Bill> dsBilluser = session.createQuery("from bill where user_id="+user_id).getResultList();
		return dsBilluser;
	}



}
