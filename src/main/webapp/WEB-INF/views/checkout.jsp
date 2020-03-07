 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HUTECH ACOUSTIC SHOP - GIỎ HÀNG</title>
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
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Thanh toán</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index.html">Trang Chủ</a><label>/</label>Thanh Toán</h3>
		<div class="clearfix"> </div>
	</div>
</div>
        		<div class="check-out">	 
		<div class="container">	 
	 
					
  <form id="checkout">                         
 <table class="table animated wow fadeInLeft" id="t1" data-wow-delay=".5s">
		  <tr>
                      <th class="t-head">Hình ảnh</th>
			<th class="t-head ">Mặt Hàng</th>
			<th class="t-head">Giá</th>
			<th class="t-head">Số Lượng</th>
                        <th class="t-head"></th>
		
		  </tr>
		
	
		
		
          <c:forEach items="${giohang }" var="value">  
           
		  <tr class="cross1">
			<td class="t-data maproduct" name="product_id" id="tensp" value="${value.getProduct_id() }">
				<a href="<c:url value ="/single/${value.getProduct_id() }"/>" class="at-in">
                                  <img src="<c:url value ="/resources/${value.getProduct_image_forward() }"/>" class="fashion-grid" alt=""> 
                                 
				</a>
                            </td>
                        <td class="t-data">
			
				<h3>${value.getProduct_name() }</h3>
			 </td>
			<td class="t-data giatien" name="product_price" data-value="${value.getProduct_price() }">${value.getProduct_price() } VNĐ</td>
			<td class="t-data"><div class="quantity"> 
								<div class="quantity-select">            
									<div class="entry value-minus">&nbsp;</div>
										<div class="entry value"><span class="span-1 soluong" name="soluong">${value.getSoluong() }</span></div>									
										
									<div class="entry value-plus active">&nbsp;</div>
								</div>
                                                                                
								</div>
                        	 		
			
			</td>
                        
                        <td class="t-data xoasp"><a href="#"><img src="<c:url value ="/resources/images/circle.png"/>" class="img-responsive " alt=""></a></td>
			
		  </tr>
		 
		 </c:forEach>
		 
	</table>
	</form>
				<div class=" cart-total">
			
			 <h5 class="continue" >Tổng Cộng Giỏ Hàng</h5>
			 <div class="price-details">
				 <h3>Chi Tiết Giá</h3>
				 <span>Tổng Cộng</span>
				 <span class="total1"></span>
				 <span>Giảm giá</span>
				 <span class="total1">---</span>
				 <span>Phí vận chuyển</span>
				 <span class="total1"></span>
				 <div class="clearfix"></div>				 
			 </div>	
			 <ul class="total_price">
			   <li class="last_price"> <h4>Tổng Cộng</h4></li>	
			   <li class="last_price " ><span class="tongtien" tongtiensp="" id="tongtien" name="quatity"> 0</span> VNĐ</li>
			   <div class="clearfix"> </div>
			 </ul>
			
			 <a href="<c:url value ="/checkoutstep"/>" id="thanhtoan1" >Thanh Toán</a>
			 
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

<jsp:include page="footer.jsp"/>


