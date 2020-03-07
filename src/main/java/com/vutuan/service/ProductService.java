package com.vutuan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vutuan.DAO.ProductDAO;
import com.vutuan.DAOImp.ProductImp;
import com.vutuan.entity.Product;

@Service
public class ProductService implements ProductImp{
	
	@Autowired
	ProductDAO productdao;

	public List<Product> ProductMoiNhat(int top) {
		return productdao.ProductMoiNhat(top);
	}

	public List<Product> DanhSachProductTuLoai(int category_id) {
		// TODO Auto-generated method stub
		return productdao.DanhSachProductTuLoai(category_id);
	}	
	public List<Product> DanhSachProductTuLoaiLimit(int category_id) {
			// TODO Auto-generated method stub
			return productdao.DanhSachProductTuLoaiLimit(category_id);
	}

	public Product ChiTietProduct(int product_id) {
		// TODO Auto-generated method stub
		return productdao.ChiTietProduct(product_id);
	}

	public List<Product> DanhSachProductLienQuan(int category_id, int product_id) {
		// TODO Auto-generated method stub
		return productdao.DanhSachProductLienQuan(category_id, product_id);
	}

	public List<Product> DanhSachProductBrand(int brand_id) {
		// TODO Auto-generated method stub
		return productdao.DanhSachProductBrand(brand_id);
	}

	@Override
	public boolean XoaSanPham(long product_id) {
		// TODO Auto-generated method stub
		return productdao.XoaSanPham(product_id);
	}

	@Override
	public List<Product> DanhSachProduct() {
		// TODO Auto-generated method stub
		return productdao.DanhSachProduct();
	}

	@Override
	public boolean UpdateProduct(Product product) {
		// TODO Auto-generated method stub
		return productdao.UpdateProduct(product);
	}

	@Override
	public List<Product> TimKiemProduct(String product_name) {
		// TODO Auto-generated method stub
		return productdao.TimKiemProduct(product_name);
	}

	@Override
	public boolean InsertProduct(Product product) {
		// TODO Auto-generated method stub
		return productdao.InsertProduct(product);
	}
}
