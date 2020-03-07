$(document).ready(function(){

	var product_id = 0;
	
	$("#dangnhap").unbind().click(function(){
		var user_name = $("#username").val();
		var user_pass = $("#pass").val();

		$.ajax({
			url:"/MusicWeb/api/KiemTraDangNhap",
			type: "GET",
			
			data:{
				user_name:user_name, 
				user_pass:user_pass
			},
			success: function(value){
				if(value != "true"){
					window.location.href ="/MusicWeb/";					
					
				}else{
					alert("đăng nhập không thành công!")
				}
			}
		})
		
		
	})
	
	$("#dangnhapadmin").click(function(){
		var user_ad_email = $("#emailadmin").val();
		var user_ad_pass = $("#passadmin").val();
		
		
		
		$.ajax({
			url:"/MusicWeb/api/DangNhapAdmin",
			type: "POST",
			
			data:{
				user_ad_email:user_ad_email, 
				user_ad_pass:user_ad_pass
			},
			success: function(value){
				if(value == "true"){
					alert("Đăng nhập thành công!")
					window.location.href ="/MusicWeb/admin/trangchu";					
					
				}else{
					alert("Đăng nhập thất bại!")
				}
			}
		})
	})
	

	

	
	$(".btn-danger").click(function(){
		var user_ad_email = $("#emailadmin").val();
	
		
		console.log(user_ad_email+"-"+user_ad_pass)
		
		$.ajax({
			url:"/MusicWeb/api/DangXuatDangNhap",
			type: "POST",
			
			data:{
				user_ad_email:user_ad_email, 
				user_ad_pass:user_ad_pass
			},
			success: function(value){
				if(value == "true"){
					alert("Đăng nhập thành công!")
					window.location.href ="/MusicWeb/admin/trangchu";					
					
				}else{
					alert("Đăng nhập thất bại!")
				}
			}
		})
	})
	
	
	
	
	$(".item_add").unbind().click(function(){
		
		var product_image_forward = $("#tenanh").attr("data-thumb");
		var product_name = $("#tensp").text();
		var product_price = $("#giatien").attr("data-value");
		var soluong = $("#soluong").attr("value");
		var product_id = $("#tensp").attr("data-masp");
		var user_id = $("#user").attr("data-mauser");




		$.ajax({
			url:"/MusicWeb/api/ThemCheckOut",
			type:"GET",
			data:{
				soluong:soluong,
				product_name:product_name,
				product_price:product_price,
				product_id:product_id,
				product_image_forward:product_image_forward,
				user_id:user_id
			},
			success: function(value){
				alert("Thêm Thành Công!");
				$("#giohang").find("div").addClass("product-count");
				$("#giohang").find("div").html("<span>" + value +"</span>");
			}
		})

	})
	

	
	$('.value-plus').on('click', function(){
		var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
		divUpd.text(newVal);		

	});
	
	$('.value-minus').on('click', function(){
		var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
		if(newVal>=1) divUpd.text(newVal);
	});
	

	
	GanTongTienGioHang();
	
	function GanTongTienGioHang(isEventClick){
		var tongtiengiohang = 0;
		$(".giatien").each(function(){
			var soluong = $(this).closest("tr").find(".value").text();
			var product_price = $(this).attr("data-value");
			
			var tongtien = soluong * product_price;
			
			var format=parseFloat(tongtien).toLocaleString(); 		
			if(!isEventClick){
				$(this).html(format);
			}
			
			tongtiengiohang = tongtiengiohang + tongtien;
			
			var formattongtien=parseFloat(tongtiengiohang).toLocaleString(); 
			$(".tongtien").html(formattongtien+"");
			
			
		})
	}
	
	$('.value-minus').on('click', function(){
		var soluong = $(this).parent().find('.value').text();
		var product_price = $(this).closest("tr").find(".giatien").attr("data-value");
		
		
		
		var tongtien = soluong * product_price;

		var format=parseFloat(tongtien).toLocaleString(); 
		$(this).closest("tr").find(".giatien").html(format);
		GanTongTienGioHang(true);
		
		var product_id = $(this).closest("tr").find("#tensp").attr("value");
		$.ajax({
			url:"/MusicWeb/api/CapNhatGioHangMoi",
			type:"GET",
			data:{
				soluong:soluong,
				product_id:product_id,
				
			},
			success: function(value){
			}
		})
		
	});
	
	$('.value-plus').on('click', function(){
		var soluong = $(this).parent().find('.value').text();
		var product_price = $(this).closest("tr").find(".giatien").attr("data-value");
		

		
		var tongtien = soluong * product_price;
		var format=parseFloat(tongtien).toLocaleString(); 
		$(this).closest("tr").find(".giatien").html(format);
		GanTongTienGioHang(true);
		
		var product_id = $(this).closest("tr").find("#tensp").attr("value");
		$.ajax({
			url:"/MusicWeb/api/CapNhatGioHangMoi",
			type:"GET",
			data:{
				soluong:soluong,
				product_id:product_id,
				
			},
			success: function(value){
			}
		})
		
	});
	
	$(".xoasp").click(function(){
		
		var self = $(this);
		var product_id = $(this).closest("tr").find("#tensp").attr("value");
		$.ajax({
			url:"/MusicWeb/api/XoaSanPhamGioHang",
			type:"GET",
			data:{

				product_id:product_id

			},
			success: function(value){
				self.closest("tr").remove();
				
				GanTongTienGioHang(true);
			}
		})
		
	})
	

	
	$(".xoabrand").click(function(){
		
		var self = $(this);
		var brand_id = $(this).closest("tr").find("#brand_id").text();
		
		
		
		$.ajax({
			url:"/MusicWeb/api/XoaBrand",
			type:"GET",
			data:{

				brand_id:brand_id

			},
			success: function(value){
				self.closest("tr").remove();
			}
		})
	})
	
	$(".xoa-category").click(function(){
	
		var self = $(this);
		var category_id = $(this).closest("tr").find("#category_id").text();
		
		$.ajax({
			url:"/MusicWeb/api/XoaCategory",
			type:"GET",
			data:{

				category_id:category_id

			},
			success: function(value){
				self.closest("tr").remove();
			}
		})
		
		
	})
	
	$(".xoaproduct").click(function(){
		
		var self = $(this);
		var product_id = $(this).closest("tr").find("#masp").text();
		
		
		
		$.ajax({
			url:"/MusicWeb/api/XoaProduct",
			type:"GET",
			data:{

				product_id:product_id

			},
			success: function(value){
				self.closest("tr").remove();
			}
		})
		
		
	})
	
	
	$("#updatebrand").click(function(){
	
		var brand_name = $(".brand_name").val();
		var brand_id = $(".rand_id").val();
		
		
		
		$.ajax({
			url:"/MusicWeb/api/UpdateBrand",
			type:"GET",
			data:{

				brand_id:brand_id,
				brand_name:brand_name

			},
			success: function(value){
				alert("Update Thành Công!")
			}
		})
	})
	
	$("#updatecategory").click(function(){
		
		var category_id = $("#category_id").val();
		var category_name = $("#category_name").val();
		
		
		$.ajax({
			url:"/MusicWeb/api/UpdateCategory",
			type:"POST",
			data:{

				category_id:category_id,
				category_name:category_name

			},
			success: function(value){
				alert("Update Thành Công!")
			}
		})
	})
	
	$("#btn-info").click(function(event){
		event.preventDefault();
		var formcapnhatthongtin = $("#form-capnhatthongtin").serializeArray();

		
		json = {};
		$.each(formcapnhatthongtin, function(i,field){
			json[field.name] = field.value;
		});
		
		$.ajax({
			url:"/MusicWeb/api/CapNhatThongTinUsers",
			type:"GET",
			data:{


				datajson: JSON.stringify(json)

			},
			success: function(value){
				alert("Thêm Thành Công!")
			}
		})
		
	})
	
	$("#updateproduct").click(function(event){
		
		event.preventDefault();
		
		var formproduct = $("#form-product").serializeArray();
		
		console.log(formproduct);
		
		json = {};
		$.each(formproduct, function(i,field){
			json[field.name] = field.value;
			
			  if(field.name === "category"){
				  objectCategory = {};
				  objectCategory["category_id"] = field.value;
				  json[field.name] = objectCategory;
			  }
			  
			  if(field.name === "brand"){
				  objectBrand = {};
				  objectBrand["brand_id"] = field.value;
				  json[field.name] = objectBrand;
			  }
			  
			  
		});
		
		  json["product_id"] = product_id;
		  json["product_image"] = tenhinh;
		  json["product_image_forward"] = tenhinh1;
		  json["product_image_back"] = tenhinh2;
		
		$.ajax({
			url:"/MusicWeb/api/UpdateProduct",
			type:"POST",
			data:{


				datajson: JSON.stringify(json)

			},
			success: function(value){
				alert("Update Thành Công!")
			}
		})
		
	})
	
	var files = [];
	var tenhinh = "";
	var tenhinh1 = "";
	var tenhinh2 = "";
	$("#hinhanh").change(function(event){
		files = event.target.files; 
		tenhinh = files[0].name;
		forms = new FormData(); 
		forms.append("file",files[0]);
		
		$.ajax({
			url:"/MusicWeb/api/UpLoadFile",
			type:"POST",
			data:forms,
			processData:false,
			contentType:false,
			enctype: "multipart/form-data",
			success: function(value){

				
			}
		})
	})
	
		$("#hinhanh1").change(function(event){
		files = event.target.files; 
		tenhinh1 = files[0].name;
		forms = new FormData(); 
		forms.append("file",files[0]);
		
		$.ajax({
			url:"/MusicWeb/api/UpLoadFile",
			type:"POST",
			data:forms,
			processData:false,
			contentType:false,
			enctype: "multipart/form-data",
			success: function(value){

				
			}
		})
	})
	
		$("#hinhanh2").change(function(event){
		files = event.target.files; 
		tenhinh2 = files[0].name;
		forms = new FormData(); 
		forms.append("file",files[0]);
		
		$.ajax({
			url:"/MusicWeb/api/UpLoadFile",
			type:"POST",
			data:forms,
			processData:false,
			contentType:false,
			enctype: "multipart/form-data",
			success: function(value){

				
			}
		})
	})
		

		$("#themproduct").click(function(event){
			
			event.preventDefault();
			var formthemproduct = $("#form-themproduct").serializeArray();
			
			json = {};
			$.each(formthemproduct, function(i,field){
				json[field.name] = field.value;
				
				  if(field.name === "category"){
					  objectCategory = {};
					  objectCategory["category_id"] = field.value;
					  json[field.name] = objectCategory;
				  }
				  
				  if(field.name === "brand"){
					  objectBrand = {};
					  objectBrand["brand_id"] = field.value;
					  json[field.name] = objectBrand;
				  }
				  
				  
			});
			
			  json["product_id"] = product_id;
			  json["product_image"] = tenhinh;
			  json["product_image_forward"] = tenhinh1;
			  json["product_image_back"] = tenhinh2;
			
			$.ajax({
				url:"/MusicWeb/api/ThemProduct",
				type:"POST",
				data:{


					datajson: JSON.stringify(json)

				},
				success: function(value){
					alert("Thêm Thành Công!")
				}
			})
			
		})
		
	$("#insertbrand").click(function(event){
		
		event.preventDefault();
		
		var formbrand = $("#form-brand").serializeArray();
		
		json = {};
		$.each(formbrand, function(i,field){
			json[field.name] = field.value;
		});
		
		$.ajax({
			url:"/MusicWeb/api/ThemBrand",
			type:"GET",
			data:{


				datajson: JSON.stringify(json)

			},
			success: function(value){
				alert("Thêm Thành Công!")
			}
		})
		
		
	})
	
	$("#themcategory").click(function(event){
		
		event.preventDefault();
		var formcategory = $("#form-category").serializeArray();
		
		json={};
		$.each(formcategory, function(i,field){
			json[field.name]=field.value;
		});
		
		$.ajax({
			url:"/MusicWeb/api/ThemCategory",
			type:"POST",
			data:{


				datajson: JSON.stringify(json)

			},
			success: function(value){
				alert("Thêm Thành Công!")
			}
		})
		
		
	})
	
	

	
	
	$(".thanhtoan").click(function(event){
		event.preventDefault();
		var formtthanhtoan = $("#form-thanhtoan").serializeArray();
		

		
		json = {};
		$.each(formtthanhtoan, function(i,field){
			json[field.name] = field.value;
			
			 if(field.name === "users"){
				  objectUsers = {};
				  objectUsers["user_id"] = field.value;
				  json[field.name] = objectUsers;
			  }
		});

		console.log(json);
		$.ajax({
			url:"/MusicWeb/api/ThemBill",
			type:"GET",
			data:{
				datajson: JSON.stringify(json)
			},
			success: function (value) {
				if(value != "true"){
					alert("Thanh Toán Thành Công!")
				}
			}
		})
	})
	
	var x =[];
	
	$("#thanhtoan1").click(function(event){
		event.preventDefault();
		var quatity = $("#tongtien").text();
		var format=(quatity).toLocaleString();
//		var format = parseInt(quatity).toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString();
//		var checkout = $("#checkout").serializeArray();
		console.log(format);
//		$("#t1 tr").each(function(){
//		
//		
//		
//		json = {};
//		var product_id = $(this).find("td").eq(0).attr("value");
//		var quatity = $("#tongtien").text();
//		var user_id = $("#user").attr("data-mauser");
//		
//		var product_price = $(this).find("td").eq(2).html();
//		var soluong = $(this).find("td").eq(3).find("span").text();
//
//
//		x.push({product_id: product_id, product_price: product_price, user_id: user_id, soluong: soluong, quatity: quatity});
//		console.log(x);
//		$.each(formcategory, function(i,field){
//			json[field.name]=field.value;
//		});
		

		$.ajax({
			url:"/MusicWeb/api/HoaDon",
			type:"POST",
			data:{
//				datajson: JSON.stringify(x)
				quatity:quatity
			},
			success: function(value){

			}
//		})
		})
	})
	

	$("#danhgia").click(function(event){
		event.preventDefault();
		var formdanhgia = $("#form-danhgia").serializeArray();
		
		
		
		json = {};
		$.each(formdanhgia, function(i,field){
			json[field.name] = field.value;
			
			 if(field.name === "product"){
				 objectProduct = {};
				 objectProduct["product_id"] = field.value;
				  json[field.name] = objectProduct;
			  }
		})
		console.log(json);
		$.ajax({
			url:"/MusicWeb/api/ThemReview",
			type:"POST",
			data:{
				datajson1: JSON.stringify(json)
			},
			success: function (value) {
				if(value != null || value != ""){
					alert("Gửi Review thành công");
					window.location.href ="/MusicWeb/";	
			}
			}
		
	})
	
	})
	
	$(window).load(function() {
		  $('.flexslider').flexslider({
		    animation: "slide",
		    controlNav: "thumbnails"
		  });
		});
	

        $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion           
            width: 'auto', //auto or any width like 600px
            fit: true   // 100% fit in a container
        });
 
    
	

      $("#owl-demo").owlCarousel({
        items : 2,
        lazyLoad : false,
        autoPlay : true,
        navigation : true,
        navigationText :  true,
        pagination : false,
      });

  
	
	$(window).load(function() {
		$("#flexiselDemo2").flexisel({
			visibleItems: 1,
			animationSpeed: 1000,
			autoPlay: true,
			autoPlaySpeed: 5000,    		
			pauseOnHover: true,
			enableResponsiveBreakpoints: true,
	    	responsiveBreakpoints: { 
	    		portrait: { 
	    			changePoint:480,
	    			visibleItems: 1
	    		}, 
	    		landscape: { 
	    			changePoint:640,
	    			visibleItems: 1
	    		},
	    		tablet: { 
	    			changePoint:768,
	    			visibleItems: 1
	    		}
	    	}
	    });
	    
	});
	
	$('#pass, #confirm_pass').on('keyup', function () {
	    if ($('#pass').val() == $('#confirm_pass').val()) {
	        $('#message').html('Trùng khớp').css('color', 'green');
	    } else 
	        $('#message').html('Không trùng khớp').css('color', 'red');
	});
	
	$("#btn-info").click(function(event){
		event.preventDefault();
		var formcapnhatthongtin = $("#form-capnhatthongtin").serializeArray();
		
		console.log(formcapnhatthongtin);
		
		
	});


})