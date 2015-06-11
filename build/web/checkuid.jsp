<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%  String uid=request.getParameter("uid");
  Class.forName("com.mysql.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/traveltourdb?user=root&password=system");
String source,target="";
  ServletContext sc=getServletContext();
             String path=sc.getRealPath("user_images");
             source=sc.getRealPath("user.jpg");

   try
   {
        Statement st=cn.createStatement();
        ResultSet rs;
       rs=st.executeQuery("select * from regtable where uname='"+uid+"'");
       
       if(rs.next())
       { 
           
           out.println("false");
         //  session.setAttribute("ses1",sid);
        }
       else
       {
           
           File f=new File(path+"\\"+uid+"\\");
            
                      f.mkdir();
                     File f1=new File(path+"\\"+uid+"\\profilepic\\");
                      f1.mkdir();
                      target=path+"\\"+uid+"\\profilepic\\user.jpg";
                       FileInputStream in = new FileInputStream(source);
                      
                       FileOutputStream out1 = new FileOutputStream(target);

       // Transfer bytes from in to out
           byte[] buf = new byte[1024];
            int len;
            while ((len = in.read(buf)) > 0) {
                 out1.write(buf, 0, len);
                                 }
               in.close();
               out1.close();

           out.println("true");
          
       }
       
   } //end of try
   catch(Exception e)
   {
       out.println(e.getMessage());
   }
    finally
   {
   
    cn.close();
   }
   %>
    