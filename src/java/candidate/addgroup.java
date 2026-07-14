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
public class addgroup extends HttpServlet {

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
        String gname="";
        String ro1="";
        String ro2="";
        String ro3="";
        String ro4="";
                
        gname=(String)request.getParameter("grpname");
        ro1=(String)request.getParameter("r1");
        ro2=(String)request.getParameter("r2");
        ro3=(String)request.getParameter("r3");
        ro4=(String)request.getParameter("r4");
        
        String sqql="'"+gname+"','"+ro1+"','"+ro2+"','"+ro3+"','"+ro4+"'";
            DbConnection db=new DbConnection();
        try {
            
            
            db.connect();
            db.st=db.con.createStatement();
            db.rs=db.st.executeQuery("select Panel_Name from panel where Panel_Name='"+gname+"' ");
            if(db.rs.next()==true)
            {
               response.sendRedirect("InterviewGroup.jsp?gname="+gname+"&info=exists");
            }
            else
            {
            db.connect();
            db.ps=db.con.prepareStatement("insert into panel(Panel_Name,panelist_name1,panelist_name2,panelist_name3,panelist_name4) values("+sqql+")");
            db.ps.executeUpdate();

            db.ps=db.con.prepareStatement("update employee set panel='"+gname+"',round='Round1' where empusername='"+ro1+"'");            
            db.ps.executeUpdate();
            db.ps=db.con.prepareStatement("update employee set panel='"+gname+"',round='Round2' where empusername='"+ro2+"'");
            db.ps.executeUpdate();
            db.ps=db.con.prepareStatement("update employee set panel='"+gname+"',round='Round3' where empusername='"+ro3+"'");
            db.ps.executeUpdate();
            db.ps=db.con.prepareStatement("update employee set panel='"+gname+"',round='Round4' where empusername='"+ro4+"'");
            db.ps.executeUpdate();
            
            response.sendRedirect("InterviewGroup.jsp?gname="+gname+"&info=added");
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
