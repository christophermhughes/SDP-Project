<%-- 
    Document   : PrintTags
    Created on : Oct 8, 2018, 1:27:19 PM
    Author     : Ankush Yamarti
--%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <% String filePathTwo = application.getRealPath("WEB-INF/AttendeeResults.xml");%>
        <jsp:useBean id="attendeeApp" class="model.AttendeeApplication" scope="application">
            <jsp:setProperty name="attendeeApp" property="filePath" value="<%=filePathTwo%>"/>
        </jsp:useBean>
<html>  
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body class="body">
        <span class="span">
        <c:import url="WEB-INF\AttendeeResults.xml"
                  var="inputDoc" />

        <c:import url="WEB-INF\AttendeeTags.xsl"
                  var="stylesheet" />

        <x:transform xml  = "${inputDoc}" xslt = "${stylesheet}">        
            <x:param name="bgColor"  value="lightgreen" />
        </x:transform>
        </span>

</body>


</html>