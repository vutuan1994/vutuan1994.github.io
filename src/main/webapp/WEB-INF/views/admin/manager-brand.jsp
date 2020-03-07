 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lý Thương Hiệu</title>

        <link rel="stylesheet" href='<c:url value="/resources/css/mos-style.css"/>'/>

    </head>
    <body>
        
        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    
<h3>QUẢN LÝ THƯƠNG HIỆU</h3>
                    <div class="informasi">
                        Hãy chỉnh sửa dữ liệu cẩn thận nhé ^^
                    </div>

                   
                    
                    <a href="<c:url value = "/admin/insert-brand"/>">Thêm thương hiệu</a>
                    <table class="data" id="table-brand">
                        <tr class="data">
                            <th class="data" width="30px">STT</th>
                            <th class="data">Mã thương hiệu</th>
                            <th class="data">Tên thương hiệu</th>
                            
                            <th class="data" width="75px">Tùy chọn</th>
                        </tr>
                        
                        <tbody>
                        
                        <c:forEach items="${dsbrand }" var="brand" varStatus="iterStat"> 
                        <tr class="data" >

                            <td class="data" width="30px">${iterStat.count} </td>

                           
                            <td class="data" id="brand_id">${brand.getBrand_id() }</td>
                            <td class="data">${brand.getBrand_name() }</td>
                            
                            <td class="data" width="90px">
                        <center>
                            <a href="<c:url value = "/admin/update-brand/${brand.getBrand_id() }"/>">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
                                <a href="#" class="xoabrand">Xóa</a>
                        </center>
                        </td>
                        </tr>
                        </c:forEach>
                        
                        </tbody>
                        
                    </table>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>
			<jsp:include page="js.jsp"></jsp:include>
        </div>

    </body>
</html>