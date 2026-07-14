<%-- 
    Document   : index
    Created on : Jan 17, 2012, 12:31:04 PM
    Author     : PHP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
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
                <h1 style="font-family: fantacy">
                Automation Of Interview Scheduling Process <span></span>
            </h1>
      </div>
	</div> <!-- end of templatemo_site_title_bar -->

    <div id="templatemo_menu">
	    <ul>
            <li><a href="index.jsp" class="current">Home</a></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div> <!-- end of templatemo_menu -->

    <div id="templatemo_content_wrapper">

    	<div id="templatemo_content">

        	<div id="side_column">

                <div class="side_column_box" >
                    
                    <h2>Employee Login</h2>
                    <a href="EmployeeLogin.jsp"><input type="button" value="Login"></a>
                    </div>

                


            </div> <!-- end of side column -->

            <div id="main_column">
                <h2 align="center">For Candidate Registration And Status</h2>
                <center><a href="CandidateHome.jsp">
                    <input type="button" value="Click Here">
                    </a></center>

<br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/>

            </div> <!-- end of main column -->
            <div class="cleaner"></div>
        </div> <!-- end of tempaltemo content -->


        <div id="templatemo_footer">
            Copyright © 2012
        </div>

        <div class="cleaner"></div>
    </div> <!-- end of templatemo_content_wrapper -->

</div> <!-- end of templatemo_container -->

</body>
</html>