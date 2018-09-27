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
            <div  class="sidenav">
                <a href="MainAttendee.jsp">Seminars</a>
            </div>

            <div class="title">
                <h1>Login</h1>
            </div>

            
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
