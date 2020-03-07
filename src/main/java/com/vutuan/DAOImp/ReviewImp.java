package com.vutuan.DAOImp;

import java.util.List;

import com.vutuan.entity.Review;

public interface ReviewImp {
	
	List<Review> dsReview(int product_id);
	boolean ThemReview(Review review);
	Review ChiTietReview(long product_id, int top);
	
}
