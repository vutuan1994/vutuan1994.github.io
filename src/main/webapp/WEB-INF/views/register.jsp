 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Ký</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<jsp:include page="css.jsp"></jsp:include>

<script src="<c:url value="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"/>" type="text/javascript"></script>
<script src='<c:url value="https://www.google.com/recaptcha/api.js"/>'></script>

    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        
        <div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Đăng Ký</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="<c:url value = "/"/>">Trang Chủ</a><label>/</label>Đăng Ký</h3>
		<div class="clearfix"> </div>
	</div>
</div>
        
        	<div class="login">
		<div class="container">
                    <form action="" id="form-dangky" method="POST">
			<div class="col-md-6 login-do1 animated wow fadeInLeft" data-wow-delay=".5s">
				<div class="login-mail">
					<input type="text" placeholder="Tên đăng nhập" name="user_name" id="name" required>
                                        
					<i class="glyphicon glyphicon-user"></i>
                               <span id="user-result"></span>
				</div>
                            <div class="login-mail">
					<input type="text" placeholder="Email" name="user_email" id="email" required>
                                        
					<i class="glyphicon glyphicon-envelope"></i>
                               <span id="user-result"></span>
				</div>
                            <div class="login-mail">
					<input type="text" placeholder="Điện thoại" name="user_phone" id="phone" required>
                                        
					<i class="glyphicon glyphicon-phone"></i>
                               <span id="user-result"></span>
				</div>
    
				<div class="login-mail">
					<input type="password" placeholder="Mật khẩu" name="user_pass" id="pass" required>
                                        
					<i class="glyphicon glyphicon-lock"></i>
                                        <span></span>
				</div>
                            
                            <div class="login-mail">
					<input type="password" placeholder="Xác Nhận Mật khẩu" name="nhaplaipassword" id="confirm_pass" required>
                                        
                                        
                                        
					<i class="glyphicon glyphicon-lock"></i>
                                        <span></span><span id='message'></span>
				</div>
                          <div class="login-mail">

                                    <input type="input"  value="" />
                                
					
                                        
					<i class="glyphicon glyphicon-question-sign"></i>
                                        <span></span>
                                        
				</div>

				  <div class="login-mail" href="#">
						 <label class="checkbox1"><input type="checkbox" name="checkbox" ><i> </i>Tôi đồng ý với các điều khoản.</label>
	<fieldset disabled>
        <div class="form-group">
          <label for="disabledTextInput">Điều khoản tại website HUTECH ACOUSTIC SHOP</label>
          <textarea type="text" id="disabledTextInput" class="form-control" placeholder="">* Mua hàng tại HAS không được đổi trả. &#10;* Bạn hãy chắc địa chỉ bạn gửi là đúng. &#10;* Sau 3 ngày không chuyển khoản, đơn hàng sẽ xóa.&#10;* Phải biết rằng admin cute phô mai que :3</textarea>
          </fieldset>
          
                                  </div>
	
			</div>
			<div class="col-md-6 login-do animated wow fadeInRight" data-wow-delay=".5s">
				<label class="hvr-sweep-to-top login-sub">
                                    <input type="hidden" value="insert" >
					<input type="submit" id="dangky" value="Đăng Ký">
					</label>

					<p>Bạn đã có tài khoản ?</p>
				<a href="<c:url value = "login"/>" class="hvr-sweep-to-top">Đăng Nhập</a>
			</div>
			<div class="clearfix"> </div>
			<span>${kiemtradangnhap}</span>
			</form>
		</div>


	</div>
        
                <div class="social animated wow fadeInUp" data-wow-delay=".1s">
	<div class="container">
		<div class="col-sm-3 social-ic">
			<a href="#">FACEBOOK</a>
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
