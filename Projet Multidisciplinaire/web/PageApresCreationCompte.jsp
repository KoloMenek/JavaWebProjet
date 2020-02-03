<%-- 
    Document   : PageApresCreationCompte
    Created on : Feb 3, 2020, 11:14:45 AM
    Author     : kolomenek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page after registration</title>
    </head>
    <body>
        <h1>A venir</h1>
        <% String test = (String)request.getAttribute("retourServlet");
           out.println("<p>" + test +"</p>");
        %>
    </body>
</html>
