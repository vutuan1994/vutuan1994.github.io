package com.vutuan.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vutuan.DAOImp.Brandimp;
import com.vutuan.entity.Brand;
import com.vutuan.entity.Product;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class BrandDAO implements Brandimp{
	
	@Autowired
	SessionFactory sessionfactory;

	@Transactional
	public List<Brand> DanhSachBrand() {
		Session session = sessionfactory.getCurrentSession();
		List<Brand> dsbrand = session.createQuery("FROM brand").getResultList();
		return dsbrand;
	}

	@Override
	@Transactional
	public Brand BrandTheoid(long brand_id) {
		Session session = sessionfactory.getCurrentSession();
		Brand brandtheoid = (Brand) session.createQuery("from brand where brand_id="+brand_id).getSingleResult();
		return brandtheoid;
	}

	@Override
	@Transactional
	public boolean XoaBrand(long brand_id) {
		Session session = sessionfactory.getCurrentSession();
		Brand brand = session.get(Brand.class, brand_id);
		
		session.createQuery("delete from product where brand_id="+brand_id).executeUpdate();
		session.createQuery("delete from brand where brand_id="+brand_id).executeUpdate();

		
		return false;
	}

	@Override
	@Transactional
	public boolean UpdateBrand(long brand_id, String brand_name) {
		
		Session session = sessionfactory.getCurrentSession();
		Brand brand = session.get(Brand.class, brand_id);
		
		session.createQuery("Update from brand set brand_name='"+brand_name+"' where brand_id="+brand_id).executeUpdate();
		
		return false;
	}

	@Override
	@Transactional
	public boolean InsertBrand(Brand brand) {
		
		Session session = sessionfactory.getCurrentSession();
		long brand_id =  (long) session.save(brand);
		
		return false;
	}



}
