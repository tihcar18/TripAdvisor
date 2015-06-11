/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author win 8
 */
public class gateway extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
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
                 HttpSession hs=request.getSession();
            String amount=hs.getAttribute("cost").toString();
            String name=request.getParameter("name");
            String ctype=request.getParameter("ctype");
            String cardno=request.getParameter("cardno");
            String month=request.getParameter("month");
            String year=request.getParameter("year");
            String cvv=request.getParameter("cvv");
            String pass=request.getParameter("pass");
            //String email=request.getParameter("mail");
          //  out.println()
          int remainingbal=0; 
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost/traveltourdb?user=root&password=system");
            PreparedStatement p=c.prepareStatement("select * from accountdetails where mname=? and cvv=? and atmpin=? and cardtype=? and cardno=?  and expm=? and expy=?");
            
            p.setString(1,name);
            p.setString(2,cvv);
            p.setString(3,pass);
            p.setString(4,ctype);
              p.setString(5,cardno);
            p.setString(6,month);
            p.setString(7,year);
          ResultSet rs=p.executeQuery();
          
            if(rs.next())
            { 
               
                remainingbal=Integer.parseInt(rs.getString(8))-Integer.parseInt(amount);
                
               if(remainingbal>0)
               {
                   PreparedStatement p1=c.prepareStatement("update accountdetails set balance=? where mname=? and cvv=? and atmpin=? and cardtype=? and cardno=?  and expm=? and expy=?");
                    p1.setString(1,Integer.toString(remainingbal)); 
                    p1.setString(2,name);
            p1.setString(3,cvv);
            p1.setString(4,pass);
            p1.setString(5,ctype);
              p1.setString(6,cardno);
            p1.setString(7,month);
            p1.setString(8,year);
          p1.executeUpdate();
          p1=c.prepareStatement("update "+hs.getAttribute("booking").toString()+"booking set paystatus='1' where uname=? and reqno=?");
          p1.setString(1, hs.getAttribute("uname").toString());
          p1.setString(2, hs.getAttribute("reqno").toString());
          p1.executeUpdate();
          response.sendRedirect("success.jsp");
               }
               else
               {
                   response.sendRedirect("failure.jsp");
               }
             c.close();
            }
            else
            {
                c.close();   
                response.sendRedirect("failure.jsp");
            }
           
          
       
        } 
        catch(Exception e)
        {
            out.println(e.getMessage());
        }                
         finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
