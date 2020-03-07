<%-- 
    Document   : banner
    Created on : 28-Feb-2017, 22:43:22
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
        <title>banner</title>
    </head>
    <body>

            
        	<div class="banner">
	
	
	<div class="banner-right">
            
					<ul id="flexiselDemo2">
						<c:forEach items="${dsproductMoiNhat }" var = "productMoiNhat">
						<li><div class="banner-grid">
						<h2>Sản Phẩm Mới Nhất</h2>
						<div class="wome">
								<a href="<c:url value = "/single/${productMoiNhat.getProduct_id() }/${productMoiNhat.getCategory().getCategory_id() }"/>" ><img class="img-responsive" src="<c:url value = "resources/${productMoiNhat.getProduct_image_forward() }" />" alt="" />
								</a>
								<div class="women simpleCart_shelfItem">
									<a href="#"><img src="<c:url value = "/resources/images/ll.png"/>" alt=""></a>
									<h6 class="tensp" id="tensp" data-masp="${productMoiNhat.getProduct_id() }"><a href="<c:url value = "/single/${productMoiNhat.getProduct_id() }/${productMoiNhat.getCategory().getCategory_id() }"/>">${productMoiNhat.getProduct_name() }</a></h6>
									<p class="ba-price"><em class="item_price" id = "giatien" data-value="${productMoiNhat.getProduct_price() }">${productMoiNhat.getProduct_price() } VNĐ</em></p>
									<a href="#" id="soluong" value="1" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>							
								</div>							
							</div></li>
						
							</c:forEach>
                                                       
						
						
					
					</ul>
                                                               

	
		

					</div>

				  
				</div>
                                                              

	</div>
    </body>
</html>
