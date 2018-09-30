<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="style.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
    </head>

    <body>
        <div class="header">
            

            <div class="title">
                <h1>Seminar Details</h1>
            </div>

            <ul class="nav">
                <li class= "nav"><a href="login.jsp"> Login </a> </li>
            </ul>

        </div>
        <table width="100%" >
            <tr><td align="right"><u><a href="login.jsp">Login</a></u></td></tr>
        </table>

        <c:import url="WEB-INF\Seminars.xml"
                  var="inputDoc" />

        <c:import url="WEB-INF\SeminarsOrganiser.xsl"
                  var="stylesheet" />

        <x:transform xml  = "${inputDoc}" xslt = "${stylesheet}">        
            <x:param name="bgColor"  value="lightgreen" />
        </x:transform>
    </body>
</html>
