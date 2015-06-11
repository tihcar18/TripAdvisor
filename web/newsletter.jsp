<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
   String email;
   email=request.getParameter("email");
   
   Connection cn=null;
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       cn=DriverManager.getConnection("jdbc:mysql://localhost/traveltourdb?user=root&password=system");
       PreparedStatement ps=cn.prepareStatement("insert into newsletter value(?)");
       ps.setString(1,email);
       ps.executeUpdate();
       
       out.println("Done");
     }
       
   
   catch(Exception e)
   {
      out.println(e.getMessage());
   }
   finally
   {
       cn.close();
   }
  
%>
