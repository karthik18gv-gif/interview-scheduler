<%-- 
    Document   : Admin
    Created on : Jan 17, 2012, 2:45:39 PM
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
                <h1 style="font-family: fantacy">
                Admin Page
            </h1>
       <h4 align="right"><a href="log out.jsp">logout</a></h4>
      </div>
	</div> <!-- end of templatemo_site_title_bar -->

    <div id="templatemo_menu">
	    <ul>
            <li><a href="Admin.jsp" class="current">Home</a></li>
            <li><a href="AddEmployee.jsp" class="current">Add Employee</a></li>
            <li><a href="DeleteEmployee.jsp" class="current">Delete Employee</a></li>
            <li><a href="Groups.jsp" class="current">Add Panel</a></li>
            <li><a href="PanelOptions.jsp" class="current">Edit/Delete Panel</a></li>
            
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

                        String un = (String) sess.getAttribute("admin");
        %>
        <h2>Welcome <%=un%></h2>        
        
        <form style="font-family: fantacy;font-size: 14px;color: white" name="emphomefrm1" action="candetails">
        To View Applicant Details and for Delete:<br/>
        Enter Candidate Id
        <input type="text" name="candid1" onkeypress="return isNumberKey(event)">

        <input type="submit" value="Go" onclick="return check1()">
        <br/><br/><br/><br/>
        <table cellspacing="3" cellpadding="3">
            <tr>
            <th>Candidate ID:</th>
            <th>Candidate Name:</th>
            <th>PG Degree</th>
            <th>UG Degree</th>            
            <th>Mobile Number</th>
            <th>Aptitude Round</th>
            <th>GD Round</th>
            <th>Technical Round</th>
            <th>HR Round</th>
            </tr>
            <%
            st=con.createStatement();
            rs=st.executeQuery("select * from canditate");
            while(rs.next())
                {
            %>
            <tr>
                <td align="center"><%=rs.getString("C_ID")%></td>
                <td align="center"><%=rs.getString("C_Name")+" "+rs.getString("L_Name")%></td>
                <td align="center"><%=rs.getString("pgdegree")+" "+rs.getString("pgmajor")%></td>
                <td align="center"><%=rs.getString("ugdegree")+"  "+rs.getString("ugmajor")%></td>               
                <td align="center"><%=rs.getString("Mobile_No")%></td>
                <td align="center"><%=rs.getString("Round1")%></td>
                <td align="center"><%=rs.getString("Round2")%></td>
                <td align="center"><%=rs.getString("Round3")%></td>
                <td align="center"><%=rs.getString("Round4")%></td>


            </tr>

            <%
            }
            %>
        </table>

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
