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
 * @author facultasphp
 */
public class canstatus extends HttpServlet {

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
        String ciid=request.getParameter("candid3");
        String canname="";
        String cemail="";
        String cmobile="";
        String cstatus1="";
        String cstatus2="";
        String cstatus3="";
        String cstatus4="";
        String intergrp="";
        try {
            
            DbConnection db = new DbConnection();
            db.connect();
            db.st=db.con.createStatement();
            db.rs=db.st.executeQuery("select * from canditate where C_ID="+ciid+"");
            if(db.rs.next()==true)
            {
                canname=db.rs.getString("C_Name")+db.rs.getString("M_Name")+db.rs.getString("L_Name");
                cstatus1=db.rs.getString("Round1");
                cstatus2=db.rs.getString("Round2");
                cstatus3=db.rs.getString("Round3");
                cstatus4=db.rs.getString("Round4");
                intergrp=db.rs.getString("panel");
                response.sendRedirect("CandidateStatus.jsp?candidatename="+canname+"&candidateid="+ciid+"&curstatus1="+cstatus1+"&curstatus2="+cstatus2+"&curstatus3="+cstatus3+"&curstatus4="+cstatus4+"&intergrp="+intergrp+"");
            }
            else
            {
                response.sendRedirect("EmployeeHome.jsp");
            }
            
        } 
        catch(Exception ex)
        {
         System.out.println(ex.getMessage());
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
