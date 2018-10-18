<%-- 
    Document   : AttendAction
    Created on : Sep 27, 2018, 2:16:44 PM
    Author     : Ankush Yamarti
--%>

<%@page import="java.util.UUID"%>
<%@page import="model.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="error.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <div class="error">
            
            <!-- Imports for the various required data in the XML files. -->
            <% String filePath = application.getRealPath("WEB-INF/Seminars.xml");%>
            <jsp:useBean id="seminarApp" class="model.SeminarApplication" scope="application">
                <jsp:setProperty name="seminarApp" property="filePath" value="<%=filePath%>"/>
            </jsp:useBean>

            <% String filePathTwo = application.getRealPath("WEB-INF/Attendees.xml");%>
            <jsp:useBean id="attendeeApp" class="model.AttendeeApplication" scope="application">
                <jsp:setProperty name="attendeeApp" property="filePath" value="<%=filePathTwo%>"/>
            </jsp:useBean>

            <% String filePathThree = application.getRealPath("WEB-INF/Organisers.xml");%>
            <jsp:useBean id="organiserApp" class="model.OrganiserApplication" scope="application">
                <jsp:setProperty name="organiserApp" property="filePath" value="<%=filePathThree%>"/>
            </jsp:useBean>

            <% String filePathFour = application.getRealPath("WEB-INF/AttendeeResults.xml");%>
            <jsp:useBean id="attendeeResultApp" class="model.AttendeeApplication" scope="application">
                <jsp:setProperty name="attendeeResultApp" property="filePath" value="<%=filePathFour%>"/>
            </jsp:useBean>

            <%
                //Getting the Seminar ID    
                String semID = request.getParameter("semID");

                //Getting Attendee Form information
                String attId = UUID.randomUUID().toString();
                String attFirstName = request.getParameter("attFirstName");
                String attLastName = request.getParameter("attLastName");
                String attPhoneNumber = request.getParameter("attPhoneNumber");
                String attEmail = request.getParameter("attEmail");
                String attendBtn = request.getParameter("attendBtn");
                String intererstedBtn = request.getParameter("interestedBtn");
                String status;
                if (attendBtn != null) {
                    status = "Going";
                } else {
                    status = "Interested";
                }
                //Getting the current list of organisers and attendees
                Organisers organisers = organiserApp.getOrganisers();
                Attendees attendees = attendeeApp.getAttendees();
                Attendees attendeeResults = attendeeResultApp.getAttendees();

                if (organisers.checkMatchingOrganiser(attEmail, attPhoneNumber)) {
            %> 


            <!-- Format this area to to make the error page look nice -->
            <h2> Sorry, as the organizer, you cannot register for this seminar </h2>
            <a href="javascript:history.back()">Go Back</a>

            <%
            } else if (attendeeResults.checkMatchingAttendee(attEmail, attPhoneNumber)) {
            %> 


            <!-- Format this area to to make the error page look nice -->
            <h2> Sorry an email or phone number matching yours is already attending this seminar </h2>
            <a href="javascript:history.back()">Go Back</a>

            <%
                } else {
                    //Creating a new Attendee

                    Attendee attendee = new Attendee(attId, attFirstName, attLastName, attPhoneNumber, attEmail, semID, status);
                    session.setAttribute("attendee", attendee);
                    attendees.addAttendee(attendee);

                    attendeeApp.updateXML(attendees, filePathTwo);
                    response.sendRedirect("MainAttendee.jsp");
                }


            %>
        </div>

    </body>
</html>
