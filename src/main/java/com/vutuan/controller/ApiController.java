package com.vutuan.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mysql.cj.xdevapi.JsonArray;
import com.vutuan.entity.Bill;
import com.vutuan.entity.Brand;
import com.vutuan.entity.Category;
import com.vutuan.entity.GioHang;
import com.vutuan.entity.HoaDon;
import com.vutuan.entity.Item;
import com.vutuan.entity.Product;
import com.vutuan.entity.Review;
import com.vutuan.entity.Users;

import com.vutuan.service.BillService;
import com.vutuan.service.BrandService;
import com.vutuan.service.CategoryService;
import com.vutuan.service.ProductService;
import com.vutuan.service.ReviewService;
import com.vutuan.service.UsersAdminService;
import com.vutuan.service.UsersService;

@Controller
@RequestMapping("api/")
@SessionAttributes({ "users", "giohang","user_ad_email","item"})
public class ApiController {

	@Autowired
	UsersService usersservice;

	@Autowired
	ProductService productservice;

	@Autowired
	BillService billservice;

	@Autowired
	ReviewService reviewservice;
	
	@Autowired
	UsersAdminService usersadminservice;
	
	@Autowired
	BrandService brandservice;
	
	@Autowired
	CategoryService categoryservice;

	@GetMapping("KiemTraDangNhap")
	@ResponseBody
	public String KiemTraDangNhap(ModelMap modelmap,@RequestParam String user_name, 
			@RequestParam String user_pass,HttpSession httpsession) {
		
//		boolean kiemtradangnhap = usersservice.KiemTraDangNhap(user_name, user_pass);

			Users users = new Users();
			

		users = usersservice.DangNhap(user_name, user_pass);

			httpsession.setAttribute("users", users);

			
			return ""+users;



	}
	
	@PostMapping("DangNhapAdmin")
	@ResponseBody
	public String DangNhapAdmin(ModelMap modelmap, @RequestParam String user_ad_email,@RequestParam String user_ad_pass) {
		
		boolean kiemtraAdmin = usersadminservice.DangNhapAdmin(user_ad_email, user_ad_pass);
		modelmap.addAttribute("user_ad_email", user_ad_email);
		
		return "" + kiemtraAdmin;
	}
	
	@GetMapping("CapNhatThongTinUsers")
	@ResponseBody
	public void CapNhatThongTinUsers(@RequestParam String datajson) {
		
		ObjectMapper objecmapper = new ObjectMapper();
		try {
			Users user = objecmapper.readValue(datajson, Users.class);
			
			usersservice.CapNhatThongTinUsers(user);
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
//@RequestParam long product_id, @RequestParam long quatity, @RequestParam long user_id, @RequestParam String product_price, @RequestParam int soluong
	@PostMapping("HoaDon")
	@ResponseBody
	public void NoiDungHoaDon(@RequestParam long quatity,HttpSession httpsession) {
		

			List<Item> items = new ArrayList<>();
			Item item = new Item();
			item.setQuantity(quatity);

			items.add(item);
			
			System.out.println(item.getQuantity());
			httpsession.setAttribute("item", item);




		
//		ObjectMapper objectMapper = new ObjectMapper();
//		JsonNode jsonnode;
		 
		

//			try {
//				jsonnode = objectMapper.readTree(datajson);
//				System.out.println(jsonnode.get("soluong"));
//				HoaDon hoadon = objectMapper.readValue(datajson, HoaDon.class);
//				System.out.println(hoadon.getSoluong());
//				httpsession.setAttribute("hoadon", hoadon);
//			} catch (JsonMappingException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			} catch (JsonProcessingException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
			
			

		
	}

	@GetMapping("ThemCheckOut")
	@ResponseBody
	public void ThemCheckOut(@RequestParam long user_id, @RequestParam int soluong, @RequestParam String product_name,
			@RequestParam long product_price, @RequestParam long product_id, @RequestParam String product_image_forward,
			HttpSession httpsession) {

		if (null == httpsession.getAttribute("giohang")) {
			List<GioHang> giohangs = new ArrayList<>();
			GioHang giohang = new GioHang();

			giohang.setProduct_id(product_id);
			giohang.setProduct_image_forward(product_image_forward);
			giohang.setProduct_name(product_name);
			giohang.setProduct_price(product_price);
			giohang.setSoluong(soluong);
			giohang.setUser_id(user_id);
			giohangs.add(giohang);

			httpsession.setAttribute("giohang", giohangs);

			List<GioHang> listgiohangs = (List<GioHang>) httpsession.getAttribute("giohang");
//			System.out.println(listgiohangs.size());
//			return giohangs.size() + "";

		} else {

			List<GioHang> listgiohangs = (List<GioHang>) httpsession.getAttribute("giohang");
			int vitri = KiemTraSanPhamDaTonTai(listgiohangs, product_id, httpsession);
			if (vitri == -1) {

				GioHang giohang = new GioHang();
				giohang.setProduct_id(product_id);
				giohang.setProduct_image_forward(product_image_forward);
				giohang.setProduct_name(product_name);
				giohang.setProduct_price(product_price);
				giohang.setSoluong(soluong);
				giohang.setUser_id(user_id);

				listgiohangs.add(giohang);

			} else {

				int soluongmoi = listgiohangs.get(vitri).getSoluong() + 1;
				listgiohangs.get(vitri).setSoluong(soluongmoi);

			}

		}

//		List<GioHang> listgiohangs = (List<GioHang>) httpsession.getAttribute("giohang");
//		for (GioHang gioHang : listgiohangs) {
//			System.out.println(gioHang.getProduct_image_forward() + " - " + gioHang.getProduct_name() + " - "
//					+ gioHang.getProduct_price() + " - " + gioHang.getSoluong() + " - " + gioHang.getProduct_id());
//		}

	}

	private int KiemTraSanPhamDaTonTai(List<GioHang> listgiohangs, long product_id, HttpSession httpsession) {

		for (int i = 0; i < listgiohangs.size(); i++) {
			if (listgiohangs.get(i).getProduct_id() == product_id) {
				return i;
			}
		}

		return -1;

	}

	@GetMapping("LaySoLuongGioHang")
	@ResponseBody
	public String LaySoLuongGioHang(HttpSession httpsession) {

		if (null != httpsession.getAttribute("giohang")) {
			List<GioHang> giohangs = (List<GioHang>) httpsession.getAttribute("giohang");
			return giohangs.size() + "";
		}

		return "";

	}

	@GetMapping("CapNhatGioHangMoi")
	@ResponseBody
	public void CapNhatGioHangMoi(ModelMap modelmap, HttpSession httpsession, @RequestParam long product_id, @RequestParam int soluong) {

		if (null != httpsession.getAttribute("giohang")) {
			List<GioHang> listgiohangs = (List<GioHang>) httpsession.getAttribute("giohang");
			int vitri = KiemTraSanPhamDaTonTai(listgiohangs, product_id, httpsession);
			int soluongmoi = listgiohangs.get(vitri).getSoluong() + 1;
			listgiohangs.get(vitri).setSoluong(soluong);
//			List<GioHang> listgiohangs = (List<GioHang>) httpsession.getAttribute("giohang");
//			for (GioHang gioHang : listgiohangs) {
//				System.out.println(gioHang.getProduct_image_forward() + " - " + gioHang.getProduct_name() + " - "
//						+ gioHang.getProduct_price() + " - " + gioHang.getSoluong() + " - " + gioHang.getProduct_id());
				 
				 
//					 tongsotien = tongtien;
//				
//					modelmap.addAttribute("tongsotien", tongsotien);
//					System.out.println(tongsotien);
				
			


		}

	}

	@GetMapping("XoaSanPhamGioHang")
	@ResponseBody
	public void XoaSanPhamGioHang(@RequestParam long product_id, HttpSession httpsession) {

		if (null != httpsession.getAttribute("giohang")) {
			List<GioHang> listgiohangs = (List<GioHang>) httpsession.getAttribute("giohang");
			int vitri = KiemTraSanPhamDaTonTai(listgiohangs, product_id, httpsession);
			listgiohangs.remove(vitri);
		}

	}
	
	@GetMapping("XoaBrand")
	@ResponseBody
	public String XoaBrand(@RequestParam long brand_id) {
		brandservice.XoaBrand(brand_id);
		return "true";
	}
	
	@GetMapping("XoaCategory")
	@ResponseBody
	public String XoaCategory(@RequestParam long category_id) {
		categoryservice.XoaCategory(category_id);
		return "true";
	}
	
	@GetMapping("XoaProduct")
	@ResponseBody
	public String XoaProduct(@RequestParam long product_id) {
		productservice.XoaSanPham(product_id);
		return "true";
	}
	
	@GetMapping("UpdateBrand")
	@ResponseBody
	public String UpdateBrand(@RequestParam long brand_id, @RequestParam String brand_name) {
		
		brandservice.UpdateBrand(brand_id, brand_name);
		
		return "true";
		
	}
	
	@PostMapping("UpdateCategory")
	@ResponseBody
	public String UpdateCategory(@RequestParam String category_name,@RequestParam long category_id) {
		
		categoryservice.UpdateCategory(category_name, category_id);
		
		return "true";
	}
	
	@PostMapping("UpdateProduct")
	@ResponseBody
	public void UpdateProduct(@RequestParam String datajson) {	
		ObjectMapper objectMapper = new ObjectMapper();
		
		 
		try {
			Product product = objectMapper.readValue(datajson, Product.class);
			productservice.UpdateProduct(product);
			
			
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	

		
		
	}

	
	@GetMapping("ThemBrand")
	@ResponseBody
	public void ThemBrand(@RequestParam String datajson) {
		ObjectMapper objectMapper = new ObjectMapper();
		
		 
		try {
			Brand brand = objectMapper.readValue(datajson, Brand.class);
			brandservice.InsertBrand(brand);
			
			
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	@PostMapping("ThemCategory")
	@ResponseBody
	public void ThemCategory(@RequestParam String datajson) {
		ObjectMapper objectmapper = new ObjectMapper();
		
		try {
			Category category = objectmapper.readValue(datajson, Category.class);
			categoryservice.ThemCategory(category);
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@GetMapping("ThemBill")
	@ResponseBody
	public void ThemBill(@RequestParam String datajson) {

		ObjectMapper objectmapper = new ObjectMapper();

		try {
			Bill bill = objectmapper.readValue(datajson, Bill.class);
			
			billservice.ThemBill(bill);

		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@PostMapping("ThemReview")
	@ResponseBody
	public void ThemReview(@RequestParam String datajson1) {
		ObjectMapper objectmapper = new ObjectMapper();

		try {
			Review review = objectmapper.readValue(datajson1, Review.class);
			reviewservice.ThemReview(review);
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@PostMapping("ThemProduct")
	@ResponseBody
	public void ThemProduct(@RequestParam String datajson) {
		ObjectMapper objectmapper = new ObjectMapper();

		try {
			Product product = objectmapper.readValue(datajson, Product.class);
			productservice.InsertProduct(product);
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Autowired
	ServletContext context;
	
	@PostMapping("UpLoadFile")
	@ResponseBody
	public String UpLoadFile(MultipartHttpServletRequest multipart) {
		
		String path_save_file = context.getRealPath("/resources/images/");// tạo đường dẫn khi gọi getRealPath ở trến server thì nó sẽ bắt đầu từ webapp
		Iterator<String> listname = multipart.getFileNames();
		MultipartFile mpf = multipart.getFile(listname.next());
		
		File file_save = new File(path_save_file + mpf.getOriginalFilename());
		try {
			mpf.transferTo(file_save);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}// lưu file vào folder mong muốn

		return "true";
	}

}
