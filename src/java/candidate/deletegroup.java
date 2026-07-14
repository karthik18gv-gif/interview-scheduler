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
public class deletegroup extends HttpServlet {
   
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
        DbConnection db=new DbConnection();
        try {
            String str=request.getParameter("delgrp");
            String[] narr=new String[4];
            db.connect();

            db.st=db.con.createStatement();
            db.rs=db.st.executeQuery("select * from panel where Panel_Name='"+str+"'");
            if(db.rs.next()==true)
            {
                narr[0]=db.rs.getString("panelist_name1");
                narr[1]=db.rs.getString("panelist_name2");
                narr[2]=db.rs.getString("panelist_name3");
                narr[3]=db.rs.getString("panelist_name4");
            }
            db.ps=db.con.prepareStatement("update employee set panel='Not Assigned',round='Not Assigned' where empusername in('"+narr[0]+"','"+narr[1]+"','"+narr[2]+"','"+narr[3]+"')");
            db.ps.executeUpdate();
            db.ps=db.con.prepareStatement("delete from panel where Panel_Name='"+str+"'");
            db.ps.executeUpdate();
            response.sendRedirect("InterviewGroup.jsp?gname="+str+"&info=deleted");
            
        }
        catch(Exception ew)
        {
            System.out.print(ew.getMessage());
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
