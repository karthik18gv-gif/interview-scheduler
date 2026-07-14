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
public class Empregister extends HttpServlet {
   
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

        String empfname=request.getParameter("empfname");
        String empmname=request.getParameter("empmname");
        String emplname=request.getParameter("emplname");
        String empdob=request.getParameter("empdob");
        String empgender=request.getParameter("empgen");
        String empfather=request.getParameter("empfh");
        String empmobile=request.getParameter("empmob");
        String empemail=request.getParameter("empemail");
        String emppass=request.getParameter("emppass");
        String empdesig=request.getParameter("empdesig");
        String empaddress=request.getParameter("empaddress");


        try {
            DbConnection db=new DbConnection();
            db.connect();
            db.st=db.con.createStatement();
            db.rs=db.st.executeQuery("select * from employee where empusername='"+empemail +"'");
            if(db.rs.next()==true)
            {
                response.sendRedirect("StatusEmployee.jsp?status=exist");
            }
            else
            {
                
                String str="'"+empfname+"','"+empmname+"','"+emplname+"','"+empdob+"','"+empgender+"','"+empfather+"','"+empmobile+"','"+empemail+"','"+emppass+"','"+empdesig+"','"+empaddress+"','Not Assigned','Not Assigned'";
                db.connect();
                db.ps=db.con.prepareStatement("insert into employee(empfname,empmname,emplname,empdob,empgen,empfhname,empmob,empusername,emppass,empdesig,address,panel,round) values("+str+")");
                db.ps.executeUpdate();
                response.sendRedirect("StatusEmployee.jsp?status=updated");

            }
            
            
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
