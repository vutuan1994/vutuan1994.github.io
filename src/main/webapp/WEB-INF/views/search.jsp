
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
   
        
         <div class=" animated wow fadeInRight" data-wow-delay=".1s">
                                
                           <c:forEach items="${timkiemproduct}" var="timkiem">  
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="">
											<div class="grid-img">
												<img  src="<c:url value ="/resources/${timkiem.getProduct_image_back()}"/>" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="<c:url value ="/resources/${timkiem.getProduct_image_forward()}"/>"  alt="" width="132%" height="180" class="img-responsive">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="<c:url value ="/resources/images/ll.png"/>" alt="">${timkiem.getProduct_name()}</a>
									<h6><a href=""></a></h6>
									<p><em class="item_price"> ${timkiem.getProduct_price()} VNĐ</em></p>
									<a href="checkout/${timkiem.getProduct_id()}" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>
						</div>
				</c:forEach>
						<span>${ketqua}</span>
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
