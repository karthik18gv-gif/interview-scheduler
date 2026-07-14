<%-- 
    Document   : CandidateStatus
    Created on : 28 Jan, 2012, 4:34:34 PM
    Author     : facultasphp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Candidate Status Page</title>
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
                Candidate Status
            </h2>
      </div>
	</div> <!-- end of templatemo_site_title_bar -->

    <div id="templatemo_menu">
	    <ul>
                <li><a href="index.jsp" class="current">Home</a></li>
        </ul>
    </div> <!-- end of templatemo_menu -->

    <div id="templatemo_content_wrapper">
    	<div id="templatemo_content">
            <!-- Content -->
<%
        String s1=request.getParameter("candidatename");
        String s2=request.getParameter("candidateid");
        String s3=request.getParameter("intergrp");

        String cs1=request.getParameter("curstatus1");
        String cs2=request.getParameter("curstatus2");
        String cs3=request.getParameter("curstatus3");
        String cs4=request.getParameter("curstatus4");

        %>
        <br/>
        <%
        if(cs1.equals("Cleared")&&cs2.equals("Cleared")&&cs3.equals("Cleared")&&cs4.equals("Cleared"))
        {
        %>
        <h3 style="font-size:16px;color: orange" align="center">You are RECRUITED</h3>
        <%
        }
        %>
        <br/>
        <table style="color: white;font-size: 15px">
            <tr><th>Candidate Name:</th><td><%=s1%></td></tr>
        <tr><th>Candidate Id:</th><td><%=s2%></td></tr>
        <tr><th>Candidate Current Status</th></tr>
        <tr><th>Aptitude Round:</th><td><%=cs1%></td></tr>
        <tr><th>Group Discussion Round:</th><td><%=cs2%></td></tr>
        <tr><th>Technical Round:</th><td><%=cs3%></td></tr>
        <tr><th>HR Round:</th><td><%=cs4%></td></tr>
        
        <tr><th>Candidate Interview Group:</th><td><%=s3%></td></tr>
        <tr><td></td><td>
        <input type="button" value="Back" onclick="location.replace('CandidateHome.jsp')"/>
            </td></tr>
        </table>
        


        </div> <!-- end of tempaltemo content -->
        <div id="templatemo_footer">
           
        </div>
    </div><!-- end of templatemo_content_wrapper -->

</div> <!-- end of templatemo_container -->
</body>
</html>
