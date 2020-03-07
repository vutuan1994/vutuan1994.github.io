 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Nhập</title>

    
    <link rel="stylesheet" href='<c:url value="/resources/css/mos-style.css"/>'/>

</head>
<body>

    <div id="header">
        <div class="inHeaderLogin"></div>
    </div>

    <div id="loginForm">
        <div class="headLoginForm">
            Đăng nhập Admin
        </div>
        <div class="fieldLogin">
            
                
                   
                        
                <label>Tài khoản</label><br>
                <input type="text" id="emailadmin" class="login emailadmin" name="user_ad_email"><br>
                <label>Mật khẩu</label><br>
                <input type="password" id="passadmin" class="login passadmin" name="user_ad_pass"><br>
                <input type="hidden" value="login" name="commandadmin">
                <input type="submit" id="dangnhapadmin" class="button dangnhapadmin" value="Đăng Nhập">
            
        </div>
    </div>
<jsp:include page="js.jsp"></jsp:include>
</body>
</html>
