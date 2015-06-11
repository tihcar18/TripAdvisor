import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Collection;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@MultipartConfig
public class CustReg extends HttpServlet 
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
            String uname=request.getParameter("uid");
            String password=request.getParameter("pass"); 
            String gender=request.getParameter("gender");
            String name=request.getParameter("name");
            String address=request.getParameter("address").trim();
            String phone=request.getParameter("pno");
            String dob=request.getParameter("dob");
            String city=request.getParameter("city");
            String email=request.getParameter("mail");
            String zip=request.getParameter("zip");
            String state=request.getParameter("state");
            //String find_p=sponserid,find_p1;
           // String remoteAddr = request.getRemoteAddr();
		/*ReCaptchaImpl reCaptcha = new ReCaptchaImpl();
		reCaptcha.setPrivateKey("6LdlHOsSAAAAACe2WYaGCjU2sc95EZqCI9wLcLXY");
                String challenge = request
				.getParameter("recaptcha_challenge_field");
		String uresponse = request.getParameter("recaptcha_response_field");
		ReCaptchaResponse reCaptchaResponse = reCaptcha.checkAnswer(
				remoteAddr, challenge, uresponse);

		if (!reCaptchaResponse.isValid()) {
			
			//out.println("CAPTCHA Validation Failed!");
                        response.sendRedirect("ClientReg/failure.jsp");
                       
		}
                else{
            */
            /*URLConnection myURLConnection=null;
                URL myURL=null;
                 BufferedReader reader=null;
                 String gcaptcha=request.getParameter("g-recaptcha-response");
                   String remoteAddr = request.getRemoteAddr();
    String mainUrl=" https://www.google.com/recaptcha/api/siteverify?secret=6LcD3wQTAAAAABLFYL2hB5SSDD3KuNyIfz_pJCkH&response="+gcaptcha+"&remoteip="+remoteAddr;

 myURL = new URL(mainUrl);
    myURLConnection = myURL.openConnection();
    myURLConnection.connect();
    reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
    //reading response 
    String respon,res="";
    while ((respon = reader.readLine()) != null)
        res=res+respon;

		if (res.contains("false")) {
			
			//out.print("CAPTCHA Validation Failed! Try Again.");
                    response.sendRedirect("ClientReg/failure.jsp");
		} */
            Part filePart = request.getPart("sel");
            InputStream imageInputStream = filePart.getInputStream();
            ServletContext sc=getServletContext();
            String path=sc.getRealPath("user_images");
            filePart.write(path+"\\"+uname+"\\profilepic\\user.jpg");
            Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost/traveltourdb?user=root&password=system");
            PreparedStatement p=c.prepareStatement("insert into regtable values(?,?,?,?,?,?,?,?,?,?,?)");
            ResultSet rs;
            p.setString(1, uname);
            p.setString(2, password);
            p.setString(3, name);
            p.setString(4, gender);
            p.setString(5, dob);
            p.setString(6, address);
            p.setString(7, city);
            p.setString(8, state);
            p.setString(9, zip);
            p.setString(10, phone);
            p.setString(11,email);
            p.executeUpdate();
            
            
        
            c.close();
            
           
             
            response.sendRedirect("cust_login.jsp");
        }//end of try
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
