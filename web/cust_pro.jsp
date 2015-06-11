<%-- 
    Document   : cust_pro
    Created on : 15-Apr-2015, 20:02:38
    Author     : win 8
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
         <meta charset="utf-8">
     <meta name = "format-detection" content = "telephone=no" />
     <link rel="icon" href="images/favicon.ico">
     <link rel="shortcut icon" href="images/favicon.ico" />
     <link rel="stylesheet" href="css/style1.css">
     <script src="js/jquery.js"></script>
      <script src="js/jquery-migrate-1.1.1.js"></script>
      <script src="js/jquery-1.7.1.min.js"></script>
     <script src="js/script.js"></script> 
     <script src="js/superfish.js"></script>
     <script src="js/sForm.js"></script>
     <script src="js/jquery.ui.totop.js"></script>
     <script src="js/jquery.equalheights.js"></script>
     <script src="js/jquery.mobilemenu.js"></script>
     <script src="js/jquery.tabs.min.js"></script>
     <script src="js/jquery.easing.1.3.js"></script>
     <script>
       $(document).ready(function(){
        $().UItoTop({ easingType: 'easeOutQuart' });
       });    
     </script>

      <!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
         </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <link rel="stylesheet" media="screen" href="css/ie.css">


    <![endif]-->
    <script>
                   var pno_flag=true,mail_flag=true,name_flag=true,address_flag=true,zip_flag=true,central_flag=false;
           var curp_flag=false,newp_flag=false,conp_flag=false,city_flag=true;
           x=new XMLHttpRequest();

            function enable()
            {
               if( document.getElementById("upass").disabled == true)
              {
                document.getElementById("upass").disabled = false;
                document.getElementById("flddiv1").innerHTML="";
              }  
            }
            function enable1()
            {
               if( document.getElementById("upro").disabled == true)
              {
                document.getElementById("upro").disabled = false;
                document.getElementById("flddiv").innerHTML="";
              }  
            }   
        
          function chkpass(str,str1)
            {
                if(str!=str1)
                {   
                    document.getElementById("curperr").innerHTML="<font color='Red'>Incorrect Current password</font>";
                  curp_flag=false; 
               }
                
                else
                {   
                    document.getElementById("curperr").innerHTML="";
                    curp_flag=true;
                }
            }
           function chkpass1()
            {
              var a,b;
              a=document.getElementById("newp").value;
              b=document.getElementById("conp").value;
              if(a.localeCompare(b)!=0 || a.length==0 || b.length==0)
              {
                document.getElementById("conperr").innerHTML="<font color=red>Password did not match</font>";
                return false;
              }
              else
              {
                document.getElementById("conperr").innerHTML="<font color=green>Passwords match</font>";
                return true;
              }
          }  
    
        function changeflag(id)
          {  
              central_flag=true;
             if(id=="name")
                 name_flag=false;
             if(id=="address")
                 address_flag=false;
             if(id=="pno")
                 pno_flag=false;
             if(id=="mail")
                 mail_flag=false;
             if(id=="zip")
                 zip_flag=false;
             if(id=="city")
                 city_flag=false;
             
             
          }
  
        function chkpno()
            {
              var pno=document.getElementById("pno").value;
              if((pno.length!=10)||(isNaN(pno)))
              {
                  document.getElementById("pnoerr").innerHTML="<font color=red>Phone no. is invalid</font>";
                  return false;
              }
              else
              {
                  document.getElementById("pnoerr").innerHTML="";
                  return true;
              }
          } 
        
        function chkfield(id)
            {
              if( document.getElementById("upro").disabled == true)
              {
                document.getElementById("upro").disabled = false;
                document.getElementById("flddiv").innerHTML="";
              }  
              
              if(id=="name")
              {
                  var a;
                  a=document.getElementById("name").value;
                  if(a.length==0)
                    { 
                        document.getElementById("nameerr").innerHTML="<font color=red>Blank field</font>";
                        
                        name_flag=false;
                    }
                   else
                   {
                       document.getElementById("nameerr").innerHTML="";
                       name_flag=true;
                   }      
              }
              if(id=="address")
              {
                  var a;
                  a=document.getElementById("address").value;
                  if(a.length==0)
                    { 
                        document.getElementById("addresserr").innerHTML="<font color=red>Blank field</font>";
                        address_flag=false;
                    }
                   else
                   {
                       document.getElementById("addresserr").innerHTML="";
                       address_flag=true;
                   }    
              }
          
              if(id=="mail")
              {
                  var a;
                  a=document.getElementById("mail").value;
                  if(a.length==0)
                    { 
                        document.getElementById("mailerr").innerHTML="<font color=red>Blank field</font>";
                        mail_flag=false;
                    }
                   else
                   {
                       document.getElementById("mailerr").innerHTML="";
                       mail_flag=true;
                   }   
              }
              
              
              if(id=="city")
              {
                 var a;
                  a=document.getElementById("city").value;
                  if(a.length==0)
                    { 
                        document.getElementById("cityerr").innerHTML="<font color=red>Blank field</font>";
                        city_flag=false;
                    }
                   else
                   {
                       document.getElementById("cityerr").innerHTML="";
                       city_flag=true;
                   }     
              }
              
               if(id=="zip")
              {
                 var a;
                  a=document.getElementById("zip").value;
                  if(a.length==0)
                    { 
                        document.getElementById("ziperr").innerHTML="<font color=red>Blank field</font>";
                        zip_flag=false;
                    }
                   else
                   {
                       document.getElementById("ziperr").innerHTML="";
                       zip_flag=true;
                   }     
              }
              if(id=="pno")
              {
                  pno_flag=chkpno();
              }
              
              if(id=="upro")
              {
                   document.getElementById(id).focus();
                   if(central_flag==false)
                  {
                      document.getElementById("upro").disabled = true;
                      document.getElementById("flddiv").innerHTML="<font color=red>You haven't updated anything</font>";
                  }     
                 else if( name_flag==false||address_flag==false||city_flag==false||pno_flag==false||mail_flag==false||zip_flag==false)
                  {
                      document.getElementById("upro").disabled = true;
                      document.getElementById("flddiv").innerHTML="<font color=red>Please complete all fields!!</font>";
                  }
                  else
                  {
                      document.getElementById("upro").disabled = false;
                       document.getElementById("flddiv").innerHTML="";
                  }
                   
              }
       }
       function chkfield1(id)
          {
              if( document.getElementById("upass").disabled == true)
              {
                document.getElementById("upass").disabled = false;
                document.getElementById("flddiv").innerHTML="";
              }
              if(id=="newp")
              {
                  var a;
                  a=document.getElementById("newp").value;
                  if(a.length==0)
                    { 
                        document.getElementById("newperr").innerHTML="<font color=red>Blank field</font>";
                        newp_flag=false;
                    }
                         
                   else
                   {
                       document.getElementById("newperr").innerHTML="";
                       newp_flag=true;
                   }      
              }
              if(id=="conp")
              {
                  
                  conp_flag=chkpass1();
              }
              if(id=="upass")
              {
                 document.getElementById(id).focus();  
                if( conp_flag==false || newp_flag==false||curp_flag==false)
                  {
                      document.getElementById("upass").disabled = true;
                      document.getElementById("flddiv1").innerHTML="<font color=red>Please complete all fields!!</font>";
                  }
                  else
                  {
                      document.getElementById("upass").disabled = false;
                       document.getElementById("flddiv1").innerHTML="";
                  }
 
              }
          }
          function updatepass()
          {
              var pass=document.getElementById("conp").value;
              var url="updatepassword.jsp?pass="+pass;
                x.open("GET",url,true);
                x.onreadystatechange=updates;
                x.send(null);
          }
          function updates()
          {
            if(x.readyState==4)
            {
              alert("Password Successfully updated");
              location="cust_pro.jsp";
            }           
          }
       
 
    /* $(document).ready(function() {
         $("#divpass").hide();
         $("#passbutton").click(function() {
             if ($(this).val() == "Edit Password") {
                  $(this).val("Update Profile");
             }
             else 
             {
                $(this).val("Edit Password");
             }
            
             
                $("#divpass").slideToggle();
                $("#divother").slideToggle();
              
                   });
              });*/
             
               function noBack() { window.history.forward(); }
          
         </script>
  <script>
         $(document).ready(function() {
         $("#div1").hide();
         $("#div2").hide();
         $("#div3").hide();
         
         $("#p1").click(function() {
                $("#div1").slideToggle();
              $("#div2").slideUp();
              $("#div3").slideUp();
                   });
         $("#p2").click(function() {
            $("#div2").slideToggle();
            $("#div1").slideUp();
             $("#div3").slideUp();
              
                   });
        $("#p8").click(function() {
                $("#div3").slideToggle();
                $("#div1").slideUp();
                $("#div2").slideUp();
                   });   
       
              });
    
    </script>

    <style>
        .mystyle
        {
            color: #000000;
            font-size: 15px;
            
        }
        .panel {
            color: #000000;
            font-size: 15px;
        position: relative;
        background-color: wheat;
        padding: 5px;
        border: 1px solid #999;
      }
       .mystyle2
        {
            height: 100px;
  
        }
  </style>
    
    </head>
    <body class="page1" id="top">
         <header><div>
<!--==============================header=================================-->
     <div class="menu_block ">
     <div class="container_12">
        <div class="grid_12">
            
            <h1>
        <a href="index.html">
          <img src="images/logo.png" alt="Your Happy Family">
        </a>
      </h1>
         
        <nav class="horizontal-nav full-width horizontalNav-notprocessed">
            <ul class="sf-menu">
                   <li><a href="index.jsp">Home</a></li>
                   <li  class="current"><a href="cust_pro.jsp">My Profile</a></li>
                   
                   <li><a href="aboutus.jsp">About Us</a></li>
                   <li><a href="contactus.jsp">Contact Us</a></li>
                   <li><a href="logout.jsp">Logout </a></li>
            </ul>
              </nav>
              
            <div class="clear"></div>
            
  </div>
    

<div class="clear"></div>
</div></div>


</div>

</header>
        <%  
         String b=session.getAttribute("uname").toString();  
        Class.forName("com.mysql.jdbc.Driver");
         Connection c= DriverManager.getConnection("jdbc:mysql://localhost/traveltourdb?user=root&password=system");
         PreparedStatement p=c.prepareStatement("select * from regtable where uname=?");
         p.setString(1, b);
         ResultSet rs=p.executeQuery();
         rs.next();
        %>
   
         <div class="content">
  <div class="container_12" >
       <center><H2>Your Account</H2></center><br>
       <p id="p1" class="panel">Edit Profile</p>
       <div id="div1">
        
       <form action="CustPro" method="post" enctype="multipart/form-data">
           <table width="100%" border="0" class="mystyle">
  <tr>
    <td>Name</td>
    <td><input type="text" name="name" value="<%=rs.getString(3)%>" id="name" onblur="chkfield(this.id)" onclick="changeflag(this.id);enable1();" /><div id="nameerr"></div></td>
    <td width="46%" rowspan="4"><img src="user_images\<%=b%>\profilepic\user.jpg" alt="user" height="150" width="150" onError="this.onerror=null;this.src='images/user.jpg';"/></td>
    
  </tr>
  <tr><td>&nbsp;</td></tr>
  <tr>
    <td>Address</td>
    <td><textarea name="address" rows="4" cols="20" id="address"  onblur="chkfield(this.id)" onclick="changeflag(this.id);enable1();"  />
        <%=rs.getString(6).trim()%></textarea><div id="addresserr"></div></td>
       
    <td>&nbsp;</td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  <tr>
    <td>City</td>
    <td><input type="text" name="city" value="<%=rs.getString(7)%>" id="city" onblur="chkfield(this.id)" onclick="changeflag(this.id);enable1();"  /><div id="cityerr"></div></td>
    <td width="46%" rowspan="4"></td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  <tr>
    <td>State</td>
    <TD><select name=state id="state" size="1" >
            <option value="<%=rs.getString(8)%>" selected><%=rs.getString(8)%></option>
            <option value="Andhra Pradesh">Andhra Pradesh</option>
                  <option value="New Delhi" >New Delhi</option>
                  <option value="Punjab">Punjab</option>
                  <option value="Haryana">Haryana</option>
                  <option value="Himachal Pradesh">Himachal Pradesh</option>
                  <option value="Gujarat">Gujarat</option>
                  <option value="Madhya Pradesh">Madhya Pradesh</option>
                  <option value="Bihar">Bihar</option>
                  <option value="Maharashtra">Maharashtra</option>
                  <option value="Rajasthan">Rajasthan</option>
                  <option value="Karnataka">Karnataka</option>
                  <option value="Kerala">Kerala</option>
                  <option value="Uttar Pradesh">Uttar Pradesh</option>
                </select><div id="stateerr"></div></TD>
    <td>&nbsp;</td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  <tr>
    <td>Zip Code</td>
    <td><input type="text" name="zip" value="<%=rs.getString(9)%>" id="zip" onblur="chkfield(this.id)" onclick="changeflag(this.id);enable1();" /><div id="ziperr"></div></td>
    <td><input type="file" name="sel" id="sel"  onclick="changeflag(this.id);enable1();"/></td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  <tr>
    <td>Phone Number</td>
    <td><input type="text" name="pno" value="<%=rs.getString(10)%>" id="pno" onblur="chkfield(this.id)" onclick="changeflag(this.id);enable1();"  /><div id="pnoerr"></div></td>
    <td></td>
    
  </tr>
  <tr><td>&nbsp;</td></tr>
  
  <tr>
    <td>Email id</td>
    <td><input type="email" name="mail" value="<%=rs.getString(11)%>" id="mail" onblur="chkfield(this.id)" onclick="changeflag(this.id);enable1();"  /><div id="mailerr"></div></td>
    <td><div id="flddiv"></div><input type="submit" value="Update" id="upro" onmouseover="chkfield(this.id)" onfocus="chkfield(this.id)" /></td>
  </tr>
  <tr><td>&nbsp;</td></tr>
        </table>
      </form>
      </div>  
   
  <!--<input type="button" id="passbutton" value="Edit Password" style="background-color: #3CF;margin-left: 150px"-->
  <p id="p2" class="panel">Change Password</p>     
  <div id="div2">
           
      <% String a=session.getAttribute("pass").toString();  %>
              <!--<center><h2>Change Password</h2></center--><br>
              <table width="100%" border="0" class="mystyle">
            <tr>
                <td>Current Password</td> 
                <td><input type="password" id="curp" value="" onblur="chkpass('<%=a%>',this.value)" onclick="enable()"  ><div id="curperr"></div></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr> 
                <td>New Password</td> 
                <td><input type="password" id="newp" value="" onblur="chkfield1(this.id)" onclick="enable()"  ><div id="newperr"></div></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td>Confirm Password</td> 
                <td><input type="password" id="conp" value="" onblur="chkfield1(this.id)" onclick="enable()"  ><div id="conperr"></div></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td></td>
                <td><input type="button" value="Update" id="upass" onmouseover="chkfield1(this.id)" onclick="updatepass()" onfocus="chkfield1(this.id)"><div id="flddiv1"></div></td>
            </tr>    
        </table>
        </div> 
            <a  href="carbookhistory.jsp"><p id="p3" class="panel">Car Booking History</p></a>
        
            <a  href="trainbookhistory.jsp"><p id="p4" class="panel">Train Booking History</p></a>
    
            <a  href="flightbookhistory.jsp"><p id="p5" class="panel">Flight Booking History</p></a>
    
    <a  href="hotelbookhistory.jsp"><p id="p6" class="panel">Hotel Booking History</p></a>   
    
    <a  href="packagebookhistory.jsp"><p id="p7" class="panel">Package Booking History</p></a>
    
    <%
       p=c.prepareStatement("select * from ewallet where uname=?");
       p.setString(1, b);
       rs=p.executeQuery();
       if(rs.next())
         {
       %>
       
    <p id="p8" class="panel">Show E-Wallet Balance</p>
    <div id="div3" class="mystyle">
       <center><b>Balance in your E-Wallet is Rs. <%=rs.getString(2)%></b></center>
    </div>
       
       <%
         }
       %>
      
  </div>
  </div>
             <footer>   
    <div class="container_12">
      <div class="grid_3 fright">
       <!-- <ul>
          <li><a href="#">Destin hotels</a></li>
          <li><a href="#">Galveston hotels</a></li>
          <li><a href="#">Gatlinburg hotels</a></li>
          <li><a href="#">Hawaii hotels</a></li>
          <li><a href="#">Hilton Head hotels</a></li>
          <li><a href="#">Honolulu hotels</a></li>
        </ul>-->
      </div>
      <div class="grid_2 fright">
       <!-- <ul>
          <li><a href="#">Branson hotels</a></li>
          <li><a href="#">Brooklyn hotels</a></li>
          <li><a href="#">Chicago hotels</a></li>
          <li><a href="#">Dallas hotels</a></li>
          <li><a href="#">Denver hotels</a></li>
          <li><a href="#">Destin hotels</a></li>
        </ul>-->
      </div>      <div class="none"></div>

      <div class="grid_2 fright">
        <!--<ul>
          <li><a href="#">Anaheim hotels</a></li>
          <li><a href="#">Aruba hotels</a></li>
          <li><a href="#">Asheville hotels</a></li>
          <li><a href="#">Atlanta hotels</a></li>
          <li><a href="#">Austin hotels</a></li>
          <li><a href="#">Baltimore hotels</a></li>
        </ul-->
      </div>
      <div class="grid_5">
       
        <div class="copy">
        
        <a href="index.jsp" class="f_logo">
          <img src="images/f_logo.png" alt="">
        </a>
        <div>
        &copy; <span id="copyright-year"></span><br><!--{%FOOTER_LINK} --></div>
        </div>
      </div>
    </div>  
  </footer>
<script type="text/javascript">
 var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-7078796-5']);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analyticas.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();</script>   
   
    </body>
</html>
