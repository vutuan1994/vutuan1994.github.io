 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cập nhật danh mục</title>

        <link rel="stylesheet" href='<c:url value="/resources/css/mos-style.css"/>'/>

    </head>
    <body>
        
       

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Cập nhật danh mục</h3>
                    
                    <table width="95%">
                        <tr>
                            <td style="float: right"><b>Tên danh mục:</b></td>
                            <td><input type="text" id="category_name" class="sedang" name="category_name" value="${category.getCategory_name() }"></td>
                        </tr>
                        <tr>
                            <td style="float: right"><b>Mã danh mục:</b></td>
                            <td><input type="text" id="category_id" class="sedang" name="category_id" value="${category.getCategory_id() } " disabled></td>
                        </tr>
                        <tr><td></td><td>
                                <input type="hidden"  value="update">
                                <input type="hidden"  value="">
                                <input type="submit" id="updatecategory" class="button" value="Lưu dữ liệu">
                            </td>
                        </tr>
                    </table>
                    
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>
			<jsp:include page="js.jsp"></jsp:include>
        </div>


    </body>
</html>
