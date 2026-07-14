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
import javax.servlet.http.HttpSession;

/**
 *
 * @author PHP
 */
public class updategroup extends HttpServlet {
   
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
        HttpSession sess3=request.getSession();
        String[] arr=(String[])sess3.getAttribute("arr");
        String r1=request.getParameter("ur1");
        String r2=request.getParameter("ur2");
        String r3=request.getParameter("ur3");
        String r4=request.getParameter("ur4");
        String pnln=request.getParameter("pnltxt");
        try {
            DbConnection db=new DbConnection();
            db.connect();
            db.ps=db.con.prepareStatement("update employee set panel='Not Assigned',round='Not Assigned' where empusername in('"+arr[0]+"','"+arr[1]+"','"+arr[2]+"','"+arr[3]+"')");
            db.ps.executeUpdate();

            db.ps=db.con.prepareStatement("update panel set panelist_name1='"+r1+"',panelist_name2='"+r2+"',panelist_name3='"+r3+"',panelist_name4='"+r4+"' where Panel_Name='"+pnln+"'");
            db.ps.executeUpdate();

            db.ps=db.con.prepareStatement("update employee set panel='"+pnln+"',round='Round1' where empusername='"+r1+"'");
            db.ps.executeUpdate();            
            db.ps=db.con.prepareStatement("update employee set panel='"+pnln+"',round='Round2' where empusername='"+r2+"'");
            db.ps.executeUpdate();
            db.ps=db.con.prepareStatement("update employee set panel='"+pnln+"',round='Round3' where empusername='"+r3+"'");
            db.ps.executeUpdate();
            db.ps=db.con.prepareStatement("update employee set panel='"+pnln+"',round='Round4' where empusername='"+r4+"'");
            db.ps.executeUpdate();

            response.sendRedirect("InterviewGroup.jsp?gname="+pnln+"&info=updated");
            
        }
        catch(Exception ew)
        {
            System.out.println(ew.getMessage());
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
