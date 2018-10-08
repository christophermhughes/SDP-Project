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
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Seminar Page</title>
    </head>
    <body>
        <%
            // Checking to see if an organiser is logged in
            if (session.getAttribute("organiser") == null) {%>
        You do not have access to this page.
        <%} else {%>

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
                <input type="text" name="date" id="datepicker"><br><br>
                <label> Time </label>
                <input type="text" name ="time" id="timepicker"><br><br>
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
                <c:if test="${emptyErr!=null}">
                    <font color="red"><c:out value="${emptyErr}"/></c:if></font>
                <c:if test="${existErr!=null}">
                    <font color="red"><c:out value="${existErr}"/></c:if></font>
                <c:if test="${dateErr!=null}">
                    <font color="red"><c:out value="${dateErr}"/></c:if></font>
                <c:if test="${timeErr!=null}">
                    <font color="red"><c:out value="${timeErr}"/></c:if></font>

                </form> 

            <%
                if (session.getAttribute("emptyErr") != null) {
                    session.removeAttribute("emptyErr");
                }
                if (session.getAttribute("existErr") != null) {
                    session.removeAttribute("existErr");
                }
                if (session.getAttribute("dateErr") != null) {
                    session.removeAttribute("dateErr");
                }
                if (session.getAttribute("timeErr") != null) {
                    session.removeAttribute("timeErr");
                }
            %>

            <script>

                $("#datepicker").datepicker({
                    dateFormat: "dd/mm/yy"
                });


                $("#timepicker").timepicker({
                    timeFormat: 'HH:mm:ss',
                    interval: 30,
                    minTime: '09:00',
                    maxTime: '21:00',
                    startTime: '9:00',
                    dynamic: false,
                    dropdown: true,
                    scrollbar: true
                });


            </script>

        </div>
        <%}%>
    </body>
</html>
