<%-- 
    Document   : SeminarAction.jsp
    Created on : 30/09/2018, 12:18:11 PM
    Author     : brand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Refresh" content="3; url=MainOrganiser.jsp">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- A temporary page that serves as a loading screen.-->
        <c:out value ="${createSeminar}"/>
        <c:out value ="${deleteSeminar}"/>
        <c:out value ="${updateSeminar}"/>
        <%
            if (session.getAttribute("createSeminar") != null) {
                session.removeAttribute("createSeminar");
            }
            if (session.getAttribute("deleteSeminar") != null) {
                session.removeAttribute("deleteSeminar");
            }
            if (session.getAttribute("updateSeminar") != null) {
                session.removeAttribute("updateSeminar");
            }

        %>

        <p>Click <a href="MainOrganiser.jsp">here</a> if you are not automatically redirected in 3 seconds </p>
    </body>
</html>
