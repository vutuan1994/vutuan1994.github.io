 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cập nhật sản phẩm</title>

        <link rel="stylesheet" href='<c:url value="/resources/css/mos-style.css"/>'/>

    </head>
    <body>


        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent" >
                    <h3>Cập nhật sản phẩm</h3>
                    <form  id="form-product" method="POST" >
                    <table width="95%">
                         <tr><td width="125px"><b>Mã sản phẩm</b></td>
                             <td><input type="text" class="sedang" name="product_id" value="${product.getProduct_id() }"></td>
                    </tr>
                         <tr><td width="125px"><b>Tên sản phẩm</b></td>
                             <td><input type="text" class="sedang" name="product_name" value="${product.getProduct_name() }"></td>
                    </tr>
                        <tr><td><b>Loại</b></td><td>
                        
                        <select id="category" name="category" class="form-control" >
							<c:forEach items="${dscategory }" var="category">
								<option value="${category.getCategory_id() }">${category.getCategory_name() }</option>
							</c:forEach>	
						</select>
                        

                                
                            </td></tr>
                        
                        <tr><td><b>Thương hiệu</b></td><td>			
                        <select id="brand" name="brand" class="form-control" >
							<c:forEach items="${dsbrand }" var="brand">
								<option value="${brand.getBrand_id() }">${brand.getBrand_name() }</option>
							</c:forEach>	
						</select>
                        
                        <tr><td><b>Hình đại diện</b></td><td><input type="text" class="sedang" id="tenhinh" name="product_image" value="${product.getProduct_image() }"></td></tr>
                        <tr><td><b>Hình mặt trước</b></td><td><input type="text" class="sedang" id="tenhinh1" name="product_image_forward" value="${product.getProduct_image_forward() }"></td></tr>
                        <tr><td><b>Hình mặt sau</b></td><td><input type="text" class="sedang" id="tenhinh2" name="product_image_back" value="${product.getProduct_image_back() }"></td></tr>
                        
                        
                        <tr><td><b>Giá sản phẩm</b></td><td><input type="text" class="sedang" name="product_price" value="${product.getProduct_price() }"><b> VNĐ</b></td></tr>
                          
                        
                        <tr><td><b>Mô tả chi tiết</b></td><td><input type="text" class="textarea" name="product_description" value="${product.getProduct_description() }"></td></tr>
                        
                        
                       
                        <tr><td></td><td>
                                <input type="hidden"  value="update">
                                <input type="hidden"  value="${product.getProduct_id() }">
                                <input type="submit" id="updateproduct" class="button" value="Lưu dữ liệu">
                            </td>
                        </tr>
                       
                    </table>
                    </form>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>
			<jsp:include page="js.jsp"></jsp:include>
        </div>


    </body>
</html>
