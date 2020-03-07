package com.vutuan.DAOImp;

import java.util.List;

import com.vutuan.entity.Category;

public interface CategoryImp {
	List<Category> DanhSachCategory();
	boolean XoaCategory(long category_id);
	Category CategoryTheoID(long category_id);
	boolean UpdateCategory(String category_name, long category_id);
	boolean ThemCategory(Category category);
}
