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
 * @author win 8
 */
public class BookTrain extends HttpServlet {

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
            String type=request.getParameter("journey"); 
            String pcity=request.getParameter("pcity");
            String dcity=request.getParameter("dcity");
            String pdate=request.getParameter("pdate");
            String ddate=request.getParameter("ddate");
            String tclass=request.getParameter("tclass");
            String trainno=request.getParameter("trainno");
            String cardno=request.getParameter("cardno");
            int t1=Integer.parseInt(request.getParameter("adult"));
            int t2=Integer.parseInt(request.getParameter("child"));
            int t3=Integer.parseInt(request.getParameter("infant"));
            t3+=t1+t2;
            String ticket=Integer.toString(t3);
            String reqno="";
            int req1;
           Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost/traveltourdb?user=root&password=system");
            PreparedStatement p=c.prepareStatement("select * from trainbooking order by reqno desc");
             ResultSet rs=p.executeQuery();
            if(rs.next())
            {
              reqno=rs.getString(11);
             req1=Integer.parseInt(reqno);
            }
            else
            {
                req1=10000000;
                
            }
             req1=req1+1;
            reqno=Integer.toString(req1);
            
            p=c.prepareStatement("insert into trainbooking values(?,?,?,?,?,?,?,?,?,?,?)");
            
            p.setString(1, uname);
            p.setString(2, type);
            p.setString(3, pcity);
            p.setString(4, dcity);
            p.setString(5, pdate);
            p.setString(6, ddate);
            p.setString(7, tclass);
            p.setString(8, trainno);
            p.setString(9, cardno);
            p.setString(10,ticket);
            p.setString(11,reqno);
           
            p.executeUpdate();
            
            
        
            c.close();
            
           
             
            response.sendRedirect("cust_login.jsp");
        
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
