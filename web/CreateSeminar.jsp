<%-- 
    Document   : CreateSeminar
    Created on : Sep 10, 2018, 2:20:38 PM
    Author     : Ankush Yamarti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <form action="MainOrganiser.jsp" method="post">
            Seminar Name<br>
            <input type="text" name="SemName"><br>
            Time<br>
            <input type="text" name="Time"><br>
            Date<br>
            <input type="text" name="Date"><br>
            Location<br>
            <input type="text" name="Location"><br>
            Description<br>
            <input type="text" name="Descp"><br>
            Staff Organizer<br>
            <input type="text" name="StaffName"><br>
            <br>
            <input type="submit" value="Create Seminar">
        </form> 

    </body>
</html>
