package com.vutuan.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vutuan.DAOImp.ProductImp;
import com.vutuan.entity.Brand;
import com.vutuan.entity.Product;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class ProductDAO implements ProductImp{

	@Autowired
	SessionFactory sessionfactory;

	@Transactional
	public List<Product> ProductMoiNhat(int top) {
		Session session = sessionfactory.getCurrentSession();
		List<Product> dsproductMoiNhat = session.createQuery("from product").setFirstResult(0).setMaxResults(top).getResultList();
		return dsproductMoiNhat;
	}

	@Transactional
	public List<Product> DanhSachProductTuLoai(int category_id) {
		Session session = sessionfactory.getCurrentSession();
		List<Product> dsproducttuCategory = session.createQuery("from product s where s.category.category_id ="+category_id).getResultList();
		return dsproducttuCategory;
	}
	
	@Transactional
	public List<Product> DanhSachProductTuLoaiLimit(int category_id) {
		Session session = sessionfactory.getCurrentSession();
		List<Product> dsproducttuCategoryLimit = session.createQuery("from product s where s.category.category_id ="+category_id).setFirstResult(0).setMaxResults(2).getResultList();
		return dsproducttuCategoryLimit;
	}

	
	@Transactional
	public Product ChiTietProduct(int product_id) {
		Session session = sessionfactory.getCurrentSession();
		Product chitietproduct = (Product) session.createQuery("from product p where p.product_id ="+product_id).getSingleResult();
		
		return chitietproduct;
	}

	@Transactional
	public List<Product> DanhSachProductLienQuan(int category_id, int product_id) {
		Session session = sessionfactory.getCurrentSession();
		List<Product> dsproductlienquan = session.createQuery("from product p where p.category.category_id="+category_id+"AND p.product_id!="+product_id).getResultList();
		return dsproductlienquan;
	}

	@Transactional
	public List<Product> DanhSachProductBrand(int brand_id) {
		Session session = sessionfactory.getCurrentSession();
		List<Product> dsproducttubrand = session.createQuery("from product s where s.brand.brand_id ="+brand_id).getResultList();
		return dsproducttubrand;
	}

	@Override
	@Transactional
	public boolean XoaSanPham(long product_id) {
		Session session = sessionfactory.getCurrentSession();
		Product product = session.get(Product.class, product_id);
		
		session.createQuery("delete bill_detail where product_id="+product_id).executeUpdate();
		session.createQuery("delete review where product_id="+product_id).executeUpdate();
		session.createQuery("delete product where product_id="+product_id).executeUpdate();
		
		return false;
	}

	@Override
	@Transactional
	public List<Product> DanhSachProduct() {
		Session session = sessionfactory.getCurrentSession();
		List<Product> dsproduct = session.createQuery("from product").getResultList();
		return dsproduct;
	}

	@Override
	@Transactional
	public boolean UpdateProduct(Product product) {
		Session session = sessionfactory.getCurrentSession();
		session.update(product);
		return false;
	}

	@Override
	@Transactional
	public List<Product> TimKiemProduct(String product_name) {
		Session session = sessionfactory.getCurrentSession();
		List<Product> timkiemproduct = session.createQuery("from product where product_name like'"+"%"+product_name+"%"+"'").getResultList();
		return timkiemproduct;
	}

	@Override
	@Transactional
	public boolean InsertProduct(Product product) {
		Session session = sessionfactory.getCurrentSession();
		long product_id = (long) session.save(product);
		return false;
	}
}
