<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%
    String pass=request.getParameter("pass");
    String uname=(String)session.getAttribute("uname");
     Class.forName("com.mysql.jdbc.Driver");
     Connection c=DriverManager.getConnection("jdbc:mysql://localhost/traveltourdb?user=root&password=system");
     PreparedStatement p=c.prepareStatement("update regtable set pass=? where uname=?");
     p.setString(1,pass);
     p.setString(2,uname);
     p.executeUpdate();
     session.setAttribute("pass",pass);
     out.println("Done"); 
    
%>

