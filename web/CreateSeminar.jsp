<%-- 
    Document   : CreateSeminar
    Created on : Sep 10, 2018, 2:20:38 PM
    Author     : Ankush Yamarti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Seminar Page</title>
    </head>
    <body>

        <div class ="header">
            <div class="sidenav">
                <a href="MainOrganiser.jsp">Seminars</a>
                <a href="MainOrganiser.jsp">Attendees</a>
                <a href="logout.jsp">Logout</a>
            </div>

            <div class="title">
            <h1>Create Seminar</h1>
            </div>
            

            
            
        </div>

        <div class ="content" >
            <form class="form" action="CreateSeminarAction.jsp" method="post">
                    Seminar ID<br>
                    <input type="text" name="seminarID"><br>
                    Seminar Name<br>
                    <input type="text" name="seminarName"><br>
                    Time<br>
                    <input type="text" name="time"><br>
                    Date<br>
                    <input type="text" name="date"><br>
                    Location<br>
                    <input type="text" name="loc"><br>
                    Description<br>
                    <input type="text" name="desc"><br>
                    Organiser ID<br>
                    <input type="text" name="orgID"><br>
                    
                    <input type="submit" value="Add Seminar">
                    
                </form> 
         <!--   <form class="form" action="MainOrganiser.jsp" method="post">

                <label for="semName">Seminar Name: </label>
                <input type="text" name="semName">
                <br>
                <br>
                <label for="time">Time: </label>
                <input type="time" name="Time">
                <br>
                <br>
                <label for="date">Date: </label>
                <input type="date" name="Date">
                <br>
                <br>
                <label for="loc">Location: </label>
                <input type="text" name="Location">
                <br>
                <br>
                <label for="descp">Description: </label>
                <input type="text" name="descp">
                <br>
                <br>
                <label for="staffName">Staff Organiser: </label>
                <input type="text" name="staffName">
                <br>
                <br>
                <div class="buttonHolder">
                    <input type="submit" value="Create Seminar">
                </div>

            </form> 
         -->
        </div>

    </body>
</html>
