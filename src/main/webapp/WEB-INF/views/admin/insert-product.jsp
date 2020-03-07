 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm sản phẩm</title>

        <link rel="stylesheet" href='<c:url value="/resources/css/mos-style.css"/>'/>

    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>THÊM SẢN PHẨM MỚI</h3>

                    <div class="informasi">
                        Hãy chỉnh sửa dữ liệu cẩn thận nhé ^^
                    </div>
                    <form id="form-themproduct" enctype="multipart/form-data">
                
                    <table width="95%"> <tr>
                           
                        </tr>
                        <tr><td width="125px"><b></b></td><td><input type="hidden" class="sedang" ></td></tr> 
                    
                        <tr><td><b>Tên danh mục</b></td><td>
                                <div>
                                <span></span>
                                
                                
                                
                                <select name="category">
 								<c:forEach items="${dscategory }" var="category">
                                        <option value="${category.getCategory_id() }">${category.getCategory_name() }</option>
                                </c:forEach>        
                                </select>
                                
                                
				</div>
                                <input type="hidden" class="sedang" name=""></td></tr>
                        <tr><td width="125px"><b>Tên sản phẩm</b></td><td><input type="text" class="sedang" name="product_name"></td></tr>
                        <tr><td><b>Tên thương hiệu</b></td><td>
                                <div>
                                <span></span>
                                
                               
                                
                                <select name="brand">
								 <c:forEach items="${dsbrand }" var="brand">
                                       <option value="${brand.getBrand_id() }">${brand.getBrand_name() }</option> 
                                 </c:forEach>
                                </select>
                                
                                
				</div>
                                <input type="hidden" class="sedang" name=""></td></tr>
                        <tr><td><b>Hình đại diện</b></td><td><input type="file" placeholder="images/tênhình.jpg" id="hinhanh" class="sedang" name="product_image"></td><</tr>
                        <tr><td><b>Hình mặt trước</b></td><td><input type="file" placeholder="images/tênhình.jpg" id="hinhanh1" class="sedang" name="product_image_forward"></td></tr>
                        <tr><td><b>Hình mặt sau</b></td><td><input type="file" placeholder="images/tênhình.jpg" id="hinhanh2" class="sedang" name="product_image_back"></td></tr>       
                        <tr><td><b>Giá sản phẩm</b></td><td><input type="text" class="sedang" name="product_price"><b> VNĐ</b></td></tr>
                       
                        <tr><td><b>Mô tả chi tiết</b></td><td><textarea type="text"  placeholder="" name="product_description"></textarea></td></tr>
                        <tr><td></td><td>
                                       
                                <input type="submit" id="themproduct" class="button" value="Thêm sản phẩm">
                                <input type="reset" class="button" value="Phục hồi">
                                
                            </td></tr>
                    </table>
                </form>
    
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>
			<jsp:include page="js.jsp"></jsp:include>
        </div>


    </body>
</html>
