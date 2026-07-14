/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package candidate;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PHP
 */
public class candetails extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String cid2=request.getParameter("candid1");

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



           db.connect();
           db.st=db.con.createStatement();
           db.rs=db.st.executeQuery("select * from canditate where C_ID="+cid2+"");
           
           if(db.rs.next()==true)
           {
               System.out.print(cid2);
               cname1 =db.rs.getString("C_Name")+db.rs.getString("M_Name")+" "+db.rs.getString("L_Name");
               cid1=cid2;
               gender1=db.rs.getString("Gender");
               dob1=db.rs.getString("dob");
               emailid1=db.rs.getString("Email");
               mobile1=db.rs.getString("Mobile_No");
               pgtot1=db.rs.getString("pgdegree")+" "+db.rs.getString("pgmajor")+" "+db.rs.getString("pgmos")+" "+db.rs.getString("pgyop")+" "+db.rs.getString("pgpercentage")+" "+db.rs.getString("pgcollege");
               ugtot1=db.rs.getString("ugdegree")+" "+db.rs.getString("ugmajor")+" "+db.rs.getString("ugmos")+" "+db.rs.getString("ugyop")+" "+db.rs.getString("ugpercentage")+" "+db.rs.getString("ugcollege");
               xiitot1=db.rs.getString("xiicoursename")+" "+db.rs.getString("xiimajor")+" "+db.rs.getString("xiimos")+" "+db.rs.getString("xiiyop")+" "+db.rs.getString("xiipercentage")+" "+db.rs.getString("xiischool");
               xtot1=db.rs.getString("xcoursename")+" "+db.rs.getString("xmos")+" "+db.rs.getString("xyop")+" "+db.rs.getString("xpercentage")+" "+db.rs.getString("xschool");
               address1=db.rs.getString("address");
               status1=db.rs.getString("Round1");
               status2=db.rs.getString("Round2");
               status3=db.rs.getString("Round3");
               status4=db.rs.getString("Round4");
               comment1=db.rs.getString("comments");
               //out.print(gender1);


           response.sendRedirect("CandidateDetails.jsp?name="+cname1+"&id="+cid1+"&gender="+gender1+"&email="+emailid1+"&mobileno="+mobile1+"&dob="+dob1+"&pgdegree="+pgtot1+"&ugdegree="+ugtot1+"&xiischool="+xiitot1+"&xschool="+xtot1+"&address="+address1+"&status1="+status1+"&status2="+status2+"&status3="+status3+"&status4="+status4+"&comments="+comment1+"");



           }
           else
           {
               out.println("Wrong Applicant ID");
               response.sendRedirect("Admin.jsp");
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
