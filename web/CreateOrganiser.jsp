<%-- 
    Document   : CreateSeminar
    Created on : Sep 10, 2018, 2:20:38 PM
    Author     : Ankush Yamarti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="style.css">
   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class ="header">
                <h1>Hello World!</h1>
            </div>

            <div class ="content">
                <form class="form" action="CreateOrganiserAction.jsp" method="post">
                    First Name<br>
                    <input type="text" name="firstName"><br>
                    Last Name<br>
                    <input type="text" name="lastName"><br>
                    Phone<br>
                    <input type="text" name="phoneNumber"><br>
                    Email<br>
                    <input type="text" name="email"><br>
                    Password<br>
                    <input type="password" name="password"><br>
                    Faculty<br>
                    <input type="text" name="faculty"><br>
                    
                    <input type="submit" value="Add organiser"><br>
                    
                    <c:if test="${emptyErr!=null}">
                    <font color="red"><c:out value ="${emptyErr}"/></c:if></font>
                    <c:if test="${nameErr!=null}">
                    <font color="red"><c:out value ="${nameErr}"/></c:if></font>
                    <c:if test="${emailErr!=null}">
                    <font color="red"><c:out value ="${emailErr}"/></c:if></font>
                    <c:if test="${passwordErr!=null}">
                    <font color="red"><c:out value ="${passwordErr}"/></c:if></font>
                    <c:if test="${existErr!=null}">
                    <font color="red"><c:out value ="${existErr}"/></c:if></font>
                    
                </form> 
            </div>
        </div>
        
        
        <%
            session.invalidate();
        %>
    </body>
</html>
