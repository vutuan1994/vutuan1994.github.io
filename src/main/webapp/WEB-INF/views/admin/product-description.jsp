 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Xem Chi Tiết Sản Phẩm</title>
        <link rel="stylesheet" href='<c:url value="/resources/css/mos-style.css"/>'/>
    </head>
    <body>

        
                <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Mô Tả Chi Tiết</h3>
                    <form action="/MusicShop/ManagerProductServlet" method="post">
                    <table width="95%">                  
                         <tr><td width="125px"><b>Tên sản phẩm</b></td>
                             <td><input type="text" class="sedang" name="tenSanPham" value="${product.getProduct_name() }"></td>
                    </tr>                                
                            </td></tr>                   
            <tr><textarea>${product.getProduct_description() }</textarea></tr>
            <a href="<c:url value="/admin/manager-product"/>">Quay Lại Trang Quản Lý Sản Phẩm</a>
                    </table>
                    </form>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>
			<jsp:include page="js.jsp"></jsp:include>
        </div>
    </body>
</html>
