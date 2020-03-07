 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>content</title>
    </head>
    <body>

        <div id="rightContent">
            <h3>Trang Quản Lý</h3>
            
            <div class="shortcutHome">
                <a href="/MusicWeb/admin/trangchu"><img src="<c:url value ="/resources/mos-css/Home.png"/>"><br>Trang Chủ</a>
            </div>
            <div class="shortcutHome">
                <a href="/MusicWeb/admin/manager-category"><img src="<c:url value ="/resources/mos-css/Tag.png"/>"><br>Danh Mục</a>
            </div>
            <div class="shortcutHome">
                <a href="/MusicWeb/admin/manager-brand"><img src="<c:url value ="/resources/mos-css/T-Shirt.png"/>"><br>Nhãn Hiệu</a>
            </div>
           
            <div class="shortcutHome">
                <a href="/MusicWeb/admin/manager-product"><img src="<c:url value ="/resources/mos-css/Database.png"/>"><br>Sản Phẩm</a>
            </div>
            <div class="shortcutHome">
                <a href="/MusicWeb/admin/manager-bill"><img src="<c:url value ="/resources/mos-css/Shopping.png"/>"><br>Hóa Đơn</a>
            </div>
            <div class="shortcutHome">
                <a href="/MusicWeb/admin/manager-user"><img src="<c:url value ="/resources/mos-css/User.png"/>"><br>Người Dùng</a>
            </div>
            <div class="shortcutHome">
                <a href="/MusicWeb/admin/manager-contact"><img src="<c:url value ="/resources/mos-css/Mail3.png"/>"><br>Liên Hệ</a>
            </div>
            <div class="shortcutHome">
                <a href="/MusicWeb/admin/manager-chart"><img src="<c:url value ="/resources/mos-css/Chart.png"/>"><br>Thống Kê</a>
            </div>

            <div class="clear"></div>

          
          
        </div>
        <div class="clear"></div>

    </body>
</html>
