

 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ĐĂNG NHẬP - HUTECH ACOUSTIC SHOP</title>
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

<div class="wrap-intro">
      <div class="container">
         <div class="row">
            <div class="app-signup app-form app-form-login col-lg-12 col-xs-12 col-md-12 col-sm-12">
                <div class="col-md-5 col-sm-5 img-signup">
                    <img class="img-responsive" src="<c:url value="/resources/img/shipper-logo.png"/>">
                </div>
               <div class="col-md-7 col-sm-7">
                  <form id="frm-login" method="POST" action="#">
                     <div class="col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 no-padding">
                        <h2>Quên mật khẩu?</h2>
                     </div>
                     <div class="form-group">
                        <div class="col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 no-padding">
                           <input type="text" name="email" id="email" class="form-control" value=""  placeholder='Nhập Email'>
                           <span class="help-block"></span>
                        </div>
                        <div style="margin-bottom: 10px;margin-top: 10px;" class="g-recaptcha col-sm-10 col-sm-offset-1 col-md-10 no-padding col-md-offset-1" data-sitekey="6LfwEQcTAAAAAH6yVhgkQ5Ir4KZRdv3iJ4my27Bt"></div>
                        <div class="col-sm-10 col-sm-offset-1 col-md-10 no-padding col-md-offset-1"></div>
                        <span class="col-lg-12 col-md-12 col-sm-12 col-xs-12 help-block"></span>
                        <div class="form-group">
                           <div class="col-sm-10 col-sm-offset-1 col-md-10 no-padding col-md-offset-1">
                              <button type="submit" name="forgotPassword" value="forgotPassword" class="btn btn-create col-sm-12 col-md-12 col-xs-12 btn-lg">
                              <i class="icon_edit"></i>Đặt lại mật khẩu</button>
                           </div>
                        </div>
                  </form>
                  </div>
               </div>
               <!-- app-form-login -->
            </div>
         </div>
         <!-- /.container -->
      </div>
      <!-- wrap intro -->

      
         <jsp:include page="footer.jsp"></jsp:include>
        <jsp:include page="js.jsp"></jsp:include>
            </body>
</html>
        