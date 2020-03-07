package com.vutuan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vutuan.DAO.BillDAO;
import com.vutuan.DAOImp.BillImp;
import com.vutuan.entity.Bill;

@Service
public class BillService implements BillImp{

	@Autowired
	BillDAO billdao;
	
	@Override
	public boolean ThemBill(Bill bill) {
		// TODO Auto-generated method stub
		return billdao.ThemBill(bill);
	}

	@Override
	public List<Bill> dsBill() {
		// TODO Auto-generated method stub
		return billdao.dsBill();
	}

	@Override
	public List<Bill> dsBilltheouser(long user_id) {
		// TODO Auto-generated method stub
		return billdao.dsBilltheouser(user_id);
	}



}
