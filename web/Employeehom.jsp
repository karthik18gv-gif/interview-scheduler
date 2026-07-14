<%-- 
    Document   : Employeehom
    Created on : Feb 1, 2012, 6:35:34 PM
    Author     : PHP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Employee</title>
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
                Employee Page
            </h2>
                <h4 align="right"><a href="logout.jsp">logout</a></h4>
      </div>
	</div> <!-- end of templatemo_site_title_bar -->

    <div id="templatemo_menu">
	    <ul>
                <li><a href="EmployeeHome.jsp" class="current">Home</a></li>
        </ul>
    </div> <!-- end of templatemo_menu -->

    <div id="templatemo_content_wrapper">
    	<div id="templatemo_content">
            <!-- Content -->
            <form name="emhfrm" style="font-family:fantacy;font-size:14px;color: white">
       <%
        HttpSession sess = request.getSession(true);


                    if (sess.getAttribute("emply").equals("123")) {
                        response.sendRedirect("EmployeeLogin.jsp");
                    } else {
                        String usern = (String) sess.getAttribute("emply");
        String str = request.getParameter("alert");
                    if (str.equals("notassigned"))
                    {
                     out.println("The Candidate is not assigned for you please Check the ID");
                    }
        else if(str.equals("Wrong"))
        {
            out.println("Wrong Applicant ID Please Check ID");
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
