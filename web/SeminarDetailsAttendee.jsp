<%-- 
    Document   : SeminarDescription
    Created on : 10/09/2018, 3:23:20 PM
    Author     : brand
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="style.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seminar Details</title>
    </head>
    <body>
        <% String filePath = application.getRealPath("WEB-INF/Seminars.xml");%>
        <jsp:useBean id="seminarApp" class="model.SeminarApplication" scope="application">
            <jsp:setProperty name="seminarApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>

        <% String filePathTwo = application.getRealPath("WEB-INF/Attendees.xml");%>
        <jsp:useBean id="attendeeApp" class="model.AttendeeApplication" scope="application">
            <jsp:setProperty name="attendeeApp" property="filePath" value="<%=filePathTwo%>"/>
        </jsp:useBean>
        
        <div class="header">

            <div class="title">
                <h1>Seminar Details</h1>
            </div>

            <ul class="nav">
                <li class= "nav"><a href="MainAttendee.jsp"> All Seminars </a> </li>
            </ul>


        </div>

        <%
          
            //Attendees attendees = attendeeApp.getAttendees();         
/*
            String semName = request.getParameter("semName");
            Seminars seminars = seminarApp.getSeminars();
            Seminar seminar = seminars.getSeminar(semName);
            String time = seminar.getTime();
            String date = seminar.getDate();
            String loc = seminar.getRoom();
            String desc = seminar.getAbstract();
            int orgID = seminar.getUserID();
            String seminarID = seminar.getSemID();

*/


            String seminarName = request.getParameter("name");
            Seminars seminars = seminarApp.getSeminars();
            Seminar seminar = seminars.getSeminarName(seminarName);
            String desc = seminar.getDescription();
            String speakers = seminar.getSpeakers();
            String date = seminar.getDate();
            String time = seminar.getTime();
            String duration = seminar.getDuration();
            String venue = seminar.getVenue();
            String email = seminar.getOrganiserEmail();
        
            
            //Attendees AttendingAttendees;
           
         //Try to get the list of attendees, put all the ones with the right seminarID in another list
         //and update the xml with it.
           
           //attendeeApp.updateXML(attendees, filePathTwo);
             
        %>

        
        
                <table>
            <tr>
                <th>Seminar Name: </th>
                <th><%=seminarName%></th>
            </tr>
            <tr>
                <th>Seminar Description: </th>
                <th><%=desc%></th>
            </tr>
            <tr>
                <th>Seminar Speakers: </th>
                <th><%=speakers%></th>
            </tr>
            <tr>
                <th>Date: </th>
                <th><%=date%></th>
            </tr>
            <tr>
                <th>Time: </th>
                <th><%=time%></th>
            </tr>
            <tr>
                <th>Duration: </th>
                <th><%=duration%></th>
            </tr>
            <tr>
                <th>Venue: </th>
                <th><%=venue%></th>
            </tr>
            <tr>
                <th>Email: </th>
                <th><%=email%></th>
            </tr>
            
        </table>
        

                

        <br>
        <h1>Attendees</h1>
        <c:import url="WEB-INF\Attendees.xml"
                  var="inputDoc" />

        <c:import url="WEB-INF\Attendees.xsl"
                  var="stylesheet" />

        <x:transform xml  = "${inputDoc}" xslt = "${stylesheet}">        
            <x:param name="bgColor"  value="lightgreen" />
        </x:transform>

        <%-- Trying something with a pop up --%>       
        <button class="open-button" onclick="openForm()">Attend Seminar</button>

        <div class="form-popup" id="myForm">
            <form action="AttendAction.jsp" class="form-container" method="post">
                <label for="psw"><b>First Name</b></label>
                <input type="text" placeholder="Enter First Name" name="attFirstName" required>

                <input type="text" name="seminarName" value="<%=seminarName%>"/><br>

                <label for="psw"><b>Last Name</b></label>
                <input type="text" placeholder="Enter Last Name" name="attLastName" required>

                <label for="psw"><b>Phone no</b></label>
                <input type="text" placeholder="Enter Phone no" name="attPhoneNumber" required>

                <button type="submit" class="btn">Attend</button>
                <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
            </form>
        </div>

        <script>
            function openForm() {
                document.getElementById("myForm").style.display = "block";
            }

            function closeForm() {
                document.getElementById("myForm").style.display = "none";
            }
        </script>

    </body>
</html>
