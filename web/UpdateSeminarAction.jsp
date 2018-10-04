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
            String speakers = request.getParameter("speakers");
            String date = request.getParameter("date");
            String time = request.getParameter("time");
            String duration = request.getParameter("duration");
            String venue = request.getParameter("venue");
            
            
            Seminars seminars = seminarApp.getSeminars();
            Seminar updateSeminar = seminars.getSeminar(id);
            updateSeminar.setName(name);
            updateSeminar.setDescription(desc);
            updateSeminar.setSpeakers(speakers);
            updateSeminar.setDate(date);
            updateSeminar.setTime(time);
            updateSeminar.setDuration(duration);
            updateSeminar.setVenue(venue);
           
            seminarApp.updateXML(seminars, filePath);
            session.setAttribute("updateSeminar", "You have succesfully updated the Seminar: " + name);
            response.sendRedirect("SeminarAction.jsp");
        %>
    </body>
</html>
