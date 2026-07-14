<%-- 
    Document   : Home
    Created on : Jan 27, 2012, 12:43:38 PM
    Author     : PHP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login page</title>
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
                //var uname= document.frm.username
                //var pas=document.frm.pass
                if((document.frm.username.value==null)||(document.frm.username.value=="")){
                    alert("Please Enter the username");
                    document.frm.username.focus()
                    return false;
                }
                if((document.frm.pass.value==null)||(document.frm.pass.value==""))
                    {
                        alert("please Enter the password");
                        document.frm.pass.focus()
                        return false;
                    }
                    return true;
            }
</script>
</head>
<body>
<div id="templatemo_container">
	<div id="templatemo_site_title_bar">
	    <div id="site_title">
                <h2 style="font-family: fantacy">
                Employee And Admin Login
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

<form name="frm" method="post" action="Login" onsubmit="return valida()">

    <table width="250px" align="center">
            <tr><th>username:</th><td><input type="text" name="username"></td></tr><br/>
            <tr><th> Password:</th><td><input type="password" name="pass"> </td></tr><br/>
            <tr><td></td><td align="center" rowspan="5"><input type="submit" align="bottom" value="submit"></td></tr>

            </table>

        </form>





        </div> <!-- end of tempaltemo content -->
        <div id="templatemo_footer">
            Copyright © 2012
        </div>
    </div><!-- end of templatemo_content_wrapper -->

</div> <!-- end of templatemo_container -->
</body>
</html>
