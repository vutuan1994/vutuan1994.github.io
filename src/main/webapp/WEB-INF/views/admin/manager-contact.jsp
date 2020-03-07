 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lý Liên Hệ</title>

        <link rel="stylesheet" href='<c:url value="/resources/css/mos-style.css"/>'/>

    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    
<h3>QUẢN LÝ LIÊN HỆ</h3>
                    <div class="informasi">
                        Hãy chỉnh sửa dữ liệu cẩn thận nhé ^^
                    </div>

                   
                    
                    
                    <table class="data">
                        <tr class="data">
                            <th class="data" width="30px">STT</th>
                            <th class="data">Mã liên hệ</th>
                            <th class="data">Họ tên</th>
                            <th class="data">Website</th>
                            <th class="data">Email</th>
                            <th class="data">Tiêu đề</th>
                            <th class="data">Lời nhắn</th>
                            <th class="data">Thời gian</th>
                            
                            
                        </tr>
						
						<c:forEach items="${dsContact }" var="contact" varStatus="iterStat">
                        <tr class="data">
                            <td class="data" width="30px">${iterStat.count }</td>
                            <td class="data">${contact.getContact_id() }</td>
                            <td class="data">${contact.getContact_name() }</td>
                            <td class="data">${contact.getContact_web() }</td>
                            <td class="data">${contact.getContact_email() }</td>
                            <td class="data">${contact.getContact_title() }</td>
                            <td class="data">${contact.getContact_message() }</td>
                            <td class="data">${contact.getContact_date() }</td>
                            
                            
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
