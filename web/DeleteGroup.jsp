<%-- 
    Document   : DeleteGroup
    Created on : Jan 30, 2012, 4:41:03 PM
    Author     : PHP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connection.jsp" %>

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
function valid()
            {
             if(document.dgrpfrm.delgrp.value==""||document.dgrpfrm.delgrp.value=="")
                 {
                     alert("Please Select a group to Delete it")
                     return false
                 }
            }
</script>
</head>
<body>
<div id="templatemo_container">
	<div id="templatemo_site_title_bar">
	    <div id="site_title">
                <h2 style="font-family: fantacy">
                Delete Interview Panel Page
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
        <center><h2>Delete Panel</h2></center>

        <form style="font-size: 14px;color: white;font-family: fantacy" name="dgrpfrm" action="deletegroup" onsubmit="return valid()">

        <%
        st=con.createStatement();
        rs=st.executeQuery("select Panel_Name from panel");
        %>
        Please Select Which Panel you want to delete from below options:
        <select name="delgrp">
            <option value="">Select</option>
            <%
             while(rs.next())
             {

            %>
            <option><%=rs.getString("Panel_Name") %></option>
            <%
             }
%>
        </select>
        <br/><br/><br/><br/>
        <p align="center">
        <input type="submit" value="Delete">
        <input type="button" value="Back" onclick="location.replace('Admin.jsp')">
        </p>
        </form>
        <%
        }
        %>





        </div> <!-- end of tempaltemo content -->
        <div id="templatemo_footer">
            
        </div>
    </div><!-- end of templatemo_content_wrapper -->

</div> <!-- end of templatemo_container -->
</body>
</html>