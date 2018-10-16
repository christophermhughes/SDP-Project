<%-- 
    Document   : SeminarDescription
    Created on : 10/09/2018, 3:23:20 PM
    Author     : brand
--%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="style.css?v=1">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seminar Details</title>
    </head>
    <body>
        <%
            if (session.getAttribute("organiser") == null) {%>
        You do not have access to this page.
        <%} else {%>


        <div class="header">
            <div class="title">
                <h1>Seminar Details</h1>
            </div>
            <ul class="nav">
                <li class= "nav"><a href="MainOrganiser.jsp"> My Seminars </a> </li>
                <li class= "nav"><a href="MainAttendee.jsp"> All Seminars </a> </li>
                <li class= "nav"><a href="CreateSeminar.jsp"> Create Seminar </a> </li>
                <li class= "nav"><a href="logout.jsp"> Logout </a> </li>
            </ul>
        </div>

        <% String filePath = application.getRealPath("WEB-INF/Seminars.xml");%>
        <jsp:useBean id="seminarApp" class="model.SeminarApplication" scope="application">
            <jsp:setProperty name="seminarApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
         
          <% String filePathTwo = application.getRealPath("WEB-INF/Attendees.xml");%>
        <jsp:useBean id="attendeeApp" class="model.AttendeeApplication" scope="application">
            <jsp:setProperty name="attendeeApp" property="filePath" value="<%=filePathTwo%>"/>
        </jsp:useBean>

        <% String filePathThree = application.getRealPath("WEB-INF/AttendeeResults.xml");%>
        <jsp:useBean id="attendeeResultApp" class="model.AttendeeApplication" scope="application">
            <jsp:setProperty name="attendeeResultApp" property="filePath" value="<%=filePathThree%>"/>
        </jsp:useBean>
        <%
            /*   
        String semName = request.getParameter("semName");
        Seminars seminars = seminarApp.getSeminars();
        Seminar seminar = seminars.getSeminar(semName);
        String time = seminar.getTime();
        String date = seminar.getDate();
        String loc = seminar.getRoom();
        String desc = seminar.getAbstract();
        int orgID = seminar.getUserID();
             */
            String seminarName = request.getParameter("name");
            Seminars seminars = seminarApp.getSeminars();
            Seminar seminar = seminars.getSeminarName(seminarName);
            String id = seminar.getId();
            String desc = seminar.getDescription();
            String speaker = seminar.getSpeaker();
            String speakerBio = seminar.getSpeakerBio();
            String host = seminar.getHost();
            String date = seminar.getDate();
            String time = seminar.getTime();
            String duration = seminar.getDuration();
            String venue = seminar.getVenue();
            String venueCapacity = seminar.getVenueCapacity();
            String email = seminar.getOrganiserEmail();
            String seminarID = seminar.getId();
          
             Attendees attendees = attendeeApp.getAttendees();
            Attendees attendeeResults = attendeeResultApp.getAttendees();
        %>

        <div class="content">

            <form class="form" action="CreateSeminarAction.jsp" method="post">
                <input type="hidden" name="id" value="<%=id%>">
                <label>Seminar Name</label>
                <input type="text" name ="seminarName" value="<%=seminarName%>" ><br><br>
                <label>Seminar Description</label>
                <textarea rows="4" cols="50" name="description"><%=desc%></textarea><br><br>
                <label>Speaker</label>
                <input type="text" name ="speaker" value="<%=speaker%>" ><br><br>
                <label>Speaker Biography</label>
                <textarea rows="4" cols="50" name="speakerBio"><%=speakerBio%></textarea><br><br>
                <label>Host</label>
                <input type="text" name ="host" value="<%=host%>" ><br><br>
                <label>Date</label>
                <input type="text" name="date" value="<%=date%>" id="datepicker"><br><br>
                <label>Time</label>
                <input type="text" name="time" value="<%=time%>" id="timepicker"><br><br>
                <input type="hidden" name="seminarID" value="<%=seminarID%>" id="timepicker"><br><br>
                <label>Duration</label>
                <select id ="duration" name="duration">
                    <option value="1 Hour" <%if (duration.equals("1 Hour")) {%> selected <%}%> >1 Hour</option>
                    <option value="2 Hours" <%if (duration.equals("2 Hours")) {%> selected <%}%> >2 Hours</option>
                </select><br><br>
                <label>Venue</label>
                <select id ="venue" name="venue">
                    <option value="CB01.04.006" <%if (venue.equals("CB01.04.006")) {%> selected <%}%> >CB01.04.006</option>
                    <option value="CB01.04.09" <%if (venue.equals("CB01.04.09")) {%> selected <%}%> >CB01.04.09</option>
                </select><br><br>
                <label> Venue Capacity </label>
                <input type="text" name="venueCapacity" value="<%=venueCapacity%>"><br><br>
                <label> Number of Attendees: <%=attendeeResults.countAttendees()%></label>
                <div class="buttonHolder">
                    <input type="submit" value="Update Seminar" formaction="UpdateSeminarAction.jsp"/>
                    <input type="submit" value="Delete Seminar" onclick="return confirm('Are you sure you want to delete this seminar?')" formaction="DeleteSeminarAction.jsp"/>
                </div>

            </form><br>

            
             <div class="buttonHolder">
                    <input type="submit" value="Show/Hide Attendees" onclick="toggleAttendees()"/>
                    <form id="printForm" action="PrintTags.jsp"><input type="submit" value="Print Tags"/></form>
             </div>

            <div id="AttendeesBlock">
                <h1>Attendees</h1>
<%         
           
            attendeeResults.getList().clear();
            ArrayList<Attendee> seminarAttendees = attendees.getAttendingAttendees(seminar.getId());

            Attendees results = new Attendees();

            for (Attendee a : seminarAttendees) {
                results.addAttendee(a);
            }

            attendeeResultApp.updateXML(results, filePathThree);%>
                <c:import url="WEB-INF\AttendeeResults.xml"
                          var="inputDoc" />

                <c:import url="WEB-INF\Attendees.xsl"
                          var="stylesheet" />

                <x:transform xml  = "${inputDoc}" xslt = "${stylesheet}">        
                    <x:param name="bgColor"  value="lightgreen" />
                </x:transform>
            </div>

            <script>

                $("#datepicker").datepicker({
                    dateFormat: "yy-mm-dd",
                    minDate: 0
                    
                });


                $("#timepicker").timepicker({
                    timeFormat: 'HH:mm:ss',
                    interval: 30,
                    minTime: '09:00',
                    maxTime: '21:00',
                    defaultTime: '<%=time%>',
                    startTime: '9:00',
                    dynamic: false,
                    dropdown: true,
                    scrollbar: true
                });

                function toggleAttendees() {
                    var x = document.getElementById("AttendeesBlock");
                    if (x.style.display === "block") {
                        x.style.display = "none";
                    } else {
                        x.style.display = "block";
                    }
                }
            </script>
        </div>
        <%}%>
    </body>
</html>