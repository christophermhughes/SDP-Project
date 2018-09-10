<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
    </head>

    <body>
        <h1>Seminars</h1>
        <table width="100%" >
            <tr bgcolor="lightgrey" ><td align="right"> </td></tr>
            <tr><td align="right"><u><a href="login.jsp">Login</a></u></td></tr>
        </table>

        <c:import url="file:///C:\Users\Ankush Yamarti\Documents\GitHub\SDP-Project\build\web\WEB-INF\Seminars.xml"
                  var="inputDoc" />

        <!-- Replace the URL value with the location of movies.xsl on your PC-->
        <c:import url="C:\Users\Ankush Yamarti\Documents\NetBeansProjects\Demo-lec8-SOAP\web\movies.xml"
                  var="stylesheet" />

        <!-- Transform xml inputDoc using stylesheet -->
        <x:transform xml  = "${inputDoc}" xslt = "${stylesheet}">        
            <x:param name="bgColor"  value="lightgreen" />

        </body>
    </html>
