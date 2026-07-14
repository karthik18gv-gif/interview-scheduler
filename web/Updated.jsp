<%-- 
    Document   : Updated
    Created on : Jan 27, 2012, 3:25:44 PM
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
                <h2 style="font-family: fantacy">
                    Candidate Update
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

     <%
                    HttpSession sess = request.getSession(true);


                    if (sess.getAttribute("emply").equals("123")) {
                        response.sendRedirect("EmployeeLogin.jsp");
                    } else {

                        %>
        <%
        String id=request.getParameter("id");
        //String s=request.getParameter("");
        %>
        <h3>Updated</h3><br/>
        <h3>Candidate profile has been update for the candidate ID:<%=id%> </h3>
        <input type="button" value="Home" onclick="location.replace('EmployeeHome.jsp')">
        <%
        }
            %>





        </div> <!-- end of tempaltemo content -->
        <div id="templatemo_footer">
            Copyright © 2012
        </div>
    </div><!-- end of templatemo_content_wrapper -->

</div> <!-- end of templatemo_container -->
</body>
</html>
