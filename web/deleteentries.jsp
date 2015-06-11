<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
   Connection cn=null;
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       cn=DriverManager.getConnection("jdbc:mysql://localhost/traveltourdb?user=root&password=system");
       PreparedStatement ps=cn.prepareStatement("delete  from carbooking where paystatus='0'");
       
       ps.executeUpdate();
       ps=cn.prepareStatement("delete  from trainbooking where paystatus='0'");ps.executeUpdate();
      ps= cn.prepareStatement("delete  from flightbooking where paystatus='0'");ps.executeUpdate();
      ps= cn.prepareStatement("delete  from hotelbooking where paystatus='0'");ps.executeUpdate();
      ps= cn.prepareStatement("delete  from packagebooking where paystatus='0'");ps.executeUpdate();
       out.println("");
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
