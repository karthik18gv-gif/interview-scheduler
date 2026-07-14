<%-- 
    Document   : logout
    Created on : Jan 28, 2012, 6:03:01 PM
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
        sess.setAttribute("emply","123");
        String s="";
        sess.setAttribute("round", s);


        //sess.invalidate();
        response.sendRedirect("EmployeeLogin.jsp");

        %>
        <br/>
        <h2>Your Account has been successfully logged out</h2>
        <input type="button" value="Home" onclick="location.replace('EmployeeLogin.jsp')">
    </body>
</html>
