<%-- 
    Document   : loginAction
    Created on : 20/09/2018, 5:58:53 PM
    Author     : brand
--%>

<%@page import="model.*"%>
<%@page import="LogReg.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
        
        
        
        
        <% String filePath = application.getRealPath("WEB-INF/Organisers.xml");%>
        <jsp:useBean id="organiserApp" class="model.OrganiserApplication" scope="application">
            <jsp:setProperty name="organiserApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        
        <% String filePath1 = application.getRealPath("WEB-INF/Admins.xml");%>
        <jsp:useBean id="adminApp" class="model.AdminApplication" scope="application">
            <jsp:setProperty name="adminApp" property="filePath" value="<%=filePath1%>"/>
        </jsp:useBean>
        
        <% 
            Organisers organisers = organiserApp.getOrganisers();
            Admins admins = adminApp.getAdmins();
        %>
        
        
        <%
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            Organiser organiser = organisers.login(email, password);
            Admin admin = admins.login(email, password);
            Organiser existingOrganiser = organisers.getOrganiser(email);
            Admin existingAdmin = admins.getAdmin(email);
            
            Validator validator = new Validator();
        %>
        
        
        <%
                if (validator.checkEmptyLogin(email, password) == true){                                   //Check if email name or password is empty
                    session.setAttribute("emptyErr", "Please fill in the empty field.");
                    response.sendRedirect("login.jsp");
                    }
                else{
                if(!validator.validateEmail(email)){
                    session.setAttribute("emailErr", "Incorrect email format");
                }
                if(!validator.validatePassword(password)){
                    session.setAttribute("passwordErr", "Incorrect password format");
                }
                
                if (!validator.validatePassword(password) || !validator.validateEmail(email)) {  //If any are invalid, send to register page
                response.sendRedirect("login.jsp");
                }
                
                else if(organiser!=null){
                    session.setAttribute("organiser", organiser);{
                    response.sendRedirect("MainOrganiser.jsp");
                }
                }
                
                else if(admin!=null){
                    session.setAttribute("admin", admin);{
                    response.sendRedirect("AdminPage.jsp");
                }
                }

                else if(existingAdmin!=null || existingOrganiser!=null){                                            //Checks if there are any admin or organiser with that email
                    session.setAttribute("wrongPassword", "You have entered the wrong password.");
                    response.sendRedirect("login.jsp");
                    }
                else{
                    session.setAttribute("existErr", "User does not exist.");
                    response.sendRedirect("login.jsp");
                    }
                }
        %>
        
        
    </body>
</html>