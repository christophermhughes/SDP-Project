<%-- 
    Document   : CreateOrganiser
    Created on : Sep 10, 2018, 2:20:38 PM
    Author     : Ankush Yamarti
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="style.css">
   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
      <% String filePath = application.getRealPath("WEB-INF/Organisers.xml");%>
        <jsp:useBean id="organiserApp" class="model.OrganiserApplication" scope="application">
            <jsp:setProperty name="organiserApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
    <% 
        String orgEmail = request.getParameter("orgEmail");
        Organisers organisers = organiserApp.getOrganisers();
        Organiser organiser = organisers.getOrganiser(orgEmail);
        String fname = organiser.getfirstName();
        String lastname = organiser.getlastName();
        String phone = organiser.getPhoneNumber();
        String email = organiser.getEmail();
        String pass = organiser.getPassword();
        String fac = organiser.getFaculty();
        %>
        <body>
        <div class="container">
            <div class ="header">
                <h1>Hello World!</h1>
            </div>

            <div class ="content">
                <form class="form" action="CreateOrganiserAction.jsp" method="post">
                    First Name<br>
                    <input type="text" name="firstName" value="<%=fname%>"><br>
                    Last Name<br>
                    <input type="text" name="lastName" value="<%=lastname%>"><br>
                    Phone<br>
                    <input type="text" name="phoneNumber" value="<%=phone%>"><br>
                    Email<br>
                    <input type="text" name="email" value="<%=email%>"><br>
                    Password<br>
                    <input type="text" name="password" value="<%=pass%>"><br>
                    Faculty<br>
                    <input type="text" name="faculty" value="<%=fac%>"><br>
                    
                    <input type="submit" value="Update Organiser">
                    <input type="submit" value="Delete Organiser" formaction="DeleteOrganiserAction.jsp"/>
                </form> 
            </div>
        </div>
    </body>
</html>
