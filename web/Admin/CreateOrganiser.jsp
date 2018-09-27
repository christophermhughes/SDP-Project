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
                <form class="form" action="CreateOrganiserAction.jsp" method="post">
                    First Name<br>
                    <input type="text" name="firstName"><br>
                    Last Name<br>
                    <input type="text" name="lastName"><br>
                    Phone<br>
                    <input type="text" name="phoneNumber"><br>
                    Email<br>
                    <input type="text" name="email"><br>
                    Password<br>
                    <input type="text" name="password"><br>
                    Faculty<br>
                    <input type="text" name="faculty"><br>
                    
                    <input type="submit" value="Add organiser">
                </form> 
            </div>
        </div>
    </body>
</html>
