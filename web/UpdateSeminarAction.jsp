<%-- 
    Document   : UpdateSeminarAction.jsp
    Created on : 04/10/2018, 10:32:42 AM
    Author     : brand
--%>

<%@page import="model.Seminar"%>
<%@page import="model.Seminars"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String filePath = application.getRealPath("WEB-INF/Seminars.xml");%>
        <jsp:useBean id="seminarApp" class="model.SeminarApplication" scope="application">
            <jsp:setProperty name="seminarApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>

        <%
            String id = request.getParameter("id");
            String name = request.getParameter("seminarName");
            String desc = request.getParameter("description");
            String speaker = request.getParameter("speaker");
            String speakerBio = request.getParameter("speakerBio");
            String host = request.getParameter("host");
            String date = request.getParameter("date");
            String time = request.getParameter("time");
            String duration = request.getParameter("duration");
            String venue = request.getParameter("venue");
            String venueCapacity = request.getParameter("venueCapacity");
            
            Seminars seminars = seminarApp.getSeminars();
            Seminar updateSeminar = seminars.getSeminar(id);
            
            if(updateSeminar.getName().equals(name) ){
            updateSeminar.setName(name);
            updateSeminar.setDescription(desc);
            updateSeminar.setSpeaker(speaker);
            updateSeminar.setSpeakerBio(speakerBio);
            updateSeminar.setHost(host);
            updateSeminar.setDate(date);
            updateSeminar.setTime(time);
            updateSeminar.setDuration(duration);
            updateSeminar.setVenue(venue);
            updateSeminar.setVenueCapacity(venueCapacity);
           
            seminarApp.updateXML(seminars, filePath);
            session.setAttribute("updateSeminar", "You have succesfully updated the Seminar: " + name);
            response.sendRedirect("SeminarAction.jsp");
            return;
            }else if(seminars.checkMatchingSeminar(name)){
                %> 
                <div class="error">
                <!-- Please format this <3 -->
                <h1> Sorry this seminar name already exists :(</h1>
                <a href="javascript:history.back()">Go Back</a>
                </div>
        <%}else{
 updateSeminar.setName(name);
            updateSeminar.setDescription(desc);
            updateSeminar.setSpeaker(speaker);
            updateSeminar.setSpeakerBio(speakerBio);
            updateSeminar.setHost(host);
            updateSeminar.setDate(date);
            updateSeminar.setTime(time);
            updateSeminar.setDuration(duration);
            updateSeminar.setVenue(venue);
            updateSeminar.setVenueCapacity(venueCapacity);
           
            seminarApp.updateXML(seminars, filePath);
            session.setAttribute("updateSeminar", "You have succesfully updated the Seminar: " + name);
            response.sendRedirect("SeminarAction.jsp");
            return;
}
           %>
    </body>
</html>
