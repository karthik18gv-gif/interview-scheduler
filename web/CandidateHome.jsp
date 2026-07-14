<%-- 
    Document   : ApplicantHome
    Created on : 28 Jan, 2012, 4:04:30 PM
    Author     : facultasphp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Candidate Home</title>
<meta name="keywords" content="simple orange, css template, free website layout, CSS, HTML" />
<meta name="description" content="simple orange is a free css template or website layout from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="drop.js">
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
                 Candidate Home
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
<br/><br/>
<h3 style="color: white">
    For Candidate Registration <a style="color: yellow" href="Registration.jsp">Click Here</a>
        <br/><br/><br/>

         For Status And Interview Details:
         <form style="font-size: 15px" name="applicantfrm" action="canstatus1">

        Enter your Candidate Id Here:
        <input type="text" name="candid3" onkeypress="return isNumberKey(event)">
        <input type="submit" value="Go" onclick="return check3()">
        </form>
        <script type="text/javascript">
            at_attach("p_rent", "ch_ld", "click", "y", "pointer");
        </script>





</h3>
        </div> <!-- end of tempaltemo content -->
        <div id="templatemo_footer">
            Copyright © 2012
        </div>
    </div><!-- end of templatemo_content_wrapper -->

</div> <!-- end of templatemo_container -->
</body>
</html>
