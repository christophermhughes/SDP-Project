<%-- 
    Document   : CreateSeminar
    Created on : Sep 10, 2018, 2:20:38 PM
    Author     : Ankush Yamarti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="style.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class ="header">
                <h1>Hello World!</h1>
            </div>

            <div class ="content">
                <form class="form" action="MainOrganiser.jsp" method="post">
                    <input type="text" name="SemName"><br>
                    <input type="text" name="Time"><br>
                    <input type="text" name="Date"><br>
                    <input type="text" name="Location"><br>
                    <input type="text" name="Descp"><br>
                    <input type="text" name="StaffName"><br>
                    <br>
                    <input type="submit" value="Create Seminar">
                </form> 
            </div>
        </div>
    </body>
</html>
