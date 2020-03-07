<%-- 
    Document   : products
    Created on : 01-Mar-2017, 11:15:04
    Author     : NguyenDang
--%>

<%@page import="java.text.DecimalFormat"%>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SẢN PHẨM - HUTECH ACOUSTIC SHOP</title>
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
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Sản Phẩm</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="<c:url value = "/"/>">Trang Chủ</a><label>/</label>Sản Phẩm<label>/</label>Nhạc Cụ</h3>
		<div class="clearfix"> </div>
	</div>
</div>
        
        		<div class="product">
			<div class="container">
						<div class="col-md-3 product-bottom">
			<!--categories-->
			<div class="categories animated wow fadeInUp animated" data-wow-delay=".5s" >
					<h3>Loại Sản Phẩm</h3>
					<ul class="cate">
                                           <c:forEach items="${dscategory }" var = "category">
						<li><i class="glyphicon glyphicon-menu-right" ></i><a href="<c:url value = "/products/${category.getCategory_id() }"/>">${category.getCategory_name() }</a></li>	
					 </c:forEach>
                                        </ul>
				</div>
                                         <div class="categories animated wow fadeInUp animated" data-wow-delay=".5s" >
					<h3>Thương Hiệu</h3>
                                        
					<ul class="cate">
                      <c:forEach items="${dsbrand }" var = "brand">
						<li><i class="glyphicon glyphicon-menu-right" ></i><a href="<c:url value = "/productbrand/${brand.getBrand_id() }"/>">${brand.getBrand_name() }</a></li>	
					 </c:forEach>
                                        </ul>
                                       
				</div>
		<!--//menu-->
		<!--price-->
				<div class="price animated wow fadeInUp animated" data-wow-delay=".5s" >
					<h3>Khoảng Giá</h3>
					<div class="price-head">
					<div class="col-md-6 price-head1">
                                        <div class="price-top1">
                                            <span class="price-top">$</span>
                                            <input type="text"  value="0">
                                        </div>
                                    </div>
									<div class="col-md-6 price-head2">
                                        <div class="price-top1">
                                            <span class="price-top">$</span>
                                            <input type="text"  value="500">
                                        </div>
                                    </div>
									<div class="clearfix"></div>
                                    </div>
                                    </div>
			<!--//price-->
			<!--colors-->
			<div class="colors animated wow fadeInLeft animated" data-wow-delay=".5s" >
					<h3>Màu Sắc</h3>

                                        <div class="color-top">
                                            <ul>
												<li><a href="#"><i></i></a></li>
												<li><a href="#"><i class="color1"></i></a></li>
												<li><a href="#"><i class="color2"></i></a></li>
												<li><a href="#"><i class="color3"></i></a></li>
												<li><a href="#"><i class="color4"></i></a></li>
												<li><a href="#"><i class="color5"></i></a></li>
												<li><a href="#"><i class="color6"></i></a></li>
												<li><a href="#"><i class="color7"></i></a></li>
											</ul>
                                        </div>
                                    </div>
									
                                 
			<!--//colors-->
			<div class="sellers animated wow fadeInUp" data-wow-delay=".5s">
					
								<h3 class="best">Bán Chạy Nhất</h3>
					<div class="product-head">
                                            <c:forEach items="${dsproducttuCategoryLimit }" var = "producttuCategoryLimit">
					<div class="product-go">
						<div class=" fashion-grid">
									<a href='<c:url value ="/single/${producttuCategoryLimit.getProduct_id() }" />'><img class="img-responsive " src='<c:url value = "/resources/${producttuCategoryLimit.getProduct_image_forward() }" />' alt=""></a>
									
								</div>
							<div class=" fashion-grid1">
								<h6 class="best2"><a href='<c:url value ="/single/${producttuCategoryLimit.getProduct_id() }" />'>${producttuCategoryLimit.getProduct_name()}</a></h6>
								<span class=" price-in1">${producttuCategoryLimit.getProduct_price() } VNĐ</span>
								<p><a href="#" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a></p>
							</div>
								
							<div class="clearfix"> </div>
							</div>
                                                                </c:forEach>
						
							
							</div>
				</div>
				<!---->
 	</div>
                    
                            
			<div class="col-md-9 animated wow fadeInRight" data-wow-delay=".5s">  

			<div class="mid-popular">
                            
                             <c:forEach items="${dsproducttuCategory }" var="producttuCategory">
				<div class="col-sm-4 item-grid item-gr  simpleCart_shelfItem">
                                    
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href='<c:url value ="/single/${producttuCategory.getProduct_id() }" />'>
											<div class="grid-img">
												<img  src='<c:url value = "/resources/${producttuCategory.getProduct_image_back() }" />' class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src='<c:url value = "/resources/${producttuCategory.getProduct_image_forward() }" />' class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="" alt=""></a>
									<h6><a href='<c:url value ="/single/${producttuCategory.getProduct_id() }" />'>${producttuCategory.getProduct_name()}</a></h6>
                                                                        <p ><em class="item_price">${producttuCategory.getProduct_price() } VNĐ</em></p>
								
                                                                        <a href="#" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>
						</div>

                                    </c:forEach>

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
