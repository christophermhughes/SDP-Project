<%-- 
    Document   : CreateSeminar
    Created on : Sep 10, 2018, 2:20:38 PM
    Author     : Ankush Yamarti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css?v=1">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Seminar Page</title>
    </head>
    <body>

        <div class ="header">

            <div class="title">
                <h1>Create Seminar</h1>
            </div>

            <ul class="nav">
                <li class= "nav"><a href="MainOrganiser.jsp"> My Seminars </a> </li>
                <li class= "nav"><a href="MainAttendee.jsp"> All Seminars </a> </li>
                <li class= "nav"><a href="CreateSeminar.jsp" class="active"> Create Seminar </a> </li>
                <li class= "nav"><a href="logout.jsp"> Logout </a> </li>
            </ul>



        </div>

        <div class ="content" >
            <form class="form" action="CreateSeminarAction.jsp" method="post">
                <label> Seminar Name </label>
                <input type="text" name="name"/><br><br>
                <label> Description </label>
                <input type="text" name="description"><br><br>
                <label> Speakers </label>
                <input type="text" name="speakers"><br><br>
                <label> Date </label>
                <input type="date" name="date"/><br><br>
                <label> Time </label>
                <input type="time" name="time"><br><br>
                <label> Duration </label>
                <select id ="duration" name="duration">
                    <option value="1 Hour">1 Hour</option>
                    <option value="2 Hours">2 Hours</option>
                </select><br><br>
                <label> Venue </label>
                <select id ="venue" name="venue">
                    <option value="CB01.04.006">CB01.04.006</option>
                    <option value="CB01.04.09">CB01.04.09</option>
                </select>
                <br>
                <br>


                <!--                Organiser ID<br>
                                <input type="text" name="orgID"><br>-->
                <div class="buttonHolder">
                <input type="submit" value="Add Seminar">
                </div>
                <br>
                <font color="red"><c:out value="${existErr}"/></font>

            </form> 

            <%
                if (session.getAttribute("existErr") != null) {
                    session.removeAttribute("existErr");
                }

            %>


            <script>
                $(function () {
                    $("#datepicker").datepicker();
                });
            </script>


       
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
