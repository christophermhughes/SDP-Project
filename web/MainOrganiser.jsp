<%-- 
    Document   : MainOrganiser
    Created on : Sep 6, 2018, 4:36:57 PM
    Author     : Ankush Yamarti
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="style.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Seminars Page</title>
    </head>
    <body>
        <div class="header">
            

            <div class="title">
                <h1>Manage Seminars</h1>
            </div>
            
             <ul class="nav">
                <li class= "nav"><a href="CreateSeminar.jsp"> Create Seminar </a> </li>
                <li class= "nav"><a href="logout.jsp"> Logout </a> </li>
            </ul>


        </div>

        <div class="content">

            <c:import url="WEB-INF\Seminars.xml"
                      var="inputDoc" />

            <c:import url="WEB-INF\SeminarsOrganiser.xsl"
                      var="stylesheet" />

            <x:transform xml  = "${inputDoc}" xslt = "${stylesheet}">        
                <x:param name="bgColor"  value="lightgreen" />
            </x:transform>
        </div>
    </body>
</html>
