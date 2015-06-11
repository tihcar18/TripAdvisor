<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

String reqno=request.getParameter("reqno");
String table=request.getParameter("table");
String uname=session.getAttribute("uname").toString();
String table1="";
 Connection cn=null;
 try
   {
       Class.forName("com.mysql.jdbc.Driver");
       cn=DriverManager.getConnection("jdbc:mysql://localhost/traveltourdb?user=root&password=system");
       if(table.compareTo("Hotel")==0)
       {
           table1="hotelbooking";
       }
       if(table.compareTo("Car")==0)
       {
           table1="carbooking";
       }
       if(table.compareTo("Train")==0)
       {
           table1="trainbooking";
       }
       if(table.compareTo("Flight")==0)
       {
           table1="flightbooking";
       }
       if(table.compareTo("Package")==0)
       {
           table1="packagebooking";
       }
       
       
       
       PreparedStatement ps=cn.prepareStatement("select * from "+table1+" where uname=? and reqno=?");
       ps.setString(1,uname);
       ps.setString(2,reqno);
       ResultSet rs=ps.executeQuery();
      
       if(rs.next())
       {
           PreparedStatement ps1=cn.prepareStatement("delete from "+table1+" where uname=? and reqno=?");
            ps1.setString(1,uname);
            ps1.setString(2,reqno);
            ps1.executeUpdate();
            out.println("Done");
       }
       else
       {
           out.println("Not Done");
       }
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
