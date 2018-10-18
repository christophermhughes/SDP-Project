<%-- 
    Document   : CreateSeminar
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
<!-- Importing seminar data-->
<% String filePath = application.getRealPath("WEB-INF/Seminars.xml");%>
<jsp:useBean id="seminarApp" class="model.SeminarApplication" scope="application">
    <jsp:setProperty name="seminarApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<%  //Deleting the seminar
    String name = request.getParameter("seminarName");
    Seminars seminars = seminarApp.getSeminars();
    seminars.removeExistingSeminar(name);
    seminarApp.updateXML(seminars, filePath);
    session.setAttribute("deleteSeminar", "You have succesfully deleted the Seminar: " + name);
    response.sendRedirect("SeminarAction.jsp");
%>


<body>

</body>
</html>
