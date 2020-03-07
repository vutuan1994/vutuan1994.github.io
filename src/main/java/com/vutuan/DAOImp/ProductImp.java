package com.vutuan.DAOImp;

import java.util.List;

import com.vutuan.entity.Product;

public interface ProductImp {
	List<Product> ProductMoiNhat(int top);
	List<Product> DanhSachProductTuLoai (int category_id);
	List<Product> DanhSachProductBrand (int brand_id);
	Product ChiTietProduct (int product_id);
	List<Product> DanhSachProductLienQuan(int category_id, int product_id);
	boolean XoaSanPham(long product_id);
	List<Product> DanhSachProduct();
	boolean UpdateProduct(Product product);
	List<Product> TimKiemProduct(String product_name);
	boolean InsertProduct(Product product);
}
