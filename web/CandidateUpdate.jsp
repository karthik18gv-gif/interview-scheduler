<%-- 
    Document   : CandidateUpdate
    Created on : Jan 23, 2012, 5:26:05 PM
    Author     : PHP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Candidate Update</title>
<meta name="keywords" content="simple orange, css template, free website layout, CSS, HTML" />
<meta name="description" content="simple orange is a free css template or website layout from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
	if (field.defaultValue == field.value) field.value = '';
	else if (field.value == '') field.value = field.defaultValue;
}
function valida()
            {
                if(document.updateform.updatestatus.value=="")
                    {
                        alert("Please Update the current Status Of the applicant")
                        return false
                    }
                if(document.updateform.ccomment.value=="")
                    {
                        alert("Please Give some comment for the Candidate")
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
                        String usern = (String) sess.getAttribute("emply");
        %>
        
        <form name="updateform" action="updatestatus">
            <div style="font-size:14px;color: white">

        <%

        String cname=(String)request.getParameter("name");
        String cid=(String)request.getParameter("id");
        String gender=(String)request.getParameter("gender");
        String dob=(String)request.getParameter("dob");
        String email=(String)request.getParameter("email");
        String mobile=(String)request.getParameter("mobileno");
        String pgfull=(String)request.getParameter("pgdegree");
        String ugfull=(String)request.getParameter("ugdegree");
        String xiifull=(String)request.getParameter("xiischool");
        String xfull=(String)request.getParameter("xschool");
        String address=(String)request.getParameter("address");
        String status1=(String)request.getParameter("status1");
        String status2=(String)request.getParameter("status2");
        String status3=(String)request.getParameter("status3");
        String status4=(String)request.getParameter("status4");
        String comments=(String)request.getParameter("comments");


        %>
        <table align="center">
        <tr><th>Candidate Name:</th><td><%=cname%></td></tr>
        <tr><th>Candidate ID:</th><td><input type="text" name="cids" value="<%=cid%>" readonly></td></tr>
        <tr><th>Gender:</th><td><%=gender%></td></tr>
        <tr><th>Date Of Birth:</th><td><%=dob%></td></tr>
        <tr><th>E-Mail ID:</th><td><%=email%></td></tr>
        <tr><th>Mobile Number:</th><td><%=mobile%></td></tr>
        <tr><th>Educational Qualifacation</th></tr>
        <tr><th>PG:</th><td><%= pgfull %></td></tr>
        <tr><th>UG:</th><td><%=ugfull%></td></tr>
        <tr><th>XII Standard:</th><td> <%=xiifull%></td></tr>
        <tr><th>X Standard:</th><td><%=xfull%></td></tr>
        <tr><th>Address:</th><td><%=address%></td></tr>
        <tr><th>Current Status</th></tr>
        <tr><th>Round 1:</th><td><%=status1%></td></tr>
        <tr><th>Round 2:</th><td><%=status2%></td></tr>
        <tr><th>Round 3:</th><td><%=status3%></td></tr>
        <tr><th>Round 4:</th><td><%=status4%></td></tr>            
        
        <tr><th>Update Status:</th><td>
                <select name="updatestatus" >
                    <option value="">select</option>
                    <option value="Cleared">Cleared </option>
                    <option value="Not Cleared">Not Cleared</option>
                </select></td></tr>
        <tr><th>Comments:</th><td><textarea rows="10" cols="20" name="ccomment"><%=comments%></textarea>
            </td></tr>
        <tr><td align="right"><input type="submit" value="Update" onclick="return valida()"></td>
        <td><input type="button" value="Back" onclick="location.replace('EmployeeHome.jsp')">
        </td></tr>
        </table>
            </div>
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
