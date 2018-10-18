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
            <!-- Simple form information for explaining the system. -->
            <ul class="nav">
                <li class= "nav"><a href="MainAttendee.jsp">Seminars </a> </li>
                <li class= "nav"><a id="helpBtn"> Help </a> </li>
                <li class= "nav"><a href="Faq.jsp" class="active"> FAQ </a> </li>
                <li class= "nav"><a href="login.jsp"> Login </a> </li>
            </ul>


            <%} else {%>
            <ul class="nav">
                <li class= "nav"><a href="MainOrganiser.jsp"> My Seminars </a> </li>
                <li class= "nav"><a href="MainAttendee.jsp"> All Seminars </a> </li>
                <li class= "nav"><a href="CreateSeminar.jsp"> Create Seminar </a> </li>
                <li class= "nav"><a id="helpBtn"> Help </a> </li>
                <li class= "nav"><a href="Faq.jsp" class="active"> FAQ </a> </li>
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
            
            <!-- The Modal -->
        <div id="popup" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                <span class="close">&times;</span>
                <h1>Help</h1>
                <p> The following playlist demonstrates how to perform specific functions on this site</p>
                <iframe width="420" height="345" src="https://www.youtube.com/embed/jDC_Yqi2u04?list=PLE_hXZqpsCfi7ekruv9a63vm0VdQxBZZh" allowfullscreen>
                </iframe>
            </div>

        </div>
            <!-- Script for the pop-up-->
        <script>
            // Get the modal
            var modal = document.getElementById('popup');

            // Get the button that opens the modal
            var btn = document.getElementById("helpBtn");

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
    </body>
</html>
