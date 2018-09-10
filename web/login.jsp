<%-- 
    Document   : login
    Created on : Aug 23, 2018, 4:37:54 PM
    Author     : Ankush Yamarti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Login</h1>
          <table width="100%" >
             <tr bgcolor="lightgrey" ><td align="right"> </td></tr>
        </table>
        <form action="MainOrganiser.jsp" >
         ID<br>
         <input type="text" name="ID"><br>
         Password<br>
         <input type="password" name="password"><br>
         <input type="submit" value="Login">
        </form>
    </body>
</html>
