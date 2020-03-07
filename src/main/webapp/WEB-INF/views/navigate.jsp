 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CHUYỂN HƯỚNG - HUTECH ACOUSTIC SHOP</title>
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
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">CHUYỂN HƯỚNG</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="<c:url value = "/"/>">Trang Chủ</a><label>/</label>Điều Hướng</h3>
		<div class="clearfix"> </div>
	</div>
</div>
         <div class="login">
		<div class="container">
         <!--nav-->
       <div class="page-header wow fadeInUp animated" data-wow-delay=".5s">
        <h3></h3>
       
    <!--buttons-->
	<div class="page-header">
        <h3>Bạn Muốn Đi Đến ?</h3>
      </div>
      <p class="grid1">
          <a href="<c:url value = "/"/>"><button type="button" class="btn btn-lg btn-primary"> <i class="glyphicon glyphicon-home" ></i> Trang Chủ</button></a>
          <a href="<c:url value = "/myaccount/${users.getUser_id() }"/>"><button type="button" class="btn btn-lg btn-success"><i class="glyphicon glyphicon-user" ></i> Tài Khoản</button></a>
        
        <a href="<c:url value = "/checkout"/>"><button type="button" class="btn btn-lg btn-warning"><i class="glyphicon glyphicon-shopping-cart" ></i> Giỏ Hàng</button></a>
        <a href="<c:url value="/logout" />"><button type="button" class="btn btn-lg btn-danger" id="log-out"><i class="glyphicon glyphicon-log-out"  ></i> Đăng Xuất</button></a>
        
      </p>
      
      <!--//button-->
      </div>
        <!--//nav-->
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

