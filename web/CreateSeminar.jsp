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

        <div class ="header">
            <h1>Create Seminar</h1>
        </div>

        <div align="center" class ="content" >
            <form class="form" action="MainOrganiser.jsp" method="post">
                <p>
                    <label for="semName">Seminar Name: </label>
                    <input type="text" name="semName">
                </p>
                <p>
                    <label for="time">Time: </label>
                    <input type="time" name="Time">
                </p>
                <p>
                    <label for="date">Date: </label>
                    <input type="date" name="Date">
                </p>
                <p>
                    <label for="loc">Location: </label>
                    <input type="text" name="Location">
                </p>
                <p>
                    <label for="descp">Description: </label>
                    <input type="text" name="descp">
                </p>
                <p>
                    <label for="staffName">Staff Organiser: </label>
                    <input type="text" name="staffName">
                </p>
                <input type="submit" value="Create Seminar">
            </form> 
        </div>

    </body>
</html>
