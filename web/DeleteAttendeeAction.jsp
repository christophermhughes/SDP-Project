<%-- 
    Document   : DeleteAttendeeAction
    Created on : 16/10/2018, 8:24:24 PM
    Author     : chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Attendee</title>
    </head>
    <body>
        <!-- Getting the XML data required-->
        <% String filePath = application.getRealPath("WEB-INF/Attendees.xml");%>
        <jsp:useBean id="attendeeApp" class="model.AttendeeApplication" scope="application">
            <jsp:setProperty name="attendeeApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>

        <% 
            //Getting attendee information to delete
            String id = request.getParameter("id");
            Attendees attendees = attendeeApp.getAttendees();            
            attendees.removeExistingAttendee(id);
        
            attendeeApp.updateXML(attendees, filePath);
            response.sendRedirect("MainAttendee.jsp");
        
        %>
    </body>
</html>

