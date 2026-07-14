<%-- 
    Document   : AddEmployee
    Created on : Jan 30, 2012, 10:07:24 AM
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
<link href="calendar.css" rel="stylesheet" type="text/css">
<script language="javaScript" type="text/javascript" src="calendar_us.js"></script>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
	if (field.defaultValue == field.value) field.value = '';
	else if (field.value == '') field.value = field.defaultValue;
}
function echeck(str) {

		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1)
		 return false;
		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr)
		 return false;
		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr)
		 return false;
		if (str.indexOf(at,(lat+1))!=-1)
		 return false;
		if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot)
		 return false;
		if (str.indexOf(dot,(lat+2))==-1)
		 return false;
		if (str.indexOf(" ")!=-1)
		 return false;

 		 return true;
	}
            function empvalida()
            {
                if(document.addefrm.empfname.value==""||document.addefrm.empfname.value==null)
                    {
                        alert("please enter Employee First name")
                        return false
                    }
                if(document.addefrm.emplname.value==""||document.addefrm.emplname.value==null)
                    {
                        alert("please enter Employee Last name")
                        return false
                    }
                if(document.addefrm.empdob.value==""||document.addefrm.empdob.value==null)
                    {
                        alert("please enter Employee Date of birth")
                        return false
                    }
                if(document.addefrm.empfh.value==""||document.addefrm.empfh.value==null)
                    {
                        alert("please enter Employee Father/Husband name")
                        return false
                    }
                if(document.addefrm.empmob.value==""||document.addefrm.empmob.value==null)
                    {
                        alert("please enter Employee Mobile Number")
                        return false
                    }
                if(document.addefrm.empdesig.value==""||document.addefrm.empdesig.value==null)
                    {
                        alert("please enter Employee Designation")
                        return false
                    }

                if(document.addefrm.empaddress.value==""||document.addefrm.empaddress.value==null)
                    {
                        alert("please enter Employee Address")
                        return false
                    }
                if(document.addefrm.empemail.value==""||document.addefrm.empemail.value==null)
                    {
                        alert("please enter Employee Email")
                        return false
                    }
                else
                {
                  if(echeck(document.addefrm.empemail.value)==false)
                      {
                          alert("\n * Invalid E-Mail ID Please Enter a valid Email id")
                          return false
                      }
                 }
                 if(document.addefrm.emppass.value==""||document.addefrm.emppass.value==null)
                    {
                        alert("please enter Employee Password")
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
                Add HR To Recruitment Department
            </h2>
                <h3 style="font-family: fantacy" align="right"><a href="log out.jsp">logout</a></h3>
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

        if (sess == null || sess.getAttribute("admin") == null)
        {
            response.sendRedirect("EmployeeLogin.jsp");
            return;
        }
                else {
            %>
        
        <form name="addefrm" action="Empregister" onsubmit="return empvalida()">
            
            <table style="font-size: 15px" align="center">

        <tr><th>Employee First Name:</th><td><input type="text" name="empfname"></td></tr>
        <tr><th>Employee Middle Name:</th><td><input type="text" name="empmname"></td></tr>
        <tr><th>Employee Last Name:</th><td><input type="text" name="emplname"></td></tr>
        <tr><th>Date Of Birth:</th><td><input type="text" name="empdob" readonly>
            <script language="JavaScript">
    new tcal ({
        // form name
        'formname': 'addefrm',
        // input name
        'controlname': 'empdob'
    });

    </script>

            </td></tr>
        <tr><th>Gender:</th><td> <select name="empgen">
            <option value="Male">Male</option>
            <option value="Female">Female</option>
        </select></td></tr>
        <tr><th>Father's/Husband's Name:</th><td><input type="text" name="empfh"></td></tr>
        <tr><th>Contact Number :</th><td><input type="text" name="empmob"></td></tr>
        <tr><th>Employee Email(login username):</th><td><input type="text" name="empemail"></td></tr>
        <tr><th>Employee Password(login password):</th><td><input type="text" name="emppass"></td></tr>
        <tr><th>Employee Designation:</th><td><input type="text" name="empdesig"></td></tr>
        <tr><th>Employee Address:</th><td>
        <textarea rows="10" cols="20" name="empaddress"></textarea>
        </td></tr>
        <tr><td align="right"><input type="submit" value="Add Employee"></td>
        <td><input type="button" value="Back" onclick="location.replace('Admin.jsp')">
        </td></tr>
                </table>    
            
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
