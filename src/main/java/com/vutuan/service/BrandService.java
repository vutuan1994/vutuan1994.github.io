package com.vutuan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vutuan.DAO.BrandDAO;
import com.vutuan.DAOImp.Brandimp;
import com.vutuan.entity.Brand;
import com.vutuan.entity.Product;

@Service
public class BrandService implements Brandimp{
	
	@Autowired
	BrandDAO branddao;

	public List<Brand> DanhSachBrand() {
		// TODO Auto-generated method stub
		return branddao.DanhSachBrand();
	}

	@Override
	public Brand BrandTheoid(long brand_id) {
		return branddao.BrandTheoid(brand_id);
	}

	@Override
	public boolean XoaBrand(long brand_id) {
		// TODO Auto-generated method stub
		return branddao.XoaBrand(brand_id);
	}

	@Override
	public boolean UpdateBrand(long brand_id,String brand_name) {
		// TODO Auto-generated method stub
		return branddao.UpdateBrand(brand_id,brand_name);
	}

	@Override
	public boolean InsertBrand(Brand brand) {
		// TODO Auto-generated method stub
		return branddao.InsertBrand(brand);
	}



}
