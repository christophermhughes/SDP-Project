<%-- 
    Document   : AttendAction
    Created on : Sep 27, 2018, 2:16:44 PM
    Author     : Ankush Yamarti
--%>

<%@page import="model.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <% String filePath = application.getRealPath("WEB-INF/Seminars.xml");%>
        <jsp:useBean id="seminarApp" class="model.SeminarApplication" scope="application">
            <jsp:setProperty name="seminarApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>

        <% String filePathTwo = application.getRealPath("WEB-INF/Attendees.xml");%>
        <jsp:useBean id="attendeeApp" class="model.AttendeeApplication" scope="application">
            <jsp:setProperty name="attendeeApp" property="filePath" value="<%=filePathTwo%>"/>
        </jsp:useBean>

        <%
            //Getting the Seminar ID    
            String semID = request.getParameter("semID");

            //Getting Attendee Form information
            String attFirstName = request.getParameter("attFirstName");
            String attLastName = request.getParameter("attLastName");
            String attPhoneNumber = request.getParameter("attPhoneNumber");

            //Creating a new Attendee
            Attendees attendees = attendeeApp.getAttendees();

            Attendee attendee = new Attendee(attFirstName, attLastName, attPhoneNumber, semID, "Going");
            session.setAttribute("attendee", attendee);
            attendees.addAttendee(attendee);

            attendeeApp.updateXML(attendees, filePathTwo);
            response.sendRedirect("MainAttendee.jsp");


        %>
    </body>
</html>
