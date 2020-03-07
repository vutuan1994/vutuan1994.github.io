

 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
    </head>
    <body>
        

        	<div class="header">
			<div class="header-grid">
					<div class="container">
				<div class="header-left animated wow fadeInLeft" data-wow-delay=".5s">
					<ul>
					<li><i class="glyphicon glyphicon-headphones"></i><a href="#">Hỗ trợ 24/7</a></li>
						<li><i class="glyphicon glyphicon-envelope" ></i><a href="mailto:contact@hutechguitarshop.com">@hutechguitarshop.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" ></i>+8493 552 6224</li>
						
					</ul>
				</div>
				<div class="header-right animated wow fadeInRight" data-wow-delay=".5s">
				<div class="header-right1 ">
					<ul>
					
						<c:choose>
                        	 <c:when test="${users != null }">
                         			<li><i class="glyphicon glyphicon-user" id="user" data-mauser="${users.getUser_id() }"></i><a href="<c:url value = "/navigate"/>">Chào ${ users.getUser_name()}</a></li>
                        	 </c:when>  
                        	 
                        	 <c:when test="${users == null }">
                         			<li><i class="glyphicon glyphicon-log-in" ></i><a href="<c:url value = "/login"/>">login</a></li>
                        	 </c:when>                   
						</c:choose>
						
						
                                                
		
						
						
                                                
					</ul>
				</div>
				<div class="header-right2">
                                    
					<div class="cart box_1">

                                                
                        <a href="<c:url value="/checkout/"/>">Giỏ Hàng - <span class="cart-amunt tongtien" >0</span> VNĐ<i class="fa fa-shopping-cart"></i>
                        	<c:if test="${soluongsanphamgiohang > 0 }">
 
                        		<div  class="last_price " id="soluonggiohang"><span>${soluongsanphamgiohang }</span></div>
                        	</c:if>
                        	<c:if test="${soluongsanphamgiohang <= 0 || soluongsanphamgiohang == null}">
                        		<a href="javascript:;" class="simpleCart_empty">Làm trống giỏ</a>
                        	</c:if>
                        </a>
						<div class="clearfix"> </div>
					</div>	
                                       
				</div>
				<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
			</div>
			<div class="container">
			<div class="logo-nav">
				
					<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						 <div class="navbar-brand logo-nav-left ">
							<h1 class="animated wow pulse" data-wow-delay=".5s"><a href="<c:url value = "/"/>">HUTECH<span> ACOUSTIC SHOP</span></a></h1>
						</div>

					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav">
							<li class="active"><a href="<c:url value = "/"/>" class="act">Trang Chủ</a></li>	
							<!-- Mega Menu -->
<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Nhạc Cụ <b class="caret"></b></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h4>HUTECH MUSIC SHOP</h4>
												
                                               <c:forEach items="${dscategory }" var="category">  
                                                     
												<li><a href="<c:url value = "/products/${ category.getCategory_id()}"/>">${category.getCategory_name() }</a></li>
				
                                      			</c:forEach> 


											</ul>
										</div>
										
										<div class="clearfix"></div>
									</div>
									<div class="row-top">
										<div class="col-sm-6 row1">
											<a href="<c:url value = "/guitar"/>"><img src="<c:url value="/resources/images/me.jpg"/>" alt="" class="img-responsive"></a>
										</div>
										<div class=" col-sm-6 row2">
											<a href="<c:url value = "/piano"/>">
											<img src="<c:url value ="/resources/images/taylor.jpg" />" alt=""class="img-responsive"></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
						<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Thương Hiệu <b class="caret"></b></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h4>THƯƠNG HIỆU</h4>
												<c:forEach items="${dsbrand }" var="brand">
                                                                                          
												<li><a href="<c:url value = "/productbrand/${ brand.getBrand_id()}"/>">${ brand.getBrand_name()}</a></li>
				
										
                                                 </c:forEach>                


											</ul>
										</div>
										
										<div class="clearfix"></div>
									</div>
									<div class="row-top">
										<div class="col-sm-6 row1">
											<a href="<c:url value = "/productbrand/1"/>"><img src="<c:url value="/resources/images/taylor.jpg"/>" alt="" class="img-responsive"></a>
										</div>
										<div class=" col-sm-6 row2">
											<a href="<c:url value = "/productbrand/8"/>"><img src="<c:url value="/resources/images/kawai.jpg"/>" alt="" class="img-responsive"></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>	
						
							<li><a href="<c:url value = "/navigate"/>">Tài Khoản</a></li>
							<li><a href="<c:url value = "/contact"/>">Liên Hệ</a></li>
						</ul>
					</div>
					</nav>
				</div>
				
				
			<form action="search" method="get">
				<input class="form-control mr-sm-2" type="search" id="tensanpham" name="product_name" placeholder="Search by name ..." />
				<button class="btn btn-primary" id="timkiem" type="submit">
					<i class="fa fa-search"></i> Search
				</button>
			</form>
			
			
		</div>
	</div>
    </body>
</html>
