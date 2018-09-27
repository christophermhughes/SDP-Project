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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Admin Main page</h1>
         <table width="100%" >
             <tr bgcolor="lightgrey" ><td align="right"> </td></tr>
             <tr><td align="right"><u><a href="CreateOrganiser.jsp">Add Organiser</a></u></td></tr>
        </table>
        <a href="logout.jsp">Logout</a>
        
         <c:import url="WEB-INF\Organisers.xml"
                  var="inputDoc" />

        <c:import url="WEB-INF\Organisers.xsl"
                  var="stylesheet" />

        <x:transform xml  = "${inputDoc}" xslt = "${stylesheet}">        
            <x:param name="bgColor"  value="lightgreen" />
         </x:transform>
        
    </body>
</html>
