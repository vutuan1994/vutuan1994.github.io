package com.vutuan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vutuan.DAO.CategoryDAO;
import com.vutuan.DAOImp.CategoryImp;
import com.vutuan.entity.Category;

@Service
public class CategoryService implements CategoryImp{
	
	@Autowired
	CategoryDAO categorydao;

	public List<Category> DanhSachCategory() {
		// TODO Auto-generated method stub
		return categorydao.DanhSachCategory();
	}

	@Override
	public boolean XoaCategory(long category_id) {
		// TODO Auto-generated method stub
		return categorydao.XoaCategory(category_id);
	}

	@Override
	public Category CategoryTheoID(long category_id) {
		// TODO Auto-generated method stub
		return categorydao.CategoryTheoID(category_id);
	}

	@Override
	public boolean UpdateCategory(String category_name, long category_id) {
		// TODO Auto-generated method stub
		return categorydao.UpdateCategory(category_name, category_id);
	}

	@Override
	public boolean ThemCategory(Category category) {
		// TODO Auto-generated method stub
		return categorydao.ThemCategory(category);
	}
	
	
}
