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
            <div id="mySidebar" class="sidebar">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
                <a href="MainOrganiser.jsp">Seminars</a>
                <a href="#">Attendees</a>
                <a href="login.jsp">Login</a>
            </div>

            <div id="main">
                <button class="openbtn" onclick="openNav()">☰</button>  
                <h1>Create Seminar</h1>
            </div>

            <script>
                function openNav() {
                    document.getElementById("mySidebar").style.width = "250px";
                    document.getElementById("main").style.marginLeft = "250px";
                }

                function closeNav() {
                    document.getElementById("mySidebar").style.width = "0";
                    document.getElementById("main").style.marginLeft = "0";
                }
            </script>
            
        </div>

        <div class ="content" >
            <form class="form" action="MainOrganiser.jsp" method="post">

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
        </div>

    </body>
</html>
