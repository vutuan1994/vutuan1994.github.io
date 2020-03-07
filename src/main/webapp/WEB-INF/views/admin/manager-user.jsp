 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lý Danh Mục</title>

        <link rel="stylesheet" href='<c:url value="/resources/css/mos-style.css"/>'/>

    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    
<h3>QUẢN LÝ DANH MỤC</h3>
                    <div class="informasi">
                        Hãy chỉnh sửa dữ liệu cẩn thận nhé ^^
                    </div>

                   
                    
                    
                    <table class="data">
                        <tr class="data">
                            <th class="data" width="30px">STT</th>
                            <th class="data">Mã danh mục</th>
                            <th class="data">Tên danh mục</th>
                            <th class="data">Email</th>
                            <th class="data">Phone</th>
                            
                            
                        </tr>
						
						<c:forEach items="${dsusers }" var="users" varStatus="iterStat">
						
                        <tr class="data">
                            <td class="data" width="30px">${iterStat.count }</td>
                            <td class="data">${users.getUser_id() }</td>
                            <td class="data">${users.getUser_name() }</td>
                            <td class="data">${users.getUser_email() }</td>
                            <td class="data">${users.getUser_pass() }</td>
                            
                            
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
