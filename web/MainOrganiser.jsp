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
    <link rel="stylesheet" type="text/css" href="style.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                <h1>Manage Seminars</h1>
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
         <table width="100%" >
             <tr bgcolor="lightgrey" ><td align="right"> </td></tr>
             <tr><td align="right"><u><a href="CreateSeminar.jsp">Create Seminar</a></u></td></tr>
        </table>
        
         <c:import url="WEB-INF\Seminars.xml"
                  var="inputDoc" />

        <c:import url="WEB-INF\Seminars.xsl"
                  var="stylesheet" />

        <x:transform xml  = "${inputDoc}" xslt = "${stylesheet}">        
            <x:param name="bgColor"  value="lightgreen" />
         </x:transform>
        
    </body>
</html>
