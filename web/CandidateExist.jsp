<%-- 
    Document   : CandidateExist
    Created on : Jan 30, 2012, 2:00:13 PM
    Author     : PHP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Candidate</title>
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
                Candidate Page
            </h2>
      </div>
	</div> <!-- end of templatemo_site_title_bar -->

    <div id="templatemo_menu">
	    <ul>
            <li><a href="Admin.jsp" class="current">Home</a></li>
        </ul>
    </div> <!-- end of templatemo_menu -->

    <div id="templatemo_content_wrapper">
    	<div id="templatemo_content">
            <!-- Content -->
     <form name="existform" style="color: white;font-size: 15px;font-family:fantacy">
             <% String s1=request.getParameter("alert");
           String s2=s2=request.getParameter("alcid");
        %>

         <%
         if(s1!=null)
             {
         if(s1.equals("alreadyRegistered"))
         {
             out.println("<h3>This profile has been already registered please the check status for info</h3>");
             out.println("<br/><br/>");
             out.println("Your Applicant(Candidate) ID is <b>"+s2+"</b>");
         }
         if(s1.equals("wrong"))
         {
             out.println("<h3>Wrong Applicant ID</h3>");
             out.println("<br/><br/>");

         }
         }
         else if(s1.equals(null))
         {
             response.sendRedirect("CandidateHome.jsp");
           }
             %>
             <input type="button" value="Back" onclick="location.replace('CandidateHome.jsp')">


     </form>
        </div> <!-- end of tempaltemo content -->
        <div id="templatemo_footer">
            Copyright © 2012
        </div>
    </div><!-- end of templatemo_content_wrapper -->

</div> <!-- end of templatemo_container -->
</body>
</html>