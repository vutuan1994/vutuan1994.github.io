 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm Thương Hiệu</title>

        <link rel="stylesheet" href='<c:url value="/resources/css/mos-style.css"/>'/>

    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Thông tin danh mục</h3>

                    <div class="informasi">
                        Hãy chỉnh sửa dữ liệu cẩn thận nhé ^^
                    </div>

                   
                    <div class="sukses">
                        Cập nhật danh mục mới sẽ làm phong phú sản phẩm
                    </div>
                    <form action="" id="form-brand"method="GET">
                 
                    <table width="95%">
                         <tr>
                            <td style="float: right"><b>Mã thương hiệu</b></td>
                            <td><input type="hidden" class="sedang" name="brand_id"></td>
                        </tr>
                        <tr>
                            <td style="float: right"><b>Tên thương hiệu</b></td>
                            <td><input type="text" class="sedang brand_name" name="brand_name"></td>
                        </tr>
                        <tr><td></td><td>
                                <input type="hidden"  value="insert">        
                                <input type="submit" class="button" id="insertbrand" value="Lưu dữ liệu">
                                
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

