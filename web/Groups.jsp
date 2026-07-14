<%-- 
    Document   : Groups
    Created on : Jan 27, 2012, 3:52:32 PM
    Author     : PHP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connection.jsp"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>New Groups</title>
<meta name="keywords" content="simple orange, css template, free website layout, CSS, HTML" />
<meta name="description" content="simple orange is a free css template or website layout from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
	if (field.defaultValue == field.value) field.value = '';
	else if (field.value == '') field.value = field.defaultValue;
}
function empvalida()
            {
                if(document.grpfrm.grpname.value==""||document.grpfrm.grpname.value==null)
                    {
                        alert("Please give Group name")
                        return false
                    }
                if(document.grpfrm.r1.value==""||document.grpfrm.r1.value=='null')
                    {
                        alert("Please Select HR for Round 1")
                        return false
                    }
                if(document.grpfrm.r2.value==""||document.grpfrm.r2.value=='null')
                    {
                        alert("Please Select HR for Round 2")
                        return false
                    }
                if(document.grpfrm.r3.value==""||document.grpfrm.r3.value=='null')
                    {
                        alert("Please Select HR for Round 3")
                        return false
                    }
                if(document.grpfrm.r4.value==""||document.grpfrm.r4.value=='null')
                    {
                        alert("Please Select HR for Round 4")
                        return false
                    }
                if(document.grpfrm.r1.value==document.grpfrm.r2.value)
                    {
                        alert("you have selected same HR for different Please assign different HR")
                        return false
                    }
              else if(document.grpfrm.r1.value==document.grpfrm.r3.value)
                    {
                        alert("You have selected same HR for different Please assign different HR ")
                        return false
                    }
              else if(document.grpfrm.r1.value==document.grpfrm.r4.value)
                    {
                        alert("You have selected same HR for different Please assign different HR")
                        return false
                    }

               if(document.grpfrm.r2.value==document.grpfrm.r3.value)
                    {
                        alert("you have selected same HR for different Please assign different HR")
                        return false
                    }
               else if(document.grpfrm.r2.value==document.grpfrm.r4.value)
                    {
                        alert("You have selected same HR for different Please assign different HR ")
                        return false
                    }

               if(document.grpfrm.r3.value==document.grpfrm.r4.value)
                   {
                        alert("You have selected same HR for different Please assign different HR")
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
                Assigning New Interview Panel
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
         <h3 align="center">Interview Panel</h3>
            
         <form style="font-family: fantacy;font-size: 14px;color: white" name="grpfrm" action="addgroup">
            <%
                       //count
            int count=0;
            st=con.createStatement();
            rs=st.executeQuery("select count(*) from employee");
            if(rs.next()==true)
            {
                count=rs.getInt(1);
            }


            //panelist
            int i=0;
            String[] pnlname=new String[count];

            st=con.createStatement();
            rs=st.executeQuery("select panelist_name1,panelist_name2,panelist_name3,panelist_name4 from panel");

            while(rs.next())
            {
                pnlname[i]=rs.getString("panelist_name1");
                pnlname[++i]=rs.getString("panelist_name2");
                pnlname[++i]=rs.getString("panelist_name3");
                pnlname[++i]=rs.getString("panelist_name4");
                i++;
            }



            %>

            <%

//employee
            int j=0;
            String[] empuname=new String[count];

            st=con.createStatement();
            rs=st.executeQuery("select empusername from employee");
            while(rs.next())
            {
             empuname[j]=rs.getString("empusername");
             j++;
            }




            List<String> s1List = new ArrayList(Arrays.asList(empuname));
        for (String s : pnlname) {
            if (s1List.contains(s)) {
                s1List.remove(s);
            } else {
                s1List.add(s);
            }

        }
        int listsize=s1List.size();
        /*if(listsize%2==0)
        {
            listsize-=1;
        }*/


%>






        <br/>Panel Name : <input type="text" name="grpname" ><br/><br/>
        <table cellspacing="2" cellpadding="4">
            <tr>
        <td>Add HR To Aptitude Round:</td>
        <td><select name="r1">
            <option value="">select</option>
            <% for(int x=0;x<listsize;x++)
            {

            %>
            <option><%= s1List.get(x) %></option>
            <%
            }
            %>
        </select></td>
        <tr>
            <td>Add HR To GD Round:</td>
        <td><select name="r2">
            <option value="">select</option>

            <% for(int x=0;x<listsize;x++)
                               {
            %>
            <option value="<%= s1List.get(x) %>"><%= s1List.get(x) %></option>
            <%
            }
            %>

            </select></td></tr>
        <tr><td>Add HR To Technical Round:</td>
        <td><select name="r3">
            <option value="">select</option>

            <% for(int x=0;x<listsize;x++)
                               {
            %>
            <option value="<%= s1List.get(x) %>"><%= s1List.get(x) %></option>
            <%
            }
            %>

            </select></td></tr>
        <tr><td>Add HR To HR Round:</td>
        <td><select name="r4">
            <option value="">select</option>

            <% for(int x=0;x<listsize;x++)
                               {
            %>
            <option value="<%= s1List.get(x) %>"><%= s1List.get(x) %></option>
            <%
            }
            %>

            </select></td></tr></table>
        <input type="submit" value="Add Panel" onclick="return empvalida()">
        <input  type="button" value="Back" onclick="location.replace('Admin.jsp')">
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
