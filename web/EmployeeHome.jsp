<%-- 
    Document   : Employee Home
    Created on : Jan 21, 2012, 11:02:01 AM
    Author     : PHP src="drop.js"
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connection.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Employee Home</title>
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
                Employee Home
            </h2>
                <h4 align="right"><a href="logout.jsp">log out</a></h4>

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
                        String pname="";
                        String roun="";
                        String dround="";
                        st=con.createStatement();
                        rs=st.executeQuery("select * from employee where empusername='"+usern+"'");

                        if(rs.next()==true)
                        {
                            pname=rs.getString("panel");
                            roun=rs.getString("round");
                        }
                        sess.setAttribute("round",roun);
                        if(roun.equals("Round1"))
                        {
                            dround="Aptitude Round";
                        }
                        else if(roun.equals("Round2"))
                        {
                            dround="GD Round";
                        }
                        else if(roun.equals("Round3"))
                        {
                            dround="Technical Round";
                        }
                        else if(roun.equals("Round4"))
                        {
                            dround="HR Round";
                        }

        %>
        <h2>Welcome <%=usern%></h2><br/>
        <h3>Interview Panel:<%=pname%>
            
        <br/>Round: <%=dround%>


        <br/><br/>

        <br/><br/><br/>
        <%-- Candidate Status and Details Form 2 --%>
        For Candidate Update:
        <form name="emphomefrm2" action="canupdate">

            <b>Enter Candidate Id:</b>
            <input type="text" onkeypress="return isNumberKey(event)" name="candid2">
            <input type="submit" value="Go" onclick="return check2()" >
        </form>        
        <%
                    }
                    
        %>
        </h3>
<br/><br/><br/><br/><br/><br/><br/><br/>


        </div> <!-- end of tempaltemo content -->
        <div id="templatemo_footer">
           
        </div>
    </div><!-- end of templatemo_content_wrapper -->

</div> <!-- end of templatemo_container -->
</body>
</html>
