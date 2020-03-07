<%-- 
    Document   : thankyou
    Created on : 02-Mar-2017, 22:35:11
    Author     : NguyenDang
--%>

 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GUITAR SHOP - HUTECH ACOUSTIC SHOP</title>
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
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">GUITAR SHOP</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="<c:url value ="/"/>">Trang Chủ</a><label>/</label>Guitar Shop</h3>
		<div class="clearfix"> </div>
	</div>
</div>
         <div class="login">
		<div class="container">
                    <h4 align="justify"> Chúng tôi cung cấp đầy đủ và đa dạng các sản phẩm đàn guitar, từ đàn guitar acoustic đến dòng  guitar electric, guitar bass, guitar amplifier và phụ kiện. Các thương hiệu hàng đầu thế giới được phân phối như Taylor, Fender (những thương hiệu số một tại Mỹ), hay các thương hiệu nổi tiếng Châu Á như Greg Bennett (Hàn Quốc), Takamine và Suzuki (Japan),... với chất lượng và âm thanh cao cấp.
                        Với nhiều bạn trẻ ngày nay rất thích chơi đàn guitar nhất là các bạn sinh viên thì cây đàn guitar là một vật thân thiết. Sau đây là nhiều mẫu đàn guitar với giá cả khác nhau của các thương hiệu nổi tiếng.</h4>
         <div class="page-header">
         
         
               <form class="form-inline"  method="get">
  

        <h3>GUITAR ACOUSTIC</h3>
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
												<img  src="<c:url value ="/resources/${producttuCategory.getProduct_image_forward()}"/>"  alt="" width="132%" height="180" class="img-responsive" id="tenanh" data-anh="${producttuCategory.getProduct_image_forward()} ">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="<c:url value ="/resources/images/ll.png"/>" alt=""></a>
									<h6><a href="<c:url value = "/single/${producttuCategory.getProduct_id()}/${producttuCategory.getCategory().getCategory_id()}"/>" id="tensp" data-masp="${producttuCategory.getProduct_id() }">${producttuCategory.getProduct_name()}</a></h6>
									<p><em class="item_price" id = "giatien">${producttuCategory.getProduct_price()} VNĐ</em></p>
									<a href="#" id="soluong" value="1" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>
						</div>
				
						</c:forEach>
					<div class="clearfix"></div>
					</div>
                </div>
                                        <div class="container">
                                        
                                        <div class="page-header">
        <h3>GUITAR BASS</h3>
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
												<img  src="<c:url value ="/resources/${producttuCategory1.getProduct_image_forward()}"/>"  alt="" width="132%" height="180" class="img-responsive" id="tenanh" data-anh="${producttuCategory1.getProduct_image_forward()} ">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="<c:url value ="/resources/images/ll.png"/>" alt=""></a>
									<h6><a href="<c:url value = "/single/${producttuCategory1.getProduct_id()}/${producttuCategory1.getCategory().getCategory_id()}"/>" id="tensp" data-masp="${producttuCategory1.getProduct_id() }">${producttuCategory1.getProduct_name()}</a></h6>
									<p><em class="item_price" id = "giatien">${producttuCategory1.getProduct_price()} VNĐ</em></p>
									<a href="checkout/${producttuCategory1.getProduct_id()}" id="soluong" value="1" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>
						</div>
				
						</c:forEach>
					<div class="clearfix"></div>
					</div>
                                        
                </div>
                                        <div class="container">
                                        
                                        <div class="page-header">
        <h3>GUITAR CLASSIC</h3>
      </div>
        
         <div class="animated wow fadeInRight" data-wow-delay=".1s">
                               <c:forEach items="${dsproducttuCategory2 }" var="producttuCategory2">
                                
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="<c:url value = "/single/${producttuCategory2.getProduct_id()}/${producttuCategory2.getCategory().getCategory_id()}"/>">
											<div class="grid-img">
												<img  src="<c:url value ="/resources/${producttuCategory2.getProduct_image_back()}"/>" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="<c:url value ="/resources/${producttuCategory2.getProduct_image_forward()}"/>"  alt="" width="132%" height="180" class="img-responsive" id="tenanh" data-anh="${producttuCategory2.getProduct_image_forward()} ">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="<c:url value ="/resources/images/ll.png"/>" alt=""></a>
									<h6><a href="<c:url value = "/single/${producttuCategory2.getProduct_id()}/${producttuCategory2.getCategory().getCategory_id()}"/>" id="tensp" data-masp="${producttuCategory2.getProduct_id() }">${producttuCategory2.getProduct_name()}</a></h6>
									<p><em class="item_price" id = "giatien">${producttuCategory2.getProduct_price()} VNĐ</em></p>
									<a href="checkout/${producttuCategory2.getProduct_id()}" id="soluong" value="1" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>
						</div>
				
						</c:forEach>
					<div class="clearfix"></div>
					</div>
                                        
                </div>
                                        <div class="container">
                                        
                                        <div class="page-header">
        <h3>GUITAR ELECTRIC</h3>
      </div>
        
         <div class="animated wow fadeInRight" data-wow-delay=".1s">
                                <c:forEach items="${dsproducttuCategory3 }" var="producttuCategory3">
                                
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="<c:url value = "/single/${producttuCategory3.getProduct_id()}/${producttuCategory3.getCategory().getCategory_id()}"/>">
											<div class="grid-img">
												<img  src="<c:url value ="/resources/${producttuCategory3.getProduct_image_back()}"/>" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="<c:url value ="/resources/${producttuCategory3.getProduct_image_forward()}"/>"  alt="" width="132%" height="180" class="img-responsive" id="tenanh" data-anh="${producttuCategory3.getProduct_image_forward()} ">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="<c:url value ="/resources/images/ll.png"/>" alt=""></a>
									<h6><a href="<c:url value = "/single/${producttuCategory3.getProduct_id()}/${producttuCategory3.getCategory().getCategory_id()}"/>" id="tensp" data-masp="${producttuCategory3.getProduct_id() }">${producttuCategory3.getProduct_name()}</a></h6>
									<p><em class="item_price" id = "giatien">${producttuCategory3.getProduct_price()} VNĐ</em></p>
									<a href="checkout/${producttuCategory3.getProduct_id()}" id="soluong" value="1" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>
						</div>
				
						</c:forEach>
					<div class="clearfix"></div>
					</div>
                                        <div class="container">
                                            <br>
                                            <h4 align="justify"> Đàn Ukelele một nhạc cụ đang được các bạn trẻ rất yêu thích vì hình dáng nhỏ gọn, và mang lại những âm thanh vui tươi. Việt Thương cung cấp cho khách hàng những sản phẩm Ukelele chất lượng cao đến từ các thương hiệu nổi tiếng hàng đầu thế giới với âm thanh hay như: Ukulele Fender, Greg Bennett, Deviser,...
Đàn ukulele phần lớn là dành cho các bé mới tập và dành cho những bạn đam mê cây đàn nhỏ xinh này. Nằm trong dòng họ của đàn guitar cho nên đàn ukulele có cấu tạo tương tự và âm thanh cũng đơn giản hơn đàn guitar. Chính vì thế mà đàn ukulele cũng có giá rẻ hơn nhiều so với guitar. </h4>
                                        <div class="page-header">
        <h3>UKULELE</h3>
      </div>
        
         <div class="animated wow fadeInRight" data-wow-delay=".1s">
                                <c:forEach items="${dsproducttuCategory4 }" var="producttuCategory4">
                                
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="<c:url value = "/single/${producttuCategory4.getProduct_id()}/${producttuCategory4.getCategory().getCategory_id()}"/>">
											<div class="grid-img">
												<img  src="<c:url value ="/resources/${producttuCategory4.getProduct_image_back()}"/>" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="<c:url value ="/resources/${producttuCategory4.getProduct_image_forward()}"/>"  alt="" width="132%" height="180" class="img-responsive" id="tenanh" data-anh="${producttuCategory4.getProduct_image_forward()} ">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="<c:url value ="/resources/images/ll.png"/>" alt=""></a>
									<h6><a href="<c:url value = "/single/${producttuCategory4.getProduct_id()}/${producttuCategory3.getCategory().getCategory_id()}"/>" id="tensp" data-masp="${producttuCategory4.getProduct_id() }">${producttuCategory4.getProduct_name()}</a></h6>
									<p><em class="item_price" id = "giatien">${producttuCategory4.getProduct_price()} VNĐ</em></p>
									<a href="checkout/${producttuCategory4.getProduct_id()}" id="soluong" value="1" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>
						</div>
				
						</c:forEach>
					<div class="clearfix"></div>
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
