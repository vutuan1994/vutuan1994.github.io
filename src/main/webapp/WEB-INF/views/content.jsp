
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        		<div class="content">
		<div class="content-head">
					
					<div class="col-md-6 col-m1 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-1">
						<div class="col-md-6 col-2">
							<a href="<c:url value = "guitar"/>"><img src="<c:url value = "resources/images/pi3.jpg"/>" class="img-responsive" alt="">
							</a></div>
							<div class="col-md-6 col-p">
								<h5>GUITAR SHOP</h5>
								<p>Chúng tôi có rất nhiều những sản phẩm nổi tiếng từ các hãng lớn như Taylor, Fender, Yamaha, Gibson...</p>
								<a href="<c:url value = "guitar"/>" class="shop" data-hover="Xem Ngay">Xem Ngay</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-1">
						<div class="col-md-6 col-p">
								<h5>PIANO SHOP</h5>
								<p>Chúng tôi có rất nhiều những sản phẩm nổi tiếng từ các hãng lớn như Roland, Casio, Yamaha, Samick...</p>
								<a href="<c:url value = "/piano"/>" class="shop" data-hover="Xem Ngay">Xem Ngay</a>
							</div>
						<div class="col-md-6 col-2">
							<a href="<c:url value = "/piano"/>"><img src="<c:url value = "/resources/images/pi.jpg"/>" class="img-responsive" alt="">
							</a></div>
							<div class="clearfix"> </div>
						</div>
						</div>

			<div class="col-md-6 col-m2 animated wow fadeInRight"
				data-wow-delay=".1s"
				id='<link type="text/css" media="all"  href='<c:url value="/resources/css/owl.carousel.css" />''>


				<div id="owl-demo" class="owl-carousel">
				<c:forEach items="${dsproducttuCategory }" var = "producttuCategory">
					<div class="item">

						<a href="<c:url value = "/single/${producttuCategory.getProduct_id() }/${producttuCategory.getCategory().getCategory_id() }"/>">
						<img class="img-responsive" src="<c:url value = "/resources/${producttuCategory.getProduct_image_forward()}" />" alt="" /></a> 
						<a href="<c:url value = "/single/${producttuCategory.getProduct_id() }/${producttuCategory.getCategory().getCategory_id() }"/>" class="shop-2">Xem Ngay</a>

					</div>
				</c:forEach>

				</div>
			</div>
			<div class="clearfix"></div>
			</div>	
					</div>
				
			
	
			
			
			
				<div class="content-top">
					<div class="col-md-5 col-md1 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-3">
							<a href="<c:url value = "guitar"/>"><img src="<c:url value = "/resources/images/pi1.jpg"/>" class="img-responsive " alt="">
							<div class="col-pic">	
								<h5> Guitar - Ukulele</h5>
								<p>Kiểu dáng hiện đại</p>
							</div></a>
						</div>
						
					</div>
					
					<div class="col-md-7 col-md2 animated wow fadeInRight" data-wow-delay=".1s">
                        <c:forEach items="${dsproducttuCategoryLimit }" var="producttuCategoryLimit">
                                
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
						
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="<c:url value = "/single/${producttuCategoryLimit.getProduct_id() }/${producttuCategoryLimit.getCategory().getCategory_id() }"/>">
											<div class="grid-img">
												<img  src="<c:url value = "/resources/${producttuCategoryLimit.getProduct_image_back()}" />" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="<c:url value = "/resources/${producttuCategoryLimit.getProduct_image_forward()}" />"  alt="" width="132%" height="180" class="img-responsive" id="tenanh" data-thumb="${producttuCategoryLimit.getProduct_image_forward()} ">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									
									</a><h6 class="tensp" id="tensp" data-masp="${producttuCategoryLimit.getProduct_id() }"><a href="<c:url value = "/single/${producttuCategoryLimit.getProduct_id() }/${producttuCategoryLimit.getCategory().getCategory_id() }"/>"  >${producttuCategoryLimit.getProduct_name() }</a></h6>
									<p><em class="item_price" id = "giatien" data-value="${producttuCategoryLimit.getProduct_price() }">${producttuCategoryLimit.getProduct_price() }VNĐ</em></p>
									<a href="#" id="soluong" value="1" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
									
								</div>
							</div>
								
						</div>
				
						</c:forEach>
					<div class="clearfix"></div>
					
					</div>
				
				<!----->
				<!---->
				<div class="content-top">
					
					<div class="col-md-7 col-md2 animated wow fadeInLeft" data-wow-delay=".1s">
          			<c:forEach items="${dsproducttuCategoryLimit1 }" var="producttuCategoryLimit1">
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="<c:url value = "/single/${producttuCategoryLimit1.getProduct_id() }/${producttuCategoryLimit1.getCategory().getCategory_id() }"/>">
											<div class="grid-img">
												<img  src="<c:url value = "/resources/${producttuCategoryLimit1.getProduct_image_back()}"/>" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="<c:url value = "/resources/${producttuCategoryLimit1.getProduct_image_forward()}" />" class="img-responsive"  alt="" id="tenanh" data-thumb="${producttuCategoryLimit.getProduct_image_forward()} ">
											</div>			</a>		
									</figure>	
								</div>
								<div class="women">
								
									<h6 id="tensp" data-masp="${producttuCategoryLimit.getProduct_id() }"><a href="<c:url value = "/single/${producttuCategoryLimit1.getProduct_id() }/${producttuCategoryLimit1.getCategory().getCategory_id() }"/>">${producttuCategoryLimit1.getProduct_name() }</a></h6>
									<p ><em class="item_price">${producttuCategoryLimit1. getProduct_price() } VNĐ</em></p>
									<a href="#" id="soluong" value="1" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>	
						</div>				
						</c:forEach>

					<div class="clearfix"></div>
					</div>
					<div class="col-md-5 col-md1 animated wow fadeInRight" data-wow-delay=".1s">
						<div class="col-3">
							<a href="<c:url value = "/piano"/>"><img src="<c:url value = "/resources/images/pi2.jpg"/>" class="img-responsive " alt="">
							<div class="col-pic">
								<h5>Piano - Organ</h5>
								<p>Âm thanh ấn tượng</p>
							</div></a>
						</div>
						
					</div>
					<div class="clearfix"></div>
				</div>
    </body>
</html>
