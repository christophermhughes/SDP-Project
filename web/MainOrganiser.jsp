<%-- 
    Document   : MainOrganiser
    Created on : Sep 6, 2018, 4:36:57 PM
    Author     : Ankush Yamarti
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Seminar"%>
<%@page import="model.Organiser"%>
<%@page import="model.Seminars"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="style.css">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Seminars Page</title>
    </head>
    <body>
        <%
            // Checking to see if an organiser is logged in
            if (session.getAttribute("organiser") == null) {%>
        You do not have access to this page.
        <%} else {%>

        <!-- Creating the bean to allow us to retrieve and update the information in XML -->
        <% String filePath = application.getRealPath("WEB-INF/Seminars.xml");%>
        <jsp:useBean id="seminarApp" class="model.SeminarApplication" scope="application">
            <jsp:setProperty name="seminarApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>

        <% String resultsPath = application.getRealPath("WEB-INF/SeminarResults.xml");%>
        <jsp:useBean id="seminarResultsApp" class="model.SeminarApplication" scope="application">
            <jsp:setProperty name="seminarResultsApp" property="filePath" value="<%=resultsPath%>"/>
        </jsp:useBean>


        <div class="header">

            <div class="title">
                <h1>Manage Seminars</h1>
            </div>

            <ul class="nav">
                <li class= "nav"><a href="MainOrganiser.jsp"> My Seminars </a> </li>
                <li class= "nav"><a href="MainAttendee.jsp"> All Seminars </a> </li>
                <li class= "nav"><a href="CreateSeminar.jsp"> Create Seminar </a> </li>
                <li class= "nav"><a href="logout.jsp"> Logout </a> </li>
            </ul>


        </div>
        <%
            // Get the logged in organisers in information
            Organiser organiser = (Organiser) session.getAttribute("organiser");
            String email = organiser.getEmail();

            // Retrieve all the seminars in the XML
            Seminars seminars = seminarApp.getSeminars();

            // Create a variable to store the results
            Seminars results = new Seminars();

            // Create an array list to store the seminars of the organiser
            ArrayList<Seminar> organiserSeminars = seminars.getOrganiserSeminars(email);

            // Go through the list and add it to the results
            for (Seminar s : organiserSeminars) {
                results.addSeminar(s);
            }

            // Update the XML
            seminarResultsApp.updateXML(results, resultsPath);
        %>

        <!-- XSLT transformation-->
        <c:import url="WEB-INF\SeminarResults.xml"
                  var="inputDoc" />

        <c:import url="WEB-INF\SeminarsOrganiser.xsl"
                  var="stylesheet" />

        <x:transform xml  = "${inputDoc}" xslt = "${stylesheet}">        
            <x:param name="bgColor"  value="lightgreen" />
        </x:transform>



        <%}%>
    </body>
</html>