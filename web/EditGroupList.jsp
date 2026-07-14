<%-- 
    Document   : EditGroupList
    Created on : Feb 1, 2012, 12:09:08 PM
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
function listvalid()
            {

                if(document.egrpfrm.ur1.value==""||document.egrpfrm.ur2.value=='null')
                    {
                        alert("Please Select HR for Round 1")
                        return false
                    }
                if(document.egrpfrm.ur2.value==""||document.egrpfrm.ur2.value=='null')
                    {
                        alert("Please Select HR for Round 2")
                        return false
                    }
                if(document.egrpfrm.ur3.value==""||document.egrpfrm.ur3.value=='null')
                    {
                        alert("Please Select HR for Round 3")
                        return false
                    }
                if(document.egrpfrm.ur4.value==""||document.egrpfrm.ur4.value=='null')
                    {
                        alert("Please Select HR for Round 4")
                        return false
                    }

              if(document.egrpfrm.ur1.value==document.egrpfrm.ur2.value)
                    {
                        alert("you have selected same HR for different Please assign different HR")
                        return false
                    }
              else if(document.egrpfrm.ur1.value==document.egrpfrm.ur3.value)
                    {
                        alert("You have selected same HR for different Please assign different HR ")
                        return false
                    }
              else if(document.egrpfrm.ur1.value==document.egrpfrm.ur4.value)
                    {
                        alert("You have selected same HR for different Please assign different HR")
                        return false
                    }

               if(document.egrpfrm.ur2.value==document.egrpfrm.ur3.value)
                    {
                        alert("you have selected same HR for different Please assign different HR")
                        return false
                    }
               else if(document.egrpfrm.ur2.value==document.egrpfrm.ur4.value)
                    {
                        alert("You have selected same HR for different Please assign different HR ")
                        return false
                    }

               if(document.egrpfrm.ur3.value==document.egrpfrm.ur4.value)
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
                Edit Interview Panel
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
        
        <form style="font-size: 14px;color: white;font-family: fantacy" name="egrpfrm" action="updategroup" onsubmit="return listvalid()">
        <% //
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


%>

        <%
        String panel=request.getParameter("editgrp");
        st=con.createStatement();
        String[] arrr=new String[4];
        rs=st.executeQuery("select * from panel where Panel_Name='"+panel+"'");
        if(rs.next()==true)
        {
            arrr[0]=rs.getString("panelist_name1");
            arrr[1]=rs.getString("panelist_name2");
            arrr[2]=rs.getString("panelist_name3");
            arrr[3]=rs.getString("panelist_name4");
        }
        HttpSession sess3=request.getSession(true);
        sess3.setAttribute("arr", arrr);
        %>
        You Have Selected <input type="text" value="<%=panel%>" name="pnltxt" readonly> Group
        <br/><br/><br/>
        <table cellspacing="2" cellpadding="4">           
            <tr><td>Aptitude Round  Member:</td>
        <td><select name="ur1">

            <option value="<%=arrr[0]%>"><%=arrr[0]%></option>
            <option><%=arrr[1]%></option>
            <option><%=arrr[2]%></option>
            <option><%=arrr[3]%></option>
            <% for(int x=0;x<listsize;x++)
                               {
            %>
            <option><%= s1List.get(x) %></option>
            <%
            }
            %>
            </select></td></tr>
            <tr><td>GD Round Member:</td>
        <td><select name="ur2">
            <option value="<%=arrr[1]%>"><%=arrr[1]%></option>
            <option><%=arrr[0]%></option>
            <option><%=arrr[2]%></option>
            <option><%=arrr[3]%></option>
            <% for(int x=0;x<listsize;x++)
                               {
            %>
            <option><%= s1List.get(x) %></option>
            <%
            }
            %>
            </select></td></tr>
            <tr><td>Technical Round Member:</td>
        <td><select name="ur3">
            <option value="<%=arrr[2]%>"><%=arrr[2]%></option>
            <option><%=arrr[0]%></option>
            <option><%=arrr[1]%></option>
            <option><%=arrr[3]%></option>
            <% for(int x=0;x<listsize;x++)
                               {
            %>
            <option><%= s1List.get(x) %></option>
            <%
            }
            %>
        </select></td></tr>
        <tr><td>HR Round Member:</td>
        <td><select name="ur4">
            <option value="<%=arrr[3] %>"><%=arrr[3] %></option>
            <option><%=arrr[0]%></option>
            <option><%=arrr[1]%></option>
            <option><%=arrr[2]%></option>
            <% for(int x=0;x<listsize;x++)
                               {
            %>
            <option><%= s1List.get(x) %></option>
            <%
            }
            %>
            </select></td></tr></table>


        <input type="submit" value="Update Group">
        <input type="button" value="Back" onclick="location.replace('EditGroup.jsp')">

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
