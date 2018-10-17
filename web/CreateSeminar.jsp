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
                <li class= "nav"><a href="https://www.youtube.com/watch?v=ln6d0Ju2jEM&list=PLE_hXZqpsCfgPitQ9eFTF5hKzj1TdrNM7" target="_blank"> Help </a>
                <li class= "nav"><a href="Faq.jsp"> FAQ </a> </li>
                <li class= "nav"><a href="logout.jsp"> Logout </a> </li>
            </ul>



        </div>

        <div class ="content" >
            <form class="form" action="CreateSeminarAction.jsp" method="post">
                <label> Seminar Name </label>
                <input type="text" name="name" maxlength="40"/><br><br>
                <label> Description </label>
                <textarea rows="4" cols="50" name="description"></textarea><br><br>
                <label> Speaker </label>
                <input type="text" name="speaker"><br><br>
                <label> Speaker Biography </label>
                <textarea rows="4" cols="50" name="speakerBio"></textarea><br><br>
                <label> Host </label>
                <input type="text" name="host"><br><br>
                <label> Date </label>
                <input type="text" name="date" id="datepicker"><br><br>
                <label> Time </label>
                <input type="text" name ="time" id="timepicker"><br><br>
                <label> Duration </label>
                <select id ="duration" name="duration">
                    <option value="1 Hour">1 Hour</option>
                    <option value="2 Hours">2 Hours</option>
                    <option value="3 Hours">3 Hours</option>
                    <option value="4 Hours">4 Hours</option>
                    <option value="5 Hours">5 Hours</option>                    
                </select><br><br>
                <label> Venue </label>
                <select id ="venue" name="venue">
                    <option value="CB01.04.006">CB01.04.006</option>
                    <option value="CB01.04.09">CB01.04.09</option>
                    <option value="CB01.04.29">CB01.04.29</option>
                    <option value="CB01.04.49">CB01.04.49</option>
                    <option value="CB01.04.52">CB01.04.52</option>
                    <option value="CB01.04.67">CB01.04.67</option>
                    <option value="CB01.04.EXTC01">CB01.04.EXTC01</option>
                    <option value="CB01.05.009">CB01.05.009</option>
                    <option value="CB01.05.09D">CB01.05.09D</option>
                    <option value="CB01.05.10A">CB01.05.10A</option>
                    <option value="CB01.05.52">CB01.05.52</option>
                    <option value="CB01.06.13E">CB01.06.13E</option>
                    <option value="CB03.01.005">CB03.01.005</option>
                    <option value="CB03.05.010">CB03.05.010</option>
                    <option value="CB04.02.CR.01">CB04.02.CR.01</option>
                </select>
                <label> Venue Capacity </label>
                <input type="text" name ="venueCapacity"><br><br>
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
                    dateFormat: "dd/mm/yy",
                    minDate: 0
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
