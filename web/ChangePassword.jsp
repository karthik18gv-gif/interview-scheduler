<%-- 
    Document   : ChangePassword
    Created on : Feb 2, 2012, 11:58:28 AM
    Author     : PHP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Password Change</title>
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
                if(document.passfrm.newps.value==""||document.passfrm.newps.value==null)
                    {
                        alert("Enter the new Password")
                        document.passfrm.newps.focus()
                        return false
                    }
                if(document.passfrm.rnewps.value==""||document.passfrm.rnewps.value==null)
                    {
                        alert("Please re-enter the new password")
                        document.passfrm.rnewps.focus()
                        return false
                    }
                if(document.passfrm.newps.value!=document.passfrm.rnewps.value)
                    {
                        alert("New password and re-enter new password are not same /n *Please enter the same password")
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
                Change Password
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

          <h5 align="right"></h5>
          <br/>
          <form name="passfrm" action="changepassword" onsubmit="return valid()">
              <table width="250px" align="center">
                  <tr><th>Enter New Password:</th><td><input type="password" name="newps"></td></tr>
                  <tr><th>Re-Enter New Password:</th><td><input type="password" name="rnewps"></td></tr>
                  <tr><td></td><td align="left"><input type="submit" value="Change Password"></td></tr>
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
