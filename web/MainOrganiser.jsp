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
            if (session.getAttribute("organiser") == null) {%>
        You do not have access to this page.


        <%} else {%>

        <% String filePath = application.getRealPath("WEB-INF/Seminars.xml");%>
        <jsp:useBean id="seminarApp" class="model.SeminarApplication" scope="application">
            <jsp:setProperty name="seminarApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        
        <% String resultsPath = application.getRealPath("WEB-INF/SeminarResults.xml");%>
        <jsp:useBean id="seminarResultsApp" class="model.SeminarApplication" scope="application">
            <jsp:setProperty name="seminarApp" property="filePath" value="<%=resultsPath%>"/>
        </jsp:useBean>
        
        <div class="header">

            <div class="title">
                <h1>Manage Seminars</h1>
            </div>

            <ul class="nav">
                <li class= "nav"><a href="MainAttendee.jsp"> All Seminars </a> </li>
                <li class= "nav"><a href="MainOrganiser.jsp"> My Seminars </a> </li>
                <li class= "nav"><a href="CreateSeminar.jsp"> Create Seminar </a> </li>
                <li class= "nav"><a href="logout.jsp"> Logout </a> </li>
            </ul>


        </div>
        <%
            Organiser organiser = (Organiser) session.getAttribute("organiser");
            String email = organiser.getEmail();
            Seminars seminars = seminarApp.getSeminars();
            Seminars results = new Seminars();
            ArrayList<Seminar> organiserSeminars;
            organiserSeminars = seminars.getOrganiserSeminars(email);
            for(Seminar s : organiserSeminars){
                results.addSeminar(s);
            }
            seminarResultsApp.updateXML(results, resultsPath);
        %>

        <div class="content">

            <c:import url="WEB-INF\SeminarResults.xml"
                      var="inputDoc" />

            <c:import url="WEB-INF\SeminarsOrganiser.xsl"
                      var="stylesheet" />

            <x:transform xml  = "${inputDoc}" xslt = "${stylesheet}">        
                <x:param name="bgColor"  value="lightgreen" />
            </x:transform>


            <%}%>
        </div>
    </body>
</html>