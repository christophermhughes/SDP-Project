<%-- 
    Document   : UpdateAttendeeAction
    Created on : 13/10/2018, 4:27:59 PM
    Author     : chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Attendee</title>
    </head>
    <body>
        <% String filePath = application.getRealPath("WEB-INF/Attendees.xml");%>
        <jsp:useBean id="attendeeApp" class="model.AttendeeApplication" scope="application">
            <jsp:setProperty name="attendeeApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>

        <% 
            String id = request.getParameter("id");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String phoneNumber = request.getParameter("phoneNumber");
            String email = request.getParameter("email");
            String status = request.getParameter("status");
            
            Attendees attendees = attendeeApp.getAttendees();
            Attendee updateAttendee = attendees.getAttendee(id);
            updateAttendee.setFirstName(firstName);
            updateAttendee.setLastName(lastName);
            updateAttendee.setPhoneNumber(phoneNumber);
            updateAttendee.setEmail(email);
            updateAttendee.setStatus(status);
        
            attendeeApp.updateXML(attendees, filePath);
            session.setAttribute("updateAttendee", "You have succesfully updated the Attendee: " + firstName);
            response.sendRedirect("MainAttendee.jsp");
        
        %>
    </body>
</html>

