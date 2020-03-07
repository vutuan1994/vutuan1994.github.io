package com.vutuan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vutuan.DAO.ReviewDAO;
import com.vutuan.DAOImp.ReviewImp;
import com.vutuan.entity.Review;

@Service
public class ReviewService implements ReviewImp{

	@Autowired
	ReviewDAO reviewdao;
	
	public List<Review> dsReview(int product_id) {
		// TODO Auto-generated method stub
		return reviewdao.dsReview(product_id);
	}

	@Override
	public boolean ThemReview(Review review) {
		// TODO Auto-generated method stub
		return reviewdao.ThemReview(review);
	}

	@Override
	public Review ChiTietReview(long product_id, int top) {
		// TODO Auto-generated method stub
		return reviewdao.ChiTietReview(product_id, top);
	}

}
