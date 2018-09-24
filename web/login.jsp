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
            <div id="mySidebar" class="sidebar">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
                <a href="CreateSeminar.jsp">Create Seminar</a>
                <a href="#">Attendees</a>
            </div>

            <div id="main">
                <button class="openbtn" onclick="openNav()">☰</button>  
                <h1>Login</h1>
            </div>

            <script>
                function openNav() {
                    document.getElementById("mySidebar").style.width = "250px";
                    document.getElementById("main").style.marginLeft = "250px";
                }

                function closeNav() {
                    document.getElementById("mySidebar").style.width = "0";
                    document.getElementById("main").style.marginLeft = "0";
                }
            </script>
            
        </div>
        <div class="content">
            <form class="loginForm" action="loginAction.jsp" >
                <div class=buttonHolder>
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
                    
                    
                    <br>
                    <input type="submit" value="Login">
                </div>
            </form>
        </div>
        
        <%
            session.invalidate();
        %>
        
    </body>
</html>
