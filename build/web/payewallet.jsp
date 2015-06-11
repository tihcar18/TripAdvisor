<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    
    
 int remainingbal=Integer.parseInt(request.getParameter("c")) -Integer.parseInt(session.getAttribute("cost").toString());    
  Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost/traveltourdb?user=root&password=system");
            PreparedStatement p=c.prepareStatement("update ewallet set cash=? where uname=?");
            p.setString(1, Integer.toString(remainingbal));
            p.setString(2, session.getAttribute("uname").toString());
            p.executeUpdate();
            out.println("Payment Successfully done via E-Wallet.");
    %>