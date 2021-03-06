<%-- 
    Document   : CreateOrganiserAction
    Created on : 20/09/2018, 1:57:37 PM
    Author     : brand
--%>

<%@page import="java.util.UUID"%>
<%@page import="model.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Organiser</title>
    </head>
    <body>
        <h1>Create Organiser</h1>

        <% String filePath = application.getRealPath("WEB-INF/Organisers.xml");%>
        <jsp:useBean id="organiserApp" class="model.OrganiserApplication" scope="application">
            <jsp:setProperty name="organiserApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>

        <% Organisers organisers = organiserApp.getOrganisers();%>

        <%
            String id = UUID.randomUUID().toString();
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String phoneNumber = request.getParameter("phoneNumber");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String faculty = request.getParameter("faculty");

            if (organisers.getOrganiser(email) != null) {
                 session.setAttribute("existErr", "Sorry, there is already a organiser with that email");
                response.sendRedirect("CreateOrganiser.jsp");
                
                /*
                Organiser organiser = organisers.getOrganiser(email);
                organiser.setfirstName(firstName);
                organiser.setlastName(lastName);
                organiser.setPhoneNumber(phoneNumber);
                organiser.setPassword(password);
                organiser.setFaculty(faculty);
                */
            } else {
                Organiser organiser = new Organiser(id, firstName, lastName, phoneNumber, email, password, faculty);
                session.setAttribute("organiser", organiser);
                organisers.addOrganiser(organiser);   
                organiserApp.updateXML(organisers, filePath); 
                response.sendRedirect("AdminPage.jsp");
            }
            
        %>







    </body>
</html>
