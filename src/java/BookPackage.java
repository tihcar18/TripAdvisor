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
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author win 8
 */
public class BookPackage extends HttpServlet {

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
            String pkgid=hs.getAttribute("pkgid").toString();
            String ptype=request.getParameter("ptype");
            String pdate=request.getParameter("pdate");
            //String ddate=request.getParameter("ddate");
            //String pcity=request.getParameter("pcity");
           // String booktype=request.getParameter("booktype");
            
            
            int t1=Integer.parseInt(request.getParameter("adult"));
            int t2=Integer.parseInt(request.getParameter("child"));
            int t3=Integer.parseInt(request.getParameter("infant"));
            int t4=t1+t2;
              String member=Integer.toString(t4);
            int dur=Integer.parseInt(hs.getAttribute("dur").toString());
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
Calendar c = Calendar.getInstance();
c.setTime(sdf.parse(pdate)); // Now use today date.
c.add(Calendar.DATE, dur); // Adding 5 days
String output = sdf.format(c.getTime());
System.out.println(output);
          String  ddate=sdf.format(c.getTime());
              int base=Integer.parseInt(hs.getAttribute("price").toString());
            double base1;
            if(ptype.compareTo("elite")==0)
            {
                base1=base+(0.4*base);
            }
            else if(ptype.compareTo("grand")==0)
            {
                base1=base+(0.4*base);
            }
            else
            {
                base1=base;
            }
          base1=(t1+t2)*base1;
            long cost=Math.round(base1);
            String reqno="";
            int req1;
           Class.forName("com.mysql.jdbc.Driver");
            Connection c1=DriverManager.getConnection("jdbc:mysql://localhost/traveltourdb?user=root&password=system");
            PreparedStatement p=c1.prepareStatement("select * from packagebooking order by reqno desc");
             ResultSet rs=p.executeQuery();
            if(rs.next())
            {
              reqno=rs.getString("reqno");
             req1=Integer.parseInt(reqno);
            }
            else
            {
                req1=10000000;
                
            }
             req1=req1+1;
            reqno=Integer.toString(req1);
            
            p=c1.prepareStatement("insert into packagebooking values(?,?,?,?,?,?,?,?,?,?)");
            
            p.setString(1, uname);
            p.setString(2, pkgid);
            p.setString(3, ptype);
            p.setString(4, pdate);
            p.setString(5, ddate);
            //p.setString(7, pcity);
            //p.setString(7,booktype);
            p.setString(6,reqno);
            p.setString(7,member);
              p.setString(8, Long.toString(cost));
            p.setString(9,new java.util.Date().toString());
            p.setString(10, "0");
            p.executeUpdate();
            c1.close();
           // if(booktype.compareTo("none")==0)
           // {
            response.sendRedirect("confirm.jsp?booking=package&cost="+cost+"&reqno="+reqno);
           /* }
            if(booktype.compareTo("car")==0)
            {
            response.sendRedirect("BookCar.jsp");
            }
            if(booktype.compareTo("train")==0)
            {
            response.sendRedirect("BookTrain.jsp");
            }
            if(booktype.compareTo("flight")==0)
            {
            response.sendRedirect("BookFlight.jsp");
            }*/
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
