package candidate;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

/**
 *
 * @author PHP
 */
public class Register extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException,NullPointerException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        
        
        //ResultSet rs=null;

        
        String firstname=request.getParameter("fname");
        String middlename=request.getParameter("mname");
        String lastname=request.getParameter("lname");
        String emailid=request.getParameter("email");
        String gender=request.getParameter("gender");
        String mobileno=request.getParameter("mobileno");
        String dob=request.getParameter("dob");
        String pg=request.getParameter("pg");
        String pgdegree=request.getParameter("pgdegree");
        String pgmajor=request.getParameter("pgmajor");
        String pgyop=request.getParameter("pgyop");
        String pgmos=request.getParameter("pgmos");
        String pgpercentage=request.getParameter("pgpercentage");
        String pgcollege=request.getParameter("pgcollege");
        String ugdegree=request.getParameter("ugdegree");
        String ugmajor=request.getParameter("ugmajor");
        String ugyop=request.getParameter("ugyop");
        String ugmos=request.getParameter("ugmos");
        String ugpercentage=request.getParameter("ugpercentage");
        String ugcollege=request.getParameter("ugcollege");
        String xiicoursename=request.getParameter("xiicoursename");
        String xiimajor=request.getParameter("xiimajor");
        String xiiyop=request.getParameter("xiiyop");
        String xiimos=request.getParameter("xiimos");
        String xiipercentage=request.getParameter("xiipercentage");
        String xiischool=request.getParameter("xiischool");
        String xcoursename=request.getParameter("xcoursename");
        String xyop=request.getParameter("xyop");
        String xmos=request.getParameter("xmos");
        String xpercentage=request.getParameter("xpercentage");
        String xschool=request.getParameter("xschool");
        String address=request.getParameter("address");


        int alcid=0;

        String p1="";
        String p2="";

        DbConnection db =new DbConnection();
        Statement st0;
        ResultSet rs0;
        try
        {
           db.connect();
           st0=db.con.createStatement();
           rs0=st0.executeQuery("select * from canditate where Email='"+emailid+"'");
           if(rs0.next()==true)
           {
               System.out.print("hi");
               alcid=rs0.getInt("C_ID");               
               response.sendRedirect("CandidateExist.jsp?alert=alreadyRegistered&alcid="+alcid+"");
               

           }

           else
           {
               
        Statement st1=null;
        ResultSet rs1;
        int c=0;
        String arr[]=new String[50];
     try
    {
        
        
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
        
       
        
        String pnl="";
        db.st=db.con.createStatement();
        db.rs=db.st.executeQuery("select C_ID,panel from canditate order by C_ID desc");
        if(db.rs.next()==true)
        {
            pnl=db.rs.getString("panel");
        }
        

        if( pnl.equals(""))
        {
            pnl=arr[0];
        }
        else if(!pnl.equals(""))
        {
            for(int j=0;j<c;j++)
            {
                if(pnl.equals(arr[c-1]))
                {
                    pnl=arr[0];
                }
                else if( pnl.equals(arr[j]))
                {
                    
                    pnl=arr[j+1];
                    break;
                }

            }
        }
        else
        {
            pnl=arr[0];
        }

  
        

         if(pgdegree!=null|| pgmajor!=null)
         {
          
            
             String str1="'"+firstname+"','"+middlename+"','"+lastname+"','"+gender+"','"+emailid+"',"+mobileno+",'"+dob+"','"+pgdegree+"','"+pgmajor+"','"+pgyop+"','"+pgmos+"','"+pgpercentage+"','"+pgcollege+"','"+ugdegree+"','"+ugmajor+"',"+ugyop+",'"+ugmos+"',"+ugpercentage+",'"+ugcollege+"','"+xiicoursename+"','"+xiimajor+"',"+xiiyop+",'"+xiimos+"',"+xiipercentage+",'"+xiischool+"','"+xcoursename+"',"+xyop+",'"+xmos+"',"+xpercentage+",'"+xschool+"','"+address+"','Canditate Successfully Registered Proceeds to Level-1','','','','"+pnl+"',''";
            //String str="'"+firstname+"','"+middlename+"','"+lastname+"','"+gender+"','"+emailid+"',"+mobileno+",'"+dob+"','','','','','','"+pgcollege+"','"+ugdegree+"','"+ugmajor+"',"+ugyop+",'"+ugmos+"','"+ugpercentage+"','"+ugcollege+"','"+xiicoursename+"','"+xiimajor+"',"+xiiyop+",'"+xiimos+"','"+xiipercentage+"','"+xiischool+"','"+xcoursename+"',"+xyop+",'"+xmos+"','"+xpercentage+"','"+xschool+"','"+address+"','Canditate Successfully Registered Proceeds to Round-1','"+pnl+"'";
            db.connect();
            
            db.ps=db.con.prepareStatement("insert into canditate(C_Name,M_Name,L_Name,Gender,Email,Mobile_No,dob,pgdegree,pgmajor,pgyop,pgmos,pgpercentage,pgcollege,ugdegree,ugmajor,ugyop,ugmos,ugpercentage,ugcollege,xiicoursename,xiimajor,xiiyop,xiimos,xiipercentage,xiischool,xcoursename,xyop,xmos,xpercentage,xschool,address,Round1,Round2,Round3,Round4,panel,comments) values("+str1+")");
            db.ps.executeUpdate();
            

            db.st=db.con.createStatement();
            db.rs=db.st.executeQuery("select * from canditate where Email='"+emailid+"'");
            
            if(db.rs.next()==true)
            {
                p1=db.rs.getString("C_Name")+" "+ db.rs.getString("L_Name");
                p2=db.rs.getString("C_ID");
            }
            
            //request.setAttribute("candidatename", p1);
           // request.setAttribute("cid", p2);
           // request.setAttribute("pnl", pnl);
            
           response.sendRedirect("Confirmation.jsp?cname="+p1+"&cid="+p2+"&intergrp="+pnl+"");
           // RequestDispatcher rd=request.getRequestDispatcher("Confirmation.jsp");
            //rd.forward(request, response);
          }
         
        else if(pgdegree==null&&pgmajor==null)
        {
            
            
            String str="'"+firstname+"','"+middlename+"','"+lastname+"','"+gender+"','"+emailid+"',"+mobileno+",'"+dob+"','','','','','','','"+ugdegree+"','"+ugmajor+"',"+ugyop+",'"+ugmos+"',"+ugpercentage+",'"+ugcollege+"','"+xiicoursename+"','"+xiimajor+"',"+xiiyop+",'"+xiimos+"',"+xiipercentage+",'"+xiischool+"','"+xcoursename+"',"+xyop+",'"+xmos+"',"+xpercentage+",'"+xschool+"','"+address+"','Canditate Successfully Registered Proceeds to Level-1','','','','"+pnl+"',''";
            db.connect();
            db.ps=db.con.prepareStatement("insert into canditate(C_Name,M_Name,L_Name,Gender,Email,Mobile_No,dob,pgdegree,pgmajor,pgyop,pgmos,pgpercentage,pgcollege,ugdegree,ugmajor,ugyop,ugmos,ugpercentage,ugcollege,xiicoursename,xiimajor,xiiyop,xiimos,xiipercentage,xiischool,xcoursename,xyop,xmos,xpercentage,xschool,address,Round1,Round2,Round3,Round4,panel,comments) values("+str+")");
            db.ps.executeUpdate();

            db.st=db.con.createStatement();
            db.rs=db.st.executeQuery("select * from canditate where Email='"+emailid+"'");

            if(db.rs.next()==true)
            {
              p1=db.rs.getString("C_Name")+" "+ db.rs.getString("L_Name");
              p2=db.rs.getString("C_ID");
            }


            //request.setAttribute("candidatename", p1);
            //request.setAttribute("cid", p2);
            //request.setAttribute("pnl", pnl);
            response.sendRedirect("Confirmation.jsp?cname="+p1+"&cid="+p2+"&intergrp="+pnl+"");
            //RequestDispatcher rd=request.getRequestDispatcher();
            //rd.forward(request, response);
            //out.println(pg);
        }

  }
  catch(Exception ew)
  {
    System.out.println("hello"+ew.toString());
  }
           }

     //out.close();
        }
        catch(Exception eq)
        {
            System.out.println("Finalcatch "+eq.getMessage());
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
    throws ServletException, IOException,ServletException{
       
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
    throws ServletException, IOException{
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
