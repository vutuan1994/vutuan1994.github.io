package com.vutuan.controller;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.vutuan.entity.Users;
import com.vutuan.service.UsersService;

@Controller
@RequestMapping("/register")
@SessionAttributes("user_name")
public class RegisterController {
	
	@Autowired
	UsersService usersservice;
	
	@GetMapping
	public String Deafault() {
		
		
		return "register";
	}
	
	@PostMapping
	public String DangKy(@RequestParam String nhaplaipassword,@RequestParam String user_email, @RequestParam String user_phone ,ModelMap modelmap, @RequestParam String user_name, @RequestParam String user_pass, HttpSession httpsession,HttpServletResponse response) {
		boolean checkmail = validate(user_email);
		
		if(checkmail) {
		if(user_pass.equals(nhaplaipassword)) {
		Users users = new Users();
		users.setUser_email(user_email);
		users.setUser_name(user_name);
		users.setUser_pass(user_pass);
		users.setUser_phone(user_phone);
		
		boolean KiemTraTrungTenDangNhap = usersservice.KiemTraTrungTenDangNhap(user_name);
		boolean KiemTraThem = usersservice.DangKy(users);
		
		
		
		if(KiemTraThem) {
			if(KiemTraTrungTenDangNhap) {
				try {
					response.sendRedirect("/MusicWeb/login");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else {
				modelmap.addAttribute("kiemtradangnhap", "Tạo tài khoản thất bại");
			}
			
		}else {
			modelmap.addAttribute("kiemtradangnhap", "Tên đăng nhập đã được sử dụng");
		}
		


			}else {
				modelmap.addAttribute("kiemtradangnhap", "Mật khẩu không trùng khớp");
			}
			}else {
				modelmap.addAttribute("kiemtradangnhap", "Vui lòng nhập đúng định dạng email");
			}

		return "register";
	}
	public static final Pattern VALID_EMAIL_ADDRESS_REGEX = 
			Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

		public static boolean validate(String emailStr) {
			Matcher matcher = VALID_EMAIL_ADDRESS_REGEX .matcher(emailStr);
			return matcher.find();
			}
}
