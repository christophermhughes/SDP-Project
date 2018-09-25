<%-- 
    Document   : CreateOrganiserAction
    Created on : 20/09/2018, 1:57:37 PM
    Author     : brand
--%>

<%@page import="LogReg.Validator"%>
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
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String phoneNumber = request.getParameter("phoneNumber");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String faculty = request.getParameter(("faculty"));

            Validator validator = new Validator();

            if (validator.checkEmpty(firstName, lastName, phoneNumber, email, password, faculty)) {
                session.setAttribute("emptyErr", "Please fill in the empty field.");
                response.sendRedirect("CreateOrganiser.jsp");
            } else if (!validator.validateName(firstName) || !validator.validateName(lastName)) {
                session.setAttribute("nameErr", "Incorrect name format");
                response.sendRedirect("CreateOrganiser.jsp");
            } else if (!validator.validateEmail(email)) {
                session.setAttribute("emailErr", "Incorrect email format");
                response.sendRedirect("CreateOrganiser.jsp");
            } else if (!validator.validatePassword(password)) {
                session.setAttribute("passwordErr", "Incorrect password format");
                response.sendRedirect("CreateOrganiser.jsp");
            } else if(organisers.getOrganiser(email) != null) {
                session.setAttribute("existErr", "There is already an account with that email");
                response.sendRedirect("CreateOrganiser.jsp");
            }
            else{
                Organiser organiser = new Organiser(firstName, lastName, phoneNumber, email, password, faculty);
                session.setAttribute("organiser", organiser);
                organisers.addOrganiser(organiser);
                organiserApp.updateXML(organisers, filePath);
                response.sendRedirect("AdminPage.jsp");

            }


        %>







    </body>
</html>
