 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ĐÁNH GIÁ SẢN PHẨM - HUTECH ACOUSTIC SHOP</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<jsp:include page="css.jsp"></jsp:include>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>
         <div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">ĐÁNH GIÁ SẢN PHẨM</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="<c:url value = "/"/>">Trang Chủ</a><label>/</label>Đánh giá sản phẩm</h3>
		<div class="clearfix"> </div>
	</div>
</div>
         <div class="login">
		<div class="container">
                    <div class="col-md-8 contact-grids1 animated wow fadeInRight" data-wow-delay=".5s">
                        <form action="" id="form-danhgia" method="post">
                                    <input type="hidden" name="product" value="${chitietproduct.getProduct_id() }">
						<div class="contact-form2">
							<h4>Họ và tên</h4>
							
								<input type="text" name = "review_name" placeholder="" required>
							
						</div>
						
				
						<div class="contact-form2">
							<h4>Email</h4>
						
								<input type="email" name="review_email" placeholder="" required>
						
						</div>
						
					<fieldset class="starability-basic">
                                   
                                    <input type="radio" id="rate5" name="review_star" value="5" />
                                    <label for="rate5" title="Toẹt vời">5 stars</label>
                                    <input type="radio" id="rate4" name="review_star" value="4" />
                                    <label for="rate4" title="Cũng được">4 stars</label>
                                    <input type="radio" id="rate3" name="review_star" value="3" />
                                    <label for="rate3" title="Bình thường thôi">3 stars</label>
                                     <input type="radio" id="rate2" name="review_star" value="2" />
                                    <label for="rate2" title="Hơi xấu đấy">2 stars</label>
                                    <input type="radio" id="rate1" name="review_star" value="1" />
                                    <label for="rate1" title="Quá tệ">1 star</label>
                                    </fieldset>
			
				<div class="contact-me ">
					<h4>Đánh giá</h4>
				
                                        <textarea type="text" name="review_message"  placeholder="" required> </textarea>
						</div>
				<input type="hidden"  value="insert">		
                                    <input id="danhgia" type="submit" value="Gửi đánh giá" >
				</form>
				
			</div>
         
         <div class="clearfix"> </div>
         </div>
	</div> 
         <div class="clearfix"> </div>
         
        
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



