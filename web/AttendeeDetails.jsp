<%-- 
    Document   : AttendeeDetails
    Created on : 11/10/2018, 2:18:01 PM
    Author     : chris
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="style.css?v=1">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seminar Management System</title>
    </head>
    <body>
        <div class="header">


            <div class="title">
                <h1>Summary of Seminars</h1>
            </div>

            <%
                // Have a login option if not logged in. Have several options for a logged in organiser.
                if (session.getAttribute("organiser") == null) {
            %>

            <ul class="nav">
                <li class= "nav"><a href="login.jsp"> Login </a> </li>
                <li class= "nav"><a href="https://www.youtube.com/watch?v=ln6d0Ju2jEM&list=PLE_hXZqpsCfi7ekruv9a63vm0VdQxBZZh" target="_blank"> Help </a> </li>
                <li class= "nav"><a href="Faq.jsp"> FAQ </a> </li>
            </ul>


            <%} else {%>
            <ul class="nav">
                <li class= "nav"><a href="MainOrganiser.jsp"> My Seminars </a> </li>
                <li class= "nav"><a href="MainAttendee.jsp" class="active"> All Seminars </a> </li>
                <li class= "nav"><a href="CreateSeminar.jsp"> Create Seminar </a> </li>
                <li class= "nav"><a href="logout.jsp"> Logout </a> </li>
                <li class= "nav"><a href="https://www.youtube.com/watch?v=ln6d0Ju2jEM&list=PLE_hXZqpsCfgPitQ9eFTF5hKzj1TdrNM7" target="_blank"> Help </a> </li>
                <li class= "nav"><a href="Faq.jsp"> FAQ </a> </li>
            </ul>

            <%}%>
            
        </div>

            <% String filePath = application.getRealPath("WEB-INF/Attendees.xml");%>
            <jsp:useBean id="attendeeApp" class="model.AttendeeApplication" scope="application">
                <jsp:setProperty name="attendeeApp" property="filePath" value="<%=filePath%>"/>
            </jsp:useBean>

            <%
                String attendeeId = request.getParameter("id");
                Attendees attendees = attendeeApp.getAttendees();
                Attendee attendee = attendees.getAttendee(attendeeId);
                String firstName = attendee.getFirstName();
                String lastName = attendee.getLastName();
                String phoneNumber = attendee.getPhoneNumber();
                String email = attendee.getEmail();
                String seminarID = attendee.getSeminarID();
                String status = attendee.getStatus();
            %>

            <div class="content">

                <form class="form" method="post">
                    <input type="hidden" name="id" value="<%=attendeeId%>">
                    <label>First Name</label>
                    <input type="text" name ="firstName" value="<%=firstName%>" ><br><br>
                    <label>Last Name</label>
                    <input type="text" name ="lastName" value="<%=lastName%>" ><br><br>
                    <label>Phone Number</label>
                    <input type="text" name ="phoneNumber" value="<%=phoneNumber%>" ><br><br>
                    <label>Email</label>
                    <input type="text" name ="email" value="<%=email%>" ><br><br>
                    <label>Status</label>
                    <select id="status" name="status">
                        <option value="Going" <%if (status.equals("Going")) {%> selected <%}%>>Going</option>
                        <option value="Interested" <%if (status.equals("Interested")) {%> selected <%}%>>Interested</option>
                    </select><br><br>
                    
                    <div class="buttonHolder">
                        <input type="submit" value="Update Attendee" formaction="UpdateAttendeeAction.jsp"/>
                        <input type="submit" value="Delete Attendee" onclick="return confirm('Are you sure you want to delete this attendee?')" formaction="DeleteAttendeeAction.jsp"/>
                    </div>

                </form>


               

            </div>
    </body>
</html>
