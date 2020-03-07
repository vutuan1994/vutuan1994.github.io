 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý hóa đơn</title>

        <link rel="stylesheet" href='<c:url value="/resources/css/mos-style.css"/>'/>

    </head>
    <body>
        


        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Quản lý hóa đơn</h3>

                    <table class="data">
                        <tr class="data">
                            <th class="data" width="30px">Mã hóa đơn</th>
                            <th class="data">Khách hàng</th>
                            <th class="data">Tổng hóa đơn</th>
                            <th class="data">Thanh toán</th>
                            <th class="data">Địa chỉ giao hàng</th>
                            <th class="data">Ngày mua</th>
                            <th class="data" width="75px">Tùy chọn</th>
                        </tr>
                        
           
                                  <c:forEach items="${dsBill }" var="bill" >
                        <tr class="data">
                            <td class="data" width="30px">${bill.getBill_id() }</td>
                            <td class="data">${bill.getUser_id() }</td>
                            <td class="data">${bill.getTotal() }</td>
                            <td class="data">${bill.getPayment() }</td>
                            <td class="data">${bill.getAddress() }</td>
                            <td class="data">${bill.getDate() }</td>
                            <td class="data" width="75px">
                                <center>
                                    <a href="#">Xác nhận </a>&nbsp;&nbsp; | &nbsp;&nbsp;
                                    <a href="#">Hủy</a>
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