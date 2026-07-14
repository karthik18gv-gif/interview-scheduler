<%-- 
    Document   : InterviewGroup
    Created on : 28 Jan, 2012, 12:48:31 PM
    Author     : facultasphp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Groups</title>
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
                Interview Panel
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

      <%
        HttpSession sess=request.getSession(true);

        if (sess.getAttribute("admin").equals("123")) {
                        response.sendRedirect("EmployeeLogin.jsp");
                    } else {
            %>
             
        <form name="frmm" action="" style="font-size: 14px;color: white;font-family: fantacy">
        <%

        String sss="";
        String info="";
        info=(String)request.getParameter("info");
        sss=(String)request.getParameter("gname");
        %>
        <%
        if(info.equals("added"))
          {
            out.println("<center>ADDED SUCCESSFULLY</center>");
            out.println("<br>The <b>"+sss+"</b> interview Panel is added successfully");

        }
        else if(info.equals("deleted"))
          {
            out.println("<center>DELETED SUCCESSFULLY</center>");
            out.println("<br>The <b>"+sss+"</b> interview Panel is Deleted successfully");

        }
        else if(info.equals("updated"))
        {
             out.println("<center>UPDATED SUCCESSFULLY</center>");
            out.println("<br>The <b>"+sss+"</b> interview Panel is Updated successfully");
        }
        else if(info.equals("exists"))
        {
            out.println("<center>Already Exist</center>");
            out.println("<br/>The Panel name you have given is already exist");
            out.println("<br>please change this Panel <b>"+sss+"</b> name to some other");
            out.println("<br>Please click <b>back</b> button to change Panel name");
            %>

            <input  type="button" name="btn" value="Back" onclick="location.replace('Groups.jsp')">

<%
        }
        else
        {
            response.sendRedirect("Admin.jsp");
        }

        %>

        <input  type="button" name="btn" value="Home" onclick="location.replace('Admin.jsp')">
        </form>
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