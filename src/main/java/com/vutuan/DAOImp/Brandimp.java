package com.vutuan.DAOImp;

import java.util.List;

import com.vutuan.entity.Brand;
import com.vutuan.entity.Product;

public interface Brandimp {

	List<Brand> DanhSachBrand();
	Brand BrandTheoid(long brand_id);
	boolean XoaBrand(long brand_id);
	boolean UpdateBrand(long brand_id, String brand_name);
	boolean InsertBrand(Brand brand);

}
