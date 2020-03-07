package com.vutuan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vutuan.DAO.NewSletterDAO;
import com.vutuan.DAOImp.NewSletterImp;
import com.vutuan.entity.Newsletter;

@Service
public class NewSletterService implements NewSletterImp{
	
	@Autowired
	NewSletterDAO newsletterdao;

	@Override
	public List<Newsletter> dsnewsletter() {
		// TODO Auto-generated method stub
		return newsletterdao.dsnewsletter();
	}

}
