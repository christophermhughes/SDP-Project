<%-- 
    Document   : UpdateOrganiserAction
    Created on : 05/10/2018, 8:30:24 PM
    Author     : chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Organiser</title>
    </head>
    <body>
        <% String filePath = application.getRealPath("WEB-INF/Organisers.xml");%>
        <jsp:useBean id="organiserApp" class="model.OrganiserApplication" scope="application">
            <jsp:setProperty name="organiserApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>

        <% 
            String id = request.getParameter("id");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String phoneNumber = request.getParameter("phoneNumber");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String faculty = request.getParameter("faculty");
            
            Organisers organisers = organiserApp.getOrganisers();
            Organiser updateOrganiser = organisers.getOrganiser(id);
            updateOrganiser.setfirstName(firstName);
            updateOrganiser.setlastName(lastName);
            updateOrganiser.setPhoneNumber(phoneNumber);
            updateOrganiser.setEmail(email);
            updateOrganiser.setPassword(password);
            updateOrganiser.setFaculty(faculty);
        
            organiserApp.updateXML(organisers, filePath);
            session.setAttribute("updateOrganiser", "You have succesfully updated the Organiser: " + firstName);
            response.sendRedirect("AdminPage.jsp");
        
        %>
    </body>
</html>
