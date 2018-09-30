<%-- 
    Document   : MainOrganiser
    Created on : Sep 6, 2018, 4:36:57 PM
    Author     : Ankush Yamarti
--%>
<%@page import="model.Seminars"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="style.css">
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
    </head>
    <body>
        
        
                <div class="header">

            <div class="title">
                <h1>Manage Seminars</h1>
            </div>

            <ul class="nav">
                <li class= "nav"><a href="ViewSeminarsOrganiser.jsp"> View Seminars </a> </li>
                <li class= "nav"><a href="CreateSeminar.jsp"> Create Seminar </a> </li>
                <li class= "nav"><a href="logout.jsp"> Logout </a> </li>
            </ul>


        </div>
        
        <c:out value ="${createSeminar}"/>
        <c:out value ="${deleteSeminar}"/>
        <%
        if(session.getAttribute("createSeminar") != null){
            session.removeAttribute("createSeminar");
        }
        if(session.getAttribute("deleteSeminar") != null){
            session.removeAttribute("deleteSeminar");
        }

        %>
        
        


    </body>
</html>
