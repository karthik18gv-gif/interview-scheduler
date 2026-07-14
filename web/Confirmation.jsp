<%-- 
    Document   : can
    Created on : Jan 19, 2012, 2:58:57 PM
    Author     : PHP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@include file="connection.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Confirmation</title>
<meta name="keywords" content="simple orange, css template, free website layout, CSS, HTML" />
<meta name="description" content="simple orange is a free css template or website layout from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
	if (field.defaultValue == field.value) field.value = '';
	else if (field.value == '') field.value = field.defaultValue;
}
</script>
</head>
<body>
<div id="templatemo_container">
	<div id="templatemo_site_title_bar">
	    <div id="site_title">
                <h2 style="font-family: fantacy">
                Confirmation Page
            </h2>
      </div>
	</div> <!-- end of templatemo_site_title_bar -->

    <div id="templatemo_menu">
	    <ul>
                <li><a href="CandidateHome.jsp" class="current">Home</a></li>
        </ul>
    </div> <!-- end of templatemo_menu -->

    <div id="templatemo_content_wrapper">
    	<div id="templatemo_content">
            <!-- Content -->

<h4>Candidate Registration was Successfully</h4>

<table style="font-size: 15px">
        <%
        //HttpSession sess1 =request.getSession(true);
        String name=request.getParameter("cname");
        String idd=request.getParameter("cid");
        String pnl=request.getParameter("intergrp");




    %>
    <tr>
        <th>Candidate Name </th> <th>Candidate ID</th><th>Panel Name</th></tr>
    <tr> <td><%=name%></td><td align="center"><%=idd%></td><td><%=pnl%></td>
        <%

        %>
    </tr>

    <tr align="center"><td><input type="button" value="Home" onclick="location.replace('CandidateHome.jsp')"> </td>
        </table>



        </div> <!-- end of tempaltemo content -->
        <div id="templatemo_footer">
           
        </div>
    </div><!-- end of templatemo_content_wrapper -->

</div> <!-- end of templatemo_container -->
</body>
</html>