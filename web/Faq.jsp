<%-- 
    Document   : Faq.jsp
    Created on : 17/10/2018, 9:10:10 AM
    Author     : brand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css?v=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seminar Management System</title>
    </head>
    <body>

        <div class="header">


            <div class="title">
                <h1>FAQ</h1>
            </div>

            <%
                // Have a login option if not logged in. Have several options for a logged in organiser.
                if (session.getAttribute("organiser") == null) {
            %>

            <ul class="nav">
                <li class= "nav"><a href="login.jsp"> Login </a> </li>
                <li class= "nav"><a href="https://www.youtube.com/watch?v=ln6d0Ju2jEM&list=PLE_hXZqpsCfi7ekruv9a63vm0VdQxBZZh" target="_blank"> Help </a> </li>
                <li class= "nav"><a href="Faq.jsp"> FAQ </a> </li>
            </ul>


            <%} else {%>
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
        <div class="content">
            <p>
                <i>If I have a problem with the system, what do I do? </i><br>
                Email or call our System Support centre at seminar_management@email.com or 0494838463<br><br>
                <i>What happened if I accidentally deleted my reservation?</i><br>
                You will be able to add yourself back into the seminar through our system if the seminar attendance is not of full capacity<br><br>
                <i>How do I create a seminar?</i><br>
                First, you need to have a UTS email. This will allow you to create a seminar straight away. If you want to know the steps, there is a easy tutorial on the web site under the help tab.<br><br>
                <i>My username and password is not working what do I do?</i><br>
                Please email or call our System Support centre at seminar_management@email.com or 0494838463<br><br>
                <i>I can’t create a seminar?</i><br>
                Please go to the Help section on our website where we have easy to follow instruction video. If you believe this is a system error, please email or call our System Support centre at seminar_management@email.com or 0494838463<br><br>
            </p>       

        </div>
    </body>
</html>
