/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author a
 */
public class insurance extends HttpServlet {

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
            String uname=hs.getAttribute("uname").toString();            
// String uname=request.getParameter("uid");
            String age=request.getParameter("age");
            String pno=request.getParameter("pno");
            String mail=request.getParameter("mail");
            String month=request.getParameter("month");
            String cardno=request.getParameter("cardno");
            String reqno="";
            int req1;
           Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost/traveltourdb?user=root&password=system");
            PreparedStatement p=c.prepareStatement("select * from insurance order by reqno desc");
             ResultSet rs=p.executeQuery();
            if(rs.next())
            {
              reqno=rs.getString(7);
             req1=Integer.parseInt(reqno);
            }
            else
            {
                req1=100000000;
                
            }
             req1=req1+1;
            reqno=Integer.toString(req1);
            
            p=c.prepareStatement("insert into insurance values(?,?,?,?,?,?,?)");
            
            p.setString(1, uname);
            p.setString(2, age);
            p.setString(3, pno);
            p.setString(4, mail);
            p.setString(5, month);
            p.setString(6, cardno);
            p.setString(7,reqno);
            p.executeUpdate();
            
            
        
            c.close();
            
           
             
            response.sendRedirect("index.jsp");
        
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        } finally {
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
