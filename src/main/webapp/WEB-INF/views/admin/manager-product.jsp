 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lý Sản Phẩm</title>

        <link rel="stylesheet" href='<c:url value="/resources/css/mos-style.css"/>'/>

    </head>
    <body>
        
        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">

                    <h3>QUẢN LÝ SẢN PHẨM</h3>
                    <div class="informasi">
                        Hãy chỉnh sửa dữ liệu cẩn thận nhé ^^
                    </div>



                    <a href="<c:url value="/admin/insert-product"/>">Thêm sản phẩm</a>
                    <table class="data">
                        <tr class="data">
                            <th class="data" width="30px">STT</th>
                            <th class="data">Mã sản phẩm</th>
                            <th class="data">Mã loại</th>
                            <th class="data">Tên sản phẩm</th>
                            <th class="data">Thương hiệu</th>
                            <th class="data">Hình đại diện</th>
                            <th class="data">Hình mặt trước</th>
                            <th class="data">Hình mặt sau</th>
                            <th class="data">Giá</th>
                            <th class="data">Mô tả</th>

                            <th class="data" width="75px">Tùy chọn</th>
                        </tr>
					<c:forEach items="${dsproduct }" var="product" varStatus="iterStat">
                    <tr class="data">
                        <td class="data" width="30px">${iterStat.count }</td>
                        <td class="data" id="masp">${product.getProduct_id() }</td>
                        <td class="data">${product.category.getCategory_id() }</td>
                        <td class="data">${product.getProduct_name() }</td>
                        <td class="data">${product.brand.getBrand_id() }</td>
                        <td class="data"><img class="hinhql" src="<c:url value="/resources/${product.getProduct_image() }"/>"/></td>
                        <td class="data">${product.getProduct_image_back() }</td>
                        <td class="data">${product.getProduct_image_forward() }</td>
                        <td class="data">${product.getProduct_price() }</td>
                        <td class="data"><a href="<c:url value="/admin/product-description/${product.getProduct_id() }"/>">Xem chi tiết</a></td>

                        <td class="data" width="90px">
                    <center>
                        <a href="<c:url value="/admin/update-product/${product.getProduct_id() }"/>">Sửa</a>&nbsp;| &nbsp;
                        <a href="#" class="xoaproduct">Xóa</a>
                    </center>
                    </td>
                    </tr>
                </c:forEach>    
                </table>
            </div>
            <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>
			<jsp:include page="js.jsp"></jsp:include>
        </div>

    </body>
</html>
