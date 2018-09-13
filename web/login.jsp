<%-- 
    Document   : login
    Created on : Aug 23, 2018, 4:37:54 PM
    Author     : Ankush Yamarti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="style.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <div class="header">
            <h1>Login</h1>
        </div>
        <div class="content">
            <form class="loginForm" action="MainOrganiser.jsp" >
                <div class=buttonHolder>
                    <input type="text" name="ID" placeholder="Username"><br>
                    <br>
                    <input type="password" name="password" placeholder="Password"><br>
                    <br>
                    <input type="submit" value="Login">
                </div>
            </form>
        </div>
    </body>
</html>
