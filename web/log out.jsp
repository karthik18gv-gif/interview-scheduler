<%-- 
    Document   : log out
    Created on : Feb 1, 2012, 4:12:21 PM
    Author     : PHP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        HttpSession sess=request.getSession(false);
        sess.setAttribute("admin","123");

        //sess.invalidate();
        response.sendRedirect("EmployeeLogin.jsp");

        %>
    </body>
</html>
