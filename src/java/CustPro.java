import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Collection;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


@MultipartConfig
public class CustPro extends HttpServlet 
{
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       // response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       Collection<Part> parts = request.getParts();
       //---------------
        try 
        {
            HttpSession hs=request.getSession();
            String uname=hs.getAttribute("uname").toString();
            String name=request.getParameter("name");
            String address=request.getParameter("address").trim();
            String city=request.getParameter("city");
            String state=request.getParameter("state");
            String zip=request.getParameter("zip");
            String phone=request.getParameter("pno");
            String email=request.getParameter("mail");
            //String email=request.getParameter("mail");
            
            
            Part filePart = request.getPart("sel");
            InputStream imageInputStream = filePart.getInputStream();
            if(imageInputStream.toString().contains("java.io.FileInputStream"))
            {
             ServletContext sc=getServletContext();
             String path=sc.getRealPath("user_images");
             filePart.write(path+"\\"+uname+"\\profilepic\\user.jpg");
            }
            Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost/traveltourdb?user=root&password=system");
            PreparedStatement p=c.prepareStatement("update regtable set name=?,zip=?,state=?,city=?,phone=?,address=?,email=? where uname=?");
            
            p.setString(1,name);
            p.setString(2,zip);
            p.setString(3,state);
            p.setString(4,city);
              p.setString(5,phone);
            p.setString(6,address);
            p.setString(7,email);
            p.setString(8,uname);            
            p.executeUpdate();
            //hs.setAttribute("name",name);
            c.close();
            response.sendRedirect("cust_pro.jsp");
       
        } 
        catch(Exception e)
        {
            out.println(e.getMessage());
        }                
        finally 
        {
            out.close();
        }
    }

    
  

   
}