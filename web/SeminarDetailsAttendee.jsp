<%-- 
    Document   : SeminarDescription
    Created on : 10/09/2018, 3:23:20 PM
    Author     : brand
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <link rel="stylesheet" type="text/css" href="style.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seminar Details</title>
    </head>
    <body>
        <form class="form" action="MainOrganiser.jsp" method="post">
            Seminar Name<br>
            <input type="text" name="SemName"><br>
            Time<br>
            <input type="text" name="Time"><br>
            Date<br>
            <input type="text" name="Date"><br>
            Location<br>
            <input type="text" name="Location"><br>
            Description<br>
            <input type="text" name="Descp"><br>
            Staff Organizer<br>
            <input type="text" name="StaffName"><br>
            <br>
            <input type="submit" value="Update Seminar">
        </form> 
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
  <form action="/action_page.php" class="form-container">
    <h1>Login</h1>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>First Name</b></label>
    <input type="text" placeholder="Enter First Name" name="Fname" required>
    
    <label for="psw"><b>Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" name="Lname" required>
    
    <label for="psw"><b>Phone no</b></label>
    <input type="text" placeholder="Enter Phone no" name="Pno" required>

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
