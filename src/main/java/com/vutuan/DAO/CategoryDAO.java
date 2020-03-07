package com.vutuan.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vutuan.DAOImp.CategoryImp;
import com.vutuan.entity.Category;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class CategoryDAO implements CategoryImp{
	
	@Autowired
	SessionFactory sessionfactory;

	@Transactional
	public List<Category> DanhSachCategory() {
		Session session = sessionfactory.getCurrentSession();
		List<Category> dscategory = session.createQuery("from category").getResultList();
		return dscategory;
	}

	@Override
	@Transactional
	public boolean XoaCategory(long category_id) {
		Session session = sessionfactory.getCurrentSession();
		Category category = session.get(Category.class, category_id);
		
		session.createQuery("delete from product where category_id="+category_id).executeUpdate();
		session.createQuery("delete from category where category_id="+category_id).executeUpdate();
		
		return false;
	}

	@Override
	@Transactional
	public Category CategoryTheoID(long category_id) {
		Session session = sessionfactory.getCurrentSession();
		Category category = (Category) session.createQuery("from category where category_id="+category_id).getSingleResult();
		return category;
	}

	@Override
	@Transactional
	public boolean UpdateCategory(String category_name, long category_id) {
		Session session = sessionfactory.getCurrentSession();
		Category category = session.get(Category.class, category_id);
		
		session.createQuery("update from category set category_name='"+category_name+"' where category_id="+category_id).executeUpdate();
		return false;
	}

	@Override
	@Transactional
	public boolean ThemCategory(Category category) {
		Session session = sessionfactory.getCurrentSession();
		long category_id = (long) session.save(category);
		return false;
	}
	
	

}
