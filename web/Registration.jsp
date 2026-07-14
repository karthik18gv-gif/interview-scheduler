<%-- 
    Document   : Registeration
    Created on : Jan 17, 2012, 12:56:31 PM
    Author     : PHP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Registration Page</title>
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
 function EnableField()
            {
                if(document.frm.pg.checked==true)
                    {
                        document.frm.pgdegree.disabled=true
                        document.frm.pgmajor.disabled=true
                        document.frm.pgyop.disabled=true
                        document.frm.pgmos.disabled=true
                        document.frm.pgpercentage.disabled=true
                        document.frm.pgcollege.disabled=true
                        document.frm.pgdegree.value=""
                        document.frm.pgmajor.value=""
                        document.frm.pgyop.value=""
                        document.frm.pgmos.value=""
                        document.frm.pgpercentage.value=""
                        document.frm.pgcollege.value=""

                        return true
                    }
                else
                {
                    document.frm.pgdegree.disabled=false
                    document.frm.pgmajor.disabled=false
                    document.frm.pgyop.disabled=false
                    document.frm.pgmos.disabled=false
                    document.frm.pgpercentage.disabled=false
                    document.frm.pgcollege.disabled=false
                    document.frm.pg.value="";
                    return true
                }
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

            function doValidate()
            {

             if(document.frm.fname.value==""||document.frm.fname.value==null)
              {
                     alert("\n * Please enter the FirstName")
                     return false
              }
             if(document.frm.lname.value=="" || document.frm.lname.value==null)
              {
                     alert("\n * Please enter the LastName")
                     return false
              }
             if(document.frm.email.value==""|| document.frm.email.value==null)
              {
                     alert("\n * Please enter the E-Mail Id")
                     return false
              }
              else
              {
                  if(echeck(document.frm.email.value)==false)
                      {
                          alert("\n * Invalid E-Mail ID Please Enter a valid Email id")
                          return false
                      }
              }
              if(document.frm.mobileno.value==""||document.frm.mobileno.value==null)
                  {
                    alert("\n *Please Enter the mobile number")
                    return false
                  }
              if(document.frm.dob.value==""||document.frm.dob.value==null)
                  {
                    alert("\n *Please Select the Date Of Birth")
                    return false
                  }
              if(document.frm.mobileno.value==""||document.frm.mobileno.value==null)
                  {
                    alert("\n *Please Enter the mobile number")
                    return false
                  }
              //For PG
              if(document.frm.pg.checked==false)
                  {
                      if(document.frm.pgdegree.value=="" || document.frm.pgdegree.value==null)
                          {
                             alert("\n *Please Select the PG Education Qualification")
                             return false
                          }
                       if(document.frm.pgmajor.value=="" || document.frm.pgmajor.value==null)
                           {
                               alert("\n *Please Enter the Major Subject for PG ")
                               return false
                           }
                       if(document.frm.pgyop.value=="1")
                           {
                               alert("\n *Please Select the Year of Passing for PG")
                               return false
                           }

                       if(document.frm.pgpercentage.value=="" || document.frm.pgpercentage.value==null)
                           {
                               alert("\n *Please Enter the Percentage for PG")
                               return false
                           }
                       //for percentage elseif()
                       if(document.frm.pgcollege.value=="" || document.frm.pgcollege.value==null)
                           {
                               alert("\n *Please Enter the College Name/University for PG")
                               return false
                           }
                  }
              //For UG
              if(document.frm.ugdegree.value==""||document.frm.ugdegree.value==null)
                  {
                      alert("\n *Please Select the UG Education Qualification")
                      return false
                  }
              if(document.frm.ugmajor.value=="" || document.frm.ugmajor.value==null)
                  {
                      alert("\n *Please Enter the Major Subject for UG ")
                      return false
                  }
              if(document.frm.ugyop.value=="1")
                  {
                      alert("\n *Please Select the Year of Passing for UG")
                      return false
                  }
              if(document.frm.ugpercentage.value=="" || document.frm.ugpercentage.value==null)
                  {
                      alert("\n *Please Enter the Percentage for UG")
                      return false
                  }
                       //for percentage elseif()
              if(document.frm.ugcollege.value=="" || document.frm.ugcollege.value==null)
                  {
                      alert("\n *Please Enter the College Name/University for UG")
                      return false
                  }

                //For XII
              if(document.frm.xiicoursename.value=="" ||document.frm.xiicoursename.value==null)
                  {
                      alert("\n *Please Enter the Board Name/Course Name For XII or Equivalent")
                      return false
                  }
              if(document.frm.xiimajor.value=="" || document.frm.xiimajor.value==null)
                  {
                      alert("\n *Please Enter the Major Subject for XII or Equivalent ")
                      return false
                  }
              if(document.frm.xiiyop.value=="1")
                  {
                      alert("\n *Please Select the Year of Passing for XII")
                      return false
                  }
              if(document.frm.xiipercentage.value=="" || document.frm.xiipercentage.value==null)
                  {
                      alert("\n *Please Enter the Percentage for XII Std or Equivalent")
                      return false
                  }
                       //for percentage elseif()
              if(document.frm.xiischool.value=="" || document.frm.xiischool.value==null)
                  {
                      alert("\n *Please Enter the School Name for XII std")
                      return false
                  }

              // For X Std
              if(document.frm.xcoursename.value=="" || document.frm.xcoursename.value==null)
                  {
                      alert("\n *Please Enter the Board Name/Course Name For X std")
                      return false
                  }
              if(document.frm.xyop.value=="1")
                  {
                      alert("\n *Please Select the Year of Passing for X std")
                      return false
                  }
              if(document.frm.xpercentage.value=="" || document.frm.xpercentage.value==null)
                  {
                      alert("\n *Please Enter the Percentage for X Std")
                      return false
                  }
                       //for percentage elseif()
              if(document.frm.xschool.value=="" || document.frm.xschool.value==null)
                  {
                      alert("\n *Please Enter the School Name for X Std")
                      return false
                  }
             //
             if(document.frm.address.value=="" || document.frm.address.value==null)
                  {
                      alert("\n *Please Enter the Address For Communication")
                      return false
                  }
          }
 function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;

      }
</script>
</head>
<body>
<div id="templatemo_container">
	<div id="templatemo_site_title_bar">
	    <div id="site_title">
                <h1 style="font-family: fantacy">
                Candidate Registration Page
            </h1>
      </div>
	</div> <!-- end of templatemo_site_title_bar -->

    

    <div id="templatemo_content_wrapper">
    	<div id="templatemo_content">
            <!-- Content -->

       <form style="font-size: 13px;color: white;font-family: fantacy" name="frm" action="Register" onsubmit="return doValidate()">
            <table align="center" cellpadding="1" cellspacing="1" border="0" width="150">
        <tr><td>First Name:</td><td>Middle Name</td><td>Last Name</td></tr>

        <%-- NAME Fields --%>
        <tr><td><input type="text" name="fname" onchange="this.value=this.value.toUpperCase();"></td>
        <td><input type="text" name="mname" onchange="this.value=this.value.toUpperCase();"></td><td>
        <input type="text" name="lname" onchange="this.value=this.value.toUpperCase();"></td></tr>

        <%--GENDER--%>
        <tr> <td>Gender:</td></tr>
        <tr><td><select name="gender"> <option value="Male">Male</option>
        <option value="Female">Female</option></select>
        </td></tr>

        <%-- EMAIL ID--%>
        <tr><td>E-Mail ID</td></tr>
        <tr><td><input type="text" name="email"></td></tr>

        <tr><td>Mobile Number:</td></tr><tr><td><input type="text" name="mobileno" onkeypress="return isNumberKey(event)"></td></tr>

        <tr><td>Date of Birth:</td></tr><tr><td><input type="text" name="dob" readonly>
	<script language="JavaScript">
    new tcal ({
        // form name
        'formname': 'frm',
        // input name
        'controlname': 'dob'
    });

    </script>
            </td></tr>


        <%-- Post Graduate --%>
        <tr><td>PG:</td>
            <td>UnCheck if applicable:<input type="checkbox" checked name="pg" value="" onchange ="return EnableField()"></td>
        </tr>
        <tr><td>Educational Qualification:</td><td>Major Subject</td><td>Year of Passing</td><td>Mode Of Study</td><td>Percentage</td></tr>

        <tr><td>
                <%--PG Educational Qualification Degree --%>
                <select disabled name="pgdegree">
                    <option value="">select</option>
                    <option value="CS">CS</option>
                    <option value="ICWA">ICWA</option>
                    <option value="Integrated PG">Integrated PG</option>
                    <option value="LLM">LLM</option>
                    <option value="MA">MA</option>
                    <option value="M.Arch">M.Arch</option>
                    <option value="M.E/MTech">M.E/MTech</option>
                    <option value="M.Lib">M.Lib</option>
                    <option value="MBA">MBA</option>
                    <option value="MCA">MCA</option>
                    <option value="MCOM">MCOM</option>
                    <option value="MCS">MCS</option>
                    <option value="MSci">MSci</option>
                    <option value="MS">MS</option>
                    <option value="PS.Dip">PG.Dip</option>
                    <option value="Others">Others</option>
                </select>

            </td>

        <%--PG Major Subject --%>
        <td><input type="text" disabled name="pgmajor"></td>

        <%--PG year of Passing --%>
        <td><select size="1" name="pgyop" disabled>
                <option value="1">select</option>
                <option value="1994">1994</option>
                <option value="1995">1995</option>
                <option value="1996">1996</option>
                <option value="1997">1997</option>
                <option value="1998">1998</option>
                <option value="1999">1999</option>
                <option value="2000">2000</option>
                <option value="2000">2000</option>
                <option value="2001">2001</option>
                <option value="2002">2002</option>
                <option value="2003">2003</option>
                <option value="2004">2004</option>
                <option value="2005">2005</option>
                <option value="2006">2006</option>
                <option value="2007">2007</option>
                <option value="2008">2008</option>
                <option value="2009">2009</option>
                <option value="2010">2010</option>
                <option value="2011">2011</option>
                <option value="2012">2012</option>
                <option value="2013">2013</option>
                <option value="2014">2014</option>
                <option value="2015">2015</option>
                </select></td>

        <%--PG Mode Of Study --%>
        <td><select name="pgmos" disabled>
                    <option value="Full time">Full Time</option>
                    <option value="Part time">Part Time</option></select></td>

        <%--PG Percentage --%>
        <td><input type="text" disabled size="1" name="pgpercentage" maxlength="5">%</td>
        </tr>

        <%--PG College Name --%>
        <tr>
            <td align="center" colspan="1">University/Institute :<input type="text" disabled name="pgcollege">
            </td>
        </tr>


        <tr><td></td></tr>

        <%-- U.G --%>
        <tr><td>UG:</td></tr>
        <tr><td>Educational Qualification:</td><td>Major Subject</td><td>Year of Passing</td><td>Mode Of Study</td><td>Percentage</td></tr>

        <tr><td>
                <%--UG Educational Qualification Degree --%>
                <select name="ugdegree">
                    <option value=""></option>
                    <option value="BA">BA</option>
                    <option value="B.Arch">B.Arch</option>
                    <option value="BBA">BBA</option>
                    <option value="BCA">BCA</option>
                    <option value="BCOM">BCOM</option>
                    <option value="BCS">BCS</option>
                    <option value="BHM">BHM</option>
                    <option value="B.Pharma">B.Pharma</option>
                    <option value="B.Sci">B.Sci</option>
                    <option value="B.E/BTech">B.E/BTech</option>
                    <option value="LLB">LLB</option>
                    <option value="MBBS">MBBS</option>
                    <option value="Dip">Diploma</option>
                    <option value="Others">Others</option>
                </select>

            </td>

        <%--UG Major Subject --%>
        <td><input type="text" name="ugmajor"></td>

        <%--UG year of Passing --%>
        <td><select name="ugyop">
                <option value="1">select</option>
                <option value="1994">1994</option>
                <option value="1995">1995</option>
                <option value="1996">1996</option>
                <option value="1997">1997</option>
                <option value="1998">1998</option>
                <option value="1999">1999</option>
                <option value="2000">2000</option>
                <option value="2000">2000</option>
                <option value="2001">2001</option>
                <option value="2002">2002</option>
                <option value="2003">2003</option>
                <option value="2004">2004</option>
                <option value="2005">2005</option>
                <option value="2006">2006</option>
                <option value="2007">2007</option>
                <option value="2008">2008</option>
                <option value="2009">2009</option>
                <option value="2010">2010</option>
                <option value="2011">2011</option>
                <option value="2012">2012</option>
                <option value="2013">2013</option>
                <option value="2014">2014</option>
                <option value="2015">2015</option></select></td>

        <%--UG Mode Of Study --%>
        <td><select name="ugmos">
                    <option value="Full Time">Full Time</option>
                    <option value="Part Time">Part Time</option></select></td>

        <%--UG Percentage--%>
        <td><input type="text" size="1" name="ugpercentage" maxlength="3">%</td>
        </tr>

        <%--UG College Name --%>
        <tr>
            <td align="center" colspan="1">University/Institute :<input type="text" name="ugcollege">
            </td>
        </tr>




        <%--XII--%>
        <tr>
            <td align="center">
                XII std
            </td>
        </tr>
        <tr>
            <td>Course Name/Board</td> <td>Major Subject</td><td>Year Of Passing</td><td>Mode Of Study</td><td>percentage</td>
        </tr>

        <tr>
            <%--XII Course Name/Board--%>
            <td><input type="text" name="xiicoursename"></td>

            <%-- XII major subject --%>
            <td><input type="text" name="xiimajor"></td>

            <%--XII year of Passing --%>
            <td><select name="xiiyop">
                <option value="1">select</option>
                <option value="1991">1991</option>
                <option value="1992">1992</option>
                <option value="1993">1993</option>
                <option value="1994">1994</option>
                <option value="1995">1995</option>
                <option value="1996">1996</option>
                <option value="1997">1997</option>
                <option value="1998">1998</option>
                <option value="1999">1999</option>
                <option value="2000">2000</option>
                <option value="2000">2000</option>
                <option value="2001">2001</option>
                <option value="2002">2002</option>
                <option value="2003">2003</option>
                <option value="2004">2004</option>
                <option value="2005">2005</option>
                <option value="2006">2006</option>
                <option value="2007">2007</option>
                <option value="2008">2008</option>
                <option value="2009">2009</option>
                <option value="2010">2010</option>
                    </select></td>

            <%--XII Mode Of Study --%>
            <td><select name="xiimos">
                    <option value="Full Time">Full Time</option>
                    <option value="Part Time">Part Time</option></select></td>

            <%--XII Percentage--%>
            <td><input type="text" size="1" name="xiipercentage" maxlength="5">%</td>
        </tr>

        <%--XII School Name --%>
        <tr>
            <td align="center" colspan="1">School/Institute Name:<input type="text" name="xiischool">
                </td>
        </tr>




        <%--  X std --%>
        <tr>
            <td align="center">
                X std
            </td>
        </tr>
        <tr>
            <td>Course Name/Board</td> <td></td><td>Year Of Passing</td><td>Mode Of Study</td><td>percentage</td>
        </tr>

        <tr>
            <%-- X Course Name/Board --%>
            <td><input type="text" name="xcoursename"></td>

            <%-- Here No major subject for X --%>
            <td></td>

            <%--X year of Passing --%>
            <td><select name="xyop">
                <option value="1">select</option>
                <option value="1991">1991</option>
                <option value="1992">1992</option>
                <option value="1993">1993</option>
                <option value="1994">1994</option>
                <option value="1995">1995</option>
                <option value="1996">1996</option>
                <option value="1997">1997</option>
                <option value="1998">1998</option>
                <option value="1999">1999</option>
                <option value="2000">2000</option>
                <option value="2000">2000</option>
                <option value="2001">2001</option>
                <option value="2002">2002</option>
                <option value="2003">2003</option>
                <option value="2004">2004</option>
                <option value="2005">2005</option>
                <option value="2006">2006</option>
                <option value="2007">2007</option>
                <option value="2008">2008</option>
                <option value="2009">2009</option>
                <option value="2010">2010</option></select></td>

            <%--X Mode Of Study --%>
            <td><select name="xmos">
                    <option value="Full Time">Full Time</option>
                    <option value="Part Time">Part Time</option></select></td>

            <%--XII Percentage--%>
            <td><input type="text" size="1" name="xpercentage" maxlength="5">%</td>
        </tr>

        <%-- X School Name --%>
        <tr>
            <td align="center" colspan="1">School/Institute :<input type="text" name="xschool">
                </td>
        </tr>
        <tr>
            <td>Address For Communication</td>
        </tr>
        <tr>
            <td colspan="20"><textarea rows="10" cols="20" name="address"></textarea></td>
        </tr>
        <tr align="center"><td align="right" colspan="2"><input type="submit" value="submit"></td>
            <td align="left"><input type="button" value="Back" onclick="location.replace('CandidateHome.jsp')"></td>
        </tr>
      </table>
        <br/>
        <br/>


    </form>





        </div> <!-- end of tempaltemo content -->
        <div id="templatemo_footer">
            Copyright © 2012
        </div>
    </div><!-- end of templatemo_content_wrapper -->

</div> <!-- end of templatemo_container -->
</body>
</html>
