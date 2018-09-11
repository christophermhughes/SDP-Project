<%-- 
    Document   : CreateSeminar
    Created on : Sep 10, 2018, 2:20:38 PM
    Author     : Ankush Yamarti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="style.css">
   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class ="header">
                <h1>Hello World!</h1>
            </div>

            <div class ="content">
                <form class="form" action="AdminPage.jsp" method="post">
                    First Name<br>
                    <input type="text" name="FirstName"><br>
                    Last Name<br>
                    <input type="text" name="LastName"><br>
                    Phone<br>
                    <input type="text" name="Phone"><br>
                    Email<br>
                    <input type="text" name="Location"><br>
                    Faculty<br>
                    <input type="text" name="Fac"><br>
                    
                    <input type="submit" value="Add organiser">
                </form> 
            </div>
        </div>
    </body>
</html>
