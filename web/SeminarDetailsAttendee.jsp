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
    <link rel="stylesheet" type="text/css" href="style.css">
    <head>


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

        <% String filePathThree = application.getRealPath("WEB-INF/AttendeeResults.xml");%>
        <jsp:useBean id="attendeeResultApp" class="model.AttendeeApplication" scope="application">
            <jsp:setProperty name="attendeeResultApp" property="filePath" value="<%=filePathThree%>"/>
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

            String seminarName = request.getParameter("name");
            Seminars seminars = seminarApp.getSeminars();
            Seminar seminar = seminars.getSeminarName(seminarName);
            String desc = seminar.getDescription();
            String speaker = seminar.getSpeaker();
            String speakerBio = seminar.getSpeakerBio();
            String host = seminar.getHost();
            String date = seminar.getDate();
            String time = seminar.getTime();
            String duration = seminar.getDuration();
            String venue = seminar.getVenue();
            String email = seminar.getOrganiserEmail();
            String seminarID = seminar.getId();
            String venueCapacity = seminar.getVenueCapacity();

            Attendees attendees = attendeeApp.getAttendees();
            Attendees attendeeResults = attendeeResultApp.getAttendees();

            ArrayList<Attendee> seminarAttendees = attendees.getAttendingAttendees(seminar.getId());

            Attendees results = new Attendees();

            for (Attendee a : seminarAttendees) {
                results.addAttendee(a);
            }

            attendeeResultApp.updateXML(results, filePathThree);
            //Attendees AttendingAttendees;

            //Try to get the list of attendees, put all the ones with the right seminarID in another list
            //and update the xml with it.
            //attendeeApp.updateXML(attendees, filePathTwo);

        %>

        <div class="content">

            <table class="attendeeInfoTable">
                <tr>
                    <th>Seminar Name: </th>
                    <td><%=seminarName%></td>
                </tr>
                <tr>
                    <th>Seminar Description: </th>
                    <td><%=desc%></td>
                </tr>
                <tr>
                    <th>Speaker: </th>
                    <td><%=speaker%></td>
                </tr>
                <tr>
                    <th>Speaker Biography: </th>
                    <td><%=speakerBio%></td>
                </tr>
                <tr>
                    <th>Host:</th>
                    <td><%=host%></td>
                </tr>
                <tr>
                    <th>Date: </th>
                    <td><%=date%></td>
                </tr>
                <tr>
                    <th>Time: </th>
                    <td><%=time%></td>
                </tr>
                <tr>
                    <th>Duration: </th>
                    <td><%=duration%></td>
                </tr>
                <tr>
                    <th>Venue: </th>
                    <td><%=venue%></td>
                </tr>
                <tr>
                    <th>Venue Capacity: </th>
                    <td><%=venueCapacity%></td>
                </tr>
                <tr>
                    <th>Registered Attendees: </th>
                    <td><%=attendeeResults.countAttendees()%></td>
                </tr>
                <tr>
                    <th>Email: </th>
                    <td><%=email%></td>
                </tr>

            </table>

            <div class="buttonHolder">
                <input type="submit" id="modalBtn" value="Show/Hide Attendees"/>
            </div>



            <br>
            <div id="AttendeesModal" class="modal">
                <div class="modal-content"
                     <h1>Attendees</h1>
                    <span class="close">&times;</span>

                    <c:import url="WEB-INF\AttendeeResults.xml"
                              var="inputDoc" />

                    <c:import url="WEB-INF\Attendees.xsl"
                              var="stylesheet" />

                    <x:transform xml  = "${inputDoc}" xslt = "${stylesheet}">        
                        <x:param name="bgColor"  value="lightgreen" />
                    </x:transform>
                </div>
            </div>
            <%
                // Have a login option if not logged in. Have several options for a logged in organiser.
                if (session.getAttribute("organiser") == null) {
            %>
            <%-- Trying something with a pop up --%>       
            <button class="open-button" onclick="openForm()">Attend Seminar</button>

            <div class="form-popup" id="myForm">
                <form action="AttendAction.jsp" class="form-container" method="post">
                    <label for="psw"><b>First Name</b></label>
                    <input type="text" placeholder="Enter First Name" name="attFirstName" required>

                    <input type="hidden" name="semID" value="<%=seminarID%>"/><br>

                    <label for="psw"><b>Last Name</b></label>
                    <input type="text" placeholder="Enter Last Name" name="attLastName" required>

                    <label for="psw"><b>Phone no</b></label>
                    <input type="text" placeholder="Enter Phone no" name="attPhoneNumber" required>

                    <label for="psw"><b>Email</b></label>
                    <input type="text" placeholder="Enter Email" name="attEmail" required>

                    <button type="submit" name="attendBtn" class="btn">Attend</button>
                    <button type="submit" name="interestedBtn" class="btn"> Interested</button>
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
                
                // Get the modal
                var modal = document.getElementById('AttendeesModal');

                // Get the button that opens the modal
                var btn = document.getElementById("modalBtn");

                // Get the <span> element that closes the modal
                var span = document.getElementsByClassName("close")[0];

                // When the user clicks the button, open the modal 
                btn.onclick = function () {
                    modal.style.display = "block";
                }

                // When the user clicks on <span> (x), close the modal
                span.onclick = function () {
                    modal.style.display = "none";
                }

                // When the user clicks anywhere outside of the modal, close it
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            </script>
        </div>
        <%}%>
    </body>
</html>
