<%-- 
    Document   : logout.jsp
    Created on : 20/09/2018, 7:06:17 PM
    Author     : brand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            session.invalidate(); 
            response.sendRedirect("login.jsp");
        %>

    </body>
</html>
