<%-- 
    Document   : StatusEmployee
    Created on : Jan 30, 2012, 3:41:33 PM
    Author     : PHP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin</title>
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
                Employee Status
            </h2>
                <h4 align="right"><a href="log out.jsp">logout</a></h4>
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
<form name="stsfrm" style="font-size: 14px;font-family: fantacy;color: white">
   <%
        HttpSession sess=request.getSession(true);

        if (sess.getAttribute("admin").equals("123")) {
                        response.sendRedirect("EmployeeLogin.jsp");
                    } else {
            %>



        <%

        String str=(String)request.getParameter("status");
        if(str.equals("updated"))
        {
            out.print("Employee Added into the Recruitment Department List");
        }
        else if(str.equals("deleted"))
        {
            out.println("<b>Employee Deleted Successfully</b>");
        }
        else if(str.equals("exist"))
        {
            out.print("<h3>Employee Already in the Recruitment Department List</h3>");
          %>
         <br/> <br/><input type="button" value="Back" onclick="location.replace('AddEmployee.jsp')">
        <%

            %>

<%
        }
        else if(str.equals("existingroup"))
            {
            out.println("<h3>The Employee is allocated in interview groups </h3>");
            out.println("<br/>So First delete Employee from the group");

            %>

        <%
        }
        %>
        
        <%
        }
        %>




</form>
        </div> <!-- end of tempaltemo content -->
        <div id="templatemo_footer">
            Copyright © 2012
        </div>
    </div><!-- end of templatemo_content_wrapper -->

</div> <!-- end of templatemo_container -->
</body>
</html>
