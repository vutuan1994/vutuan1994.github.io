package com.vutuan.DAOImp;

import java.util.List;

import com.vutuan.entity.Bill;

public interface BillImp {

	boolean ThemBill(Bill bill);
	List<Bill> dsBill();
	List<Bill> dsBilltheouser(long user_id);

}
