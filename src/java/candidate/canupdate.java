/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package candidate;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PHP
 */
public class canupdate extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        HttpSession sess=request.getSession(true);
        String sessname=(String)sess.getAttribute("emply");

        String cid2=request.getParameter("candid2");
        Statement st1;
        ResultSet rs1;

        try
        {
           
           DbConnection db=new DbConnection();
           String cname1="";
           String cid1="";
           String gender1="";
           String dob1="";
           String emailid1="";
           String mobile1="";
           String pgtot1="";
           String ugtot1="";
           String xiitot1="";
           String xtot1="";
           String address1="";
           String status1="";
           String status2="";
           String status3="";
           String status4="";
           String comment1="";
           String stdpnl="";
           

           String emppnl="";
           db.connect();
           st1=db.con.createStatement();
           rs1=st1.executeQuery("select * from employee where empusername='"+sessname+"' ");
           if(rs1.next()==true)
           {
               emppnl=rs1.getString("panel");
           }


           db.st=db.con.createStatement();
           db.rs=db.st.executeQuery("select * from canditate where C_ID="+cid2+"");
           if(db.rs.next()==true)
           {
               
               cname1 =db.rs.getString("C_Name")+db.rs.getString("M_Name")+" "+db.rs.getString("L_Name");
               cid1=cid2;
               gender1=db.rs.getString("Gender");
               dob1=db.rs.getString("dob");
               emailid1=db.rs.getString("Email");
               mobile1=db.rs.getString("Mobile_No");
               pgtot1="Degree: "+db.rs.getString("pgdegree")+" Department: "+db.rs.getString("pgmajor")+" Mode: "+db.rs.getString("pgmos")+" Passing: "+db.rs.getString("pgyop")+" Percentage: "+db.rs.getString("pgpercentage")+" College: "+db.rs.getString("pgcollege");
               ugtot1="Degree: "+db.rs.getString("ugdegree")+" Department: "+db.rs.getString("ugmajor")+" Mode: "+db.rs.getString("ugmos")+" Passing: "+db.rs.getString("ugyop")+" Percentage: "+db.rs.getString("ugpercentage")+" College: "+db.rs.getString("ugcollege");
               xiitot1="Course: "+db.rs.getString("xiicoursename")+" Subject: "+db.rs.getString("xiimajor")+" Mode: "+db.rs.getString("xiimos")+" Passing: "+db.rs.getString("xiiyop")+" Percentage: "+db.rs.getString("xiipercentage")+" School: "+db.rs.getString("xiischool");
               xtot1="Course: "+db.rs.getString("xcoursename")+" Mode: "+db.rs.getString("xmos")+" Passing: "+db.rs.getString("xyop")+" Percentage: "+db.rs.getString("xpercentage")+" School:"+db.rs.getString("xschool");
               address1=db.rs.getString("address");
               status1=db.rs.getString("Round1");
               status2=db.rs.getString("Round2");
               status3=db.rs.getString("Round3");
               status4=db.rs.getString("Round4");
               comment1=db.rs.getString("comments");
               stdpnl=db.rs.getString("panel");
               out.print(stdpnl);
               out.print(emppnl);
               if(emppnl.equals(stdpnl))
               {
                   response.sendRedirect("CandidateUpdate.jsp?name="+cname1+"&id="+cid1+"&gender="+gender1+"&email="+emailid1+"&mobileno="+mobile1+"&dob="+dob1+"&pgdegree="+pgtot1+"&ugdegree="+ugtot1+"&xiischool="+xiitot1+"&xschool="+xtot1+"&address="+address1+"&status1="+status1+"&status2="+status2+"&status3="+status3+"&status4="+status4+"&comments="+comment1+"");
               }
               else
               {
                   response.sendRedirect("Employeehom.jsp?alert=notassigned");
               }

           

           }
           else
           {
               out.println("Wrong Applicant ID");
               out.println();
               response.sendRedirect("Employeehom.jsp?alert=Wrong");
           }
        }
        catch(Exception ex1)
        {
            System.out.println(ex1.getMessage());
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
