package com.vutuan.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.vutuan.DAOImp.ReviewImp;
import com.vutuan.entity.Review;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class ReviewDAO implements ReviewImp{
	
	@Autowired
	SessionFactory sessionfactory;

	
	@Transactional
	public List<Review> dsReview(int product_id) {
		
		Session session = sessionfactory.getCurrentSession();
		List<Review> dsReview = session.createQuery("from review r where r.product.product_id ="+product_id).getResultList();
		
		return dsReview;
	}


	@Override
	@Transactional
	public boolean ThemReview(Review review) {
		Session session = sessionfactory.getCurrentSession();
		long review_id = (long) session.save(review);
		return false;
	}


	@Override
	@Transactional
	public Review ChiTietReview(long product_id, int top) {
		Session session = sessionfactory.getCurrentSession();
		Review chitietReview = (Review) session.createQuery("from review where product_id="+product_id).setFirstResult(0).setMaxResults(top).getSingleResult();
		return chitietReview;
	}

}
