<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="style.css?v=1">
    <head>


        <title>Main Page</title>
    </head>


    <body>
        <div class="header">


            <div class="title">
                <h1>Summary of Seminars</h1>
            </div>

            <%
                //Checking if the user is logged in as an organiser. 
                //Have a login option if not logged in. Have several options for a logged in organiser.
                if (session.getAttribute("organiser") == null) {
            %>

            <!-- Display this if the user is an organiser -->
            <ul class="nav">
                <li class= "nav"><a href="MainAttendee.jsp" class="active">Seminars </a> </li>
                <li class= "nav"><a href="https://www.youtube.com/watch?v=ln6d0Ju2jEM&list=PLE_hXZqpsCfi7ekruv9a63vm0VdQxBZZh" target="_blank"> Help </a> </li>
                <li class= "nav"><a href="Faq.jsp"> FAQ </a> </li>
                <li class= "nav"><a href="login.jsp"> Login </a> </li>
            </ul>


            <%} else {%>
            <!-- Display this otherwise -->
            <ul class="nav">
                <li class= "nav"><a href="MainOrganiser.jsp"> My Seminars </a> </li>
                <li class= "nav"><a href="MainAttendee.jsp" class="active"> All Seminars </a> </li>
                <li class= "nav"><a href="CreateSeminar.jsp"> Create Seminar </a> </li>
                <li class= "nav"><a href="https://www.youtube.com/watch?v=ln6d0Ju2jEM&list=PLE_hXZqpsCfgPitQ9eFTF5hKzj1TdrNM7" target="_blank"> Help </a> </li>
                <li class= "nav"><a href="Faq.jsp"> FAQ </a> </li>
                <li class= "nav"><a href="logout.jsp"> Logout </a> </li>
            </ul>



            <%}%>

        </div>

        <!-- Using XSL to transform the data on the seminars into HTML-->
        <c:import url="WEB-INF\Seminars.xml"
                  var="inputDoc" />

        <c:import url="WEB-INF\SeminarsAttendee.xsl"
                  var="stylesheet" />

        <x:transform xml  = "${inputDoc}" xslt = "${stylesheet}">        
            <x:param name="bgColor"  value="lightgreen" />
        </x:transform>
    </body>
</html>
