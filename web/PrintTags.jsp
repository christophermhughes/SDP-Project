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
        <style>
.body{
  padding-top: 100px;
  padding-right: 250px;
  padding-bottom: 80px;
  padding-left: 250px;
  text-align: left;
  font-family: monaco, monospace;
  background: grey;
  background-size: cover;
  .span {
  background-color: white;
  padding-top: 30px;
  padding-right: 150px;
  padding-bottom: 80px;
  padding-left: 150px;
}
</style>
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