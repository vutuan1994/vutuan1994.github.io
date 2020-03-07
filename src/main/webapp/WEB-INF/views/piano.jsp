<%-- 
    Document   : thankyou
    Created on : 02-Mar-2017, 22:35:11
    Author     : NguyenDang
--%>

 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<jsp:include page="css.jsp"></jsp:include>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>
         <div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">PIANO-ORGAN SHOP</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index.jsp">Trang Chủ</a><label>/</label>Piano-Organ Shop</h3>
		<div class="clearfix"> </div>
	</div>
</div>
         <div class="login">
		<div class="container">
                    <h4 align="justify"> Hutech Acoustic Shop chuyên bán đàn piano cơ, đàn piano điện chính hãng, ngoại nhập. Cam kết giá rẻ và có bảo hành đầy đủ.
Hutech Acoustic Shop là một trong những công ty chuyên kinh doanh nhạc cụ uy tín hàng đầu tại Việt Nam, với trên 20 năm kinh nghiệm chúng tôi đem đến Quý khách hàng những dòng đàn piano cơ (piano acoustic) tốt nhất với những thương hiệu khá nổi tiếng trên thế giới như: đàn piano Steinway & Son, Shigeru Kawai, Boston, Essex, Kawai,... 
Bên cạnh dòng đàn piano cơ, thì chúng tôi còn cung cấp dòng đàn piano điện (Digital piano) với những thương hiệu nổi tiếng như: đàn piano điện Casio, Roland và đặc biệt luôn có những model đàn piano điện giá rẻ dành cho các bạn học sinh và người mới học đàn.</h4>
         <div class="page-header">
        <h3>PIANO</h3>
      </div>
        
         <div class=" animated wow fadeInRight" data-wow-delay=".1s">
                                <c:forEach items="${dsproducttuCategory }" var="producttuCategory">
                                
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="<c:url value = "/single/${producttuCategory.getProduct_id()}/${producttuCategory.getCategory().getCategory_id()}"/>">
											<div class="grid-img">
												<img  src="<c:url value ="/resources/${producttuCategory.getProduct_image_back()}"/>" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="<c:url value ="/resources/${producttuCategory.getProduct_image_forward()}"/>"  alt="" width="132%" height="180" class="img-responsive">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="<c:url value ="/resources/images/ll.png"/>" alt=""></a>
									<h6><a href="<c:url value = "/single/${producttuCategory.getProduct_id()}/${producttuCategory.getCategory().getCategory_id()}"/>">${producttuCategory.getProduct_name()}</a></h6>
									<p><em class="item_price">${producttuCategory.getProduct_price()} VNĐ</em></p>
									<a href="checkout/${producttuCategory.getProduct_id()}" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>
						</div>
				
						</c:forEach>
					<div class="clearfix"></div>
					</div>
                </div>
                                        <div class="container">
                                        
                                        <div class="page-header">
        <h3>ORGAN</h3>
      </div>
        
         <div class="animated wow fadeInRight" data-wow-delay=".1s">
                                <c:forEach items="${dsproducttuCategory1 }" var="producttuCategory1">
                                
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="<c:url value = "/single/${producttuCategory1.getProduct_id()}/${producttuCategory1.getCategory().getCategory_id()}"/>">
											<div class="grid-img">
												<img  src="<c:url value ="/resources/${producttuCategory1.getProduct_image_back()}"/>" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="<c:url value ="/resources/${producttuCategory1.getProduct_image_forward()}"/>"  alt="" width="132%" height="180" class="img-responsive">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="<c:url value ="/resources/images/ll.png"/>" alt=""></a>
									<h6><a href="<c:url value = "/single/${producttuCategory1.getProduct_id()}/${producttuCategory1.getCategory().getCategory_id()}"/>">${producttuCategory1.getProduct_name()}</a></h6>
									<p><em class="item_price">${producttuCategory1.getProduct_price()} VNĐ</em></p>
									<a href="checkout/${producttuCategory1.getProduct_id()}" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>
						</div>
				
						</c:forEach>
					<div class="clearfix"></div>
					</div>
                                        
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
