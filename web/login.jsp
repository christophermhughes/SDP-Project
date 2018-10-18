<%-- 
    Document   : login
    Created on : Aug 23, 2018, 4:37:54 PM
    Author     : Ankush Yamarti
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="style.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <div class="header">

            <div class="title">
                <h1>Login</h1>
            </div>

            <ul class="nav">
                <li class= "nav"><a href="MainAttendee.jsp"> Seminars </a> </li>
                <li class= "nav"><a id="helpBtn"> Help </a> </li>
                <li class= "nav"><a href="Faq.jsp"> FAQ </a> </li>
                <li class= "nav"><a href="login.jsp" class="active"> Login </a> </li>
            </ul>


        </div>
        <div class="content">
            <form class="loginForm" action="loginAction.jsp" >

                <input type="text" name="email" placeholder="Username"><br>
                <br>   
                <input type="password" name="password" placeholder="Password"><br>
                <br>

                <c:if test="${emailErr!=null}">
                    <font color="red"><c:out value ="${emailErr}"/></c:if></font>
                <c:if test="${passwordErr!=null}"> 
                    <font color="red"><c:out value ="${passwordErr}"/></c:if></font>
                <c:if test="${emptyErr!=null}">
                    <font color="red"><c:out value="${emptyErr}"/></c:if></font>
                <c:if test="${existErr!=null}">
                    <font color="red"><c:out value="${existErr}"/></c:if></font>
                <c:if test="${wrongPassword!=null}">
                    <font color="red"><c:out value="${wrongPassword}"/></c:if></font>

                    <div class=buttonHolder>
                        <br>
                        <input type="submit" value="Login">
                    </div>
                </form>
            </div>

        <%
            session.invalidate();
        %>

        <!-- The Modal -->
        <div id="popup" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                <span class="close">&times;</span>
                <h1>Help</h1>
                <p> The following playlist demonstrates how to perform specific functions on this site</p> 
                <iframe width="420" height="345" src="https://www.youtube.com/embed/ln6d0Ju2jEM?list=PLE_hXZqpsCfi7ekruv9a63vm0VdQxBZZh" allowfullscreen>
                </iframe>
            </div>

        </div>

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
