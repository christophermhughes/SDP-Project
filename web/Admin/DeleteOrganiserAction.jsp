<%-- 
    Document   : CreateOrganiser
    Created on : Sep 10, 2018, 2:20:38 PM
    Author     : Ankush Yamarti
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="style.css">

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<% String filePath = application.getRealPath("WEB-INF/Organisers.xml");%>
<jsp:useBean id="organiserApp" class="model.OrganiserApplication" scope="application">
    <jsp:setProperty name="organiserApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>
<%
    String orgEmail = request.getParameter("email");
    Organisers organisers = organiserApp.getOrganisers();
    organisers.removeExistingOrganiser(orgEmail);
    organiserApp.updateXML(organisers, filePath);
    response.sendRedirect("AdminPage.jsp");
%>
<body>
</body>
</html>
