<%-- 
    Document   : OfferLetter
    Created on : Feb 4, 2012, 2:33:25 PM
    Author     : PHP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connection.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>OFFER LETTER</title>
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
                Confirmation Letter
            </h1>
       <h4 align="right"><a href="log out.jsp">logout</a></h4>
      </div>
	</div> <!-- end of templatemo_site_title_bar -->

    <div id="templatemo_menu">
	    <ul>
            
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
                        String appid=(String)request.getParameter("a");
        %>
        
        <form style="font-size:17px;color:violet" name="offerfrm" action="">
        <%
        st=con.createStatement();
        rs=st.executeQuery("select * from canditate where C_ID="+appid+"");
        if(rs.next()==true)
            {
        %>
        To<br/><br/>
        <%=rs.getString("C_Name")%> <%=rs.getString("M_Name")%> <%=rs.getString("L_Name")%><br/>
        <%=rs.getString("address")%><br/><br/>

        Dear <%=rs.getString("C_Name")%><br/>
        <pre style="font-family: fantacy;font-size: 20px;color: violet">
        With reference to your application and subsequent discussion/interview, 
we are pleased to offer you the position you have applied.
welcome to our company



<h4 align="left">From Name of the Company
     Authorized Signature</h4>
        </pre>





        


        <%
        }
        %>

        <br/><br/><br/><br/>
        <input type="button"onClick="window.print()"value="Print"/>
        <a href="Admin.jsp"><input type="button" value="Cancel"></a>
        
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
