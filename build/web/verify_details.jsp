<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
   String uname,pass;
   uname=request.getParameter("uid");
   pass=request.getParameter("pass");
   Connection cn=null;
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       cn=DriverManager.getConnection("jdbc:mysql://localhost/traveltourdb?user=root&password=system");
       PreparedStatement ps=cn.prepareStatement("select * from regtable where uname=? and pass=?");
       ps.setString(1,uname);
       ps.setString(2,pass);
       ResultSet rs=ps.executeQuery();
       if(rs.next())
       {
           session.setAttribute("uname", uname);
                session.setAttribute("name", rs.getString(3));
                session.setAttribute("pass", pass);
                
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
