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
import java.sql.*;

/**
 *
 * @author PHP
 */
public class NewServlet extends HttpServlet {
   
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
        try {
            
            DbConnection db =new DbConnection();

        Statement st1;
        ResultSet rs1;
        int c=0;
     
        String arr[]=new String[50];
        
        db.st=db.con.createStatement();
        db.rs=db.st.executeQuery("select count(*) from panel");
        if(db.rs.next()==true)
        {
             c=db.rs.getInt("count(*)");
        }

        int i=0;
        st1=db.con.createStatement();
        rs1=st1.executeQuery("select Panel_Name from panel");
        while(rs1.next())
        {
             arr[i]=rs1.getString("Panel_Name");
             i+=1;
        }
System.out.println(arr[0]);
      /*  String pnl="";
        db.st=db.con.createStatement();
        db.rs=db.st.executeQuery("select panel from canditate order by C_ID desc");
        if(db.rs.next()==true)
        {
            pnl=db.rs.getString("panel");
        }
System.out.println(pnl);*/
/*
        if( pnl.equals(""))
        {
            pnl=arr[0];
        }
        else
        {
            for(int j=0;j<c;j++)
            {
                if( pnl.equals(arr[i]))
                {
                    pnl=arr[j+1];
                    break;
                }
            }
        }
System.out.println(pnl);
//System.out.println();
  */

        } 
        catch(Exception er) {
            er.printStackTrace();
            out.close();
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
