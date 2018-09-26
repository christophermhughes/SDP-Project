<%-- 
    Document   : CreateSeminarAction
    Created on : 20/09/2018, 1:57:37 PM
    Author     : brand
--%>

<%@page import="model.*"%>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Seminar</title>
    </head>
    <body>
        <h1>Create Seminar</h1>
        
        <% String filePath = application.getRealPath("WEB-INF/Seminars.xml");%>
        <jsp:useBean id="seminarApp" class="model.SeminarApplication" scope="application">
            <jsp:setProperty name="seminarApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        
    <% Seminars seminars = seminarApp.getSeminars();%>
    
    <% 
        String seminarID = request.getParameter("seminarID");
        String seminarName = request.getParameter("seminarName");
        String time = request.getParameter("time");
        String date = request.getParameter("date");
        String loc = request.getParameter("loc");
        String desc = request.getParameter("desc");
        String orgID = request.getParameter(("orgID"));
        


        Seminar seminar = new Seminar(seminarID,seminarName, time, date, desc, loc,  Integer.parseInt(orgID));
        session.setAttribute("seminar", seminar);
        seminars.addSeminar(seminar);
        seminarApp.updateXML(seminars, filePath);
        response.sendRedirect("MainOrganiser.jsp");
    %>
        
        
        
        
        
        
        
    </body>
</html>
