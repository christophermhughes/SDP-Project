<%-- 
    Document   : CreateSeminarAction
    Created on : 20/09/2018, 1:57:37 PM
    Author     : brand
--%>

<%@page import="LogReg.SeminarValidator"%>
<%@page import="java.util.UUID"%>
<%@page import="model.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Seminar</title>
    </head>
    <body>
        <h1>Create Seminar</h1>

        <% String filePath = application.getRealPath("WEB-INF/Seminars.xml");%>
        <jsp:useBean id="seminarApp" class="model.SeminarApplication" scope="application">
            <jsp:setProperty name="seminarApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>


        <% Seminars seminars = seminarApp.getSeminars();%>

        <%
            // Get the organiser from the session
            Organiser organiser = (Organiser) session.getAttribute("organiser");
            String seminarID = UUID.randomUUID().toString();
            String seminarName = request.getParameter("name");
            String desc = request.getParameter("description");
            String speaker = request.getParameter("speaker");
            String speakerBio = request.getParameter("speakerBio");
            String host = request.getParameter("host");
            String date = request.getParameter("date");
            String time = request.getParameter("time");
            String duration = request.getParameter("duration");
            String venue = request.getParameter("venue");
            String venueCapacity = request.getParameter("venueCapacity");
            String email = organiser.getEmail();

            SeminarValidator validator = new SeminarValidator();
            
            //Validation of the previous form information
            if (validator.checkEmpty(seminarName, desc, speaker, speakerBio, date, time, duration, venue)) {
                session.setAttribute("emptyErr", "Please fill in the empty field.");
                response.sendRedirect("CreateSeminar.jsp");
            } else {
                if (!validator.validateName(seminarName) || !validator.validateName(speaker) || !validator.validateName(host)) {
                    session.setAttribute("nameErr", "Name format for seminar, speaker or host is incorrect, please only use letters");
                    response.sendRedirect("CreateSeminar.jsp");
                } else if (seminars.getSeminarName(seminarName) != null) {
                    session.setAttribute("existErr", "Sorry, there is already a seminar with that name");
                    response.sendRedirect("CreateSeminar.jsp");
                } else if(!validator.validateDate(date)){
                    session.setAttribute("dateErr", "Date format is incorrect, please use the date picker to select a date");
                    response.sendRedirect("CreateSeminar.jsp");
                }
                else if(!validator.validateTime(time)){
                    session.setAttribute("timeErr", "Time format is incorrect, please use the time picker to select a time");
                    response.sendRedirect("CreateSeminar.jsp");
                }
                else if(!validator.validateVenueCapacity(venueCapacity)){
                    session.setAttribute("venueCapErr", "Please type in a number for venue capacity");
                    response.sendRedirect("CreateSeminar.jsp");
                }

                 else {
                    Seminar seminar = new Seminar(seminarID, seminarName, desc, speaker, speakerBio, host, date, time, duration, venue, venueCapacity, email);
                    seminars.addSeminar(seminar);
                    seminarApp.updateXML(seminars, filePath);
                    session.setAttribute("createSeminar", "You have successfully created the Seminar: " + seminarName);
                    response.sendRedirect("SeminarAction.jsp");

                }
            }

        %>







    </body>
</html>
