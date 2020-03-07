 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>THANH TOÁN - HUTECH ACOUSTIC SHOP</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<jsp:include page="css.jsp"></jsp:include>
    </head>
    <body>
        ...
        <jsp:include page="header.jsp"></jsp:include>
        <div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">THANH TOÁN</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="<c:url value ="/"/>">Trang Chủ</a><label>/</label>Thanh Toán</h3>
		<div class="clearfix"> </div>
	</div>
</div>
        
        	<div class="login">
		<div class="container">
                    <form id="form-thanhtoan" name="formbill" method="POST" onsubmit="return validateForm();"> 
			<div class="col-md-6 login-do1 animated wow fadeInLeft" data-wow-delay=".5s">
                            <span>Địa Chỉ Của Bạn * : </span>
                            <br>
				<div class="login-mail">
					<input class ="address" type="text" placeholder="Số nhà, đường, phường, quận..." name="address" required>
					<i class="glyphicon glyphicon-map-marker"></i>
				</div>
                            <span>Họ và tên</span>
                            <br>
				<div class="login-mail">
					<input class ="name" type="text" placeholder="Họ và tên của người nhận hàng" name="name" required>
					<i class="glyphicon glyphicon-user"></i>
				</div>
                            <span>Điện thoại</span>
                            <br>
				<div class="login-mail">
					<input class ="phone" type="text" placeholder="Điện thoại di động của người nhận hàng" name="phone" required>
					<i class="glyphicon glyphicon-phone"></i>
				</div>
				<div class="login-mail">
					<input class ="user_id" type="hidden"  name="users" value="${item.getQuatity() }" required>
					<i class="glyphicon glyphicon-phone"></i>
				</div>
                            <div>
                                <span >Phương Thức Thanh Toán * : </span>
                                <select id="payment" name="payment">
                                    <option value="Bank transfer">Chuyển khoản</option>
                                    <option value="Live">Trực tiếp</option>
                                        
                                </select>
				</div>
				
				   

			
			</div>
			</form>
			<div class="col-md-6 login-do animated wow fadeInRight" data-wow-delay=".5s">
				<label class="hvr-sweep-to-top login-sub">
                                    
					<input type="submit" class="thanhtoan" id="thanhtoan" value="Thanh Toán Ngay Bây Giờ">
					</label>
					
			</div>
			
			<div class="clearfix"> </div>
			

	</div>
	</div>        
        <div class="social animated wow fadeInUp" data-wow-delay=".1s">
	<div class="container">
		<div class="col-sm-3 social-ic">
			<a href="#" >FACEBOOK</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="#">TWITTER</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="#">GOOGLE+</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="#">PINTEREST</a>
		</div>
	<div class="clearfix"></div>
	</div>
</div>
        
        <jsp:include page="footer.jsp"></jsp:include>
        <jsp:include page="js.jsp"></jsp:include>
    </body>
</html>
