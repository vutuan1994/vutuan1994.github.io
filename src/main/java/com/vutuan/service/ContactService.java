package com.vutuan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vutuan.DAO.ContactDAO;
import com.vutuan.DAOImp.ContactImp;
import com.vutuan.entity.Contact;

@Service
public class ContactService implements ContactImp{
	
	@Autowired
	ContactDAO contactdao;

	@Override
	public List<Contact> dsContact() {
		// TODO Auto-generated method stub
		return contactdao.dsContact();
	}

}
