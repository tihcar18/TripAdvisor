<%-- 
    Document   : registration
    Created on : 12 Jun, 2014, 10:03:14 AM
    Author     : win 8
--%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
         <meta charset="utf-8">
     <meta name = "format-detection" content = "telephone=no" />
     <link rel="icon" href="images/favicon.ico">
     <link rel="shortcut icon" href="images/favicon.ico" />
     <link rel="stylesheet" href="css/style1.css">
     <script src="js/jquery.js"></script>
      <script src="js/jquery-migrate-1.1.1.js"></script>
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
          var res1; 
          var uid_flag=false; 
          var city_flag=false;
          var pass_flag=false; 
          var cpass_flag=false,zip_flag=false,pno_flag=false,mail_flag=false,radio_flag=false,name_flag=false,address_flag=false,dob_flag=false;
         function enable()
         {
              if( document.getElementById("submit").disabled == true)
              {
                document.getElementById("submit").disabled = false;
                document.getElementById("flddiv").innerHTML="";
              }  
         }   
            function chkpass()
            {
              var a,b;
              a=document.getElementById("pass").value;
              b=document.getElementById("cpass").value;
              if(a.localeCompare(b)!=0 || a.length==0 || b.length==0)
              {
                document.getElementById("cpasserr").innerHTML="<font color=red>Password did not match</font>";
                return false;
              }
              else
              {
                document.getElementById("cpasserr").innerHTML="<font color=green>Passwords match</font>";
                return true;
              }
                  
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
          function chkzip()
            {
              var zip=document.getElementById("zip").value;
              if((zip.length!=6)||(isNaN(zip)))
              {
                  document.getElementById("ziperr").innerHTML="<font color=red>Zip Code is invalid</font>";
                  return false;
              }
              else
              {
                  document.getElementById("ziperr").innerHTML="";
                  return true;
              }
          } 
        function chkuid()
            {
                uid=document.getElementById("uid").value;
                if(uid.length<5)
                {
                   document.getElementById("uiderr").innerHTML="<font color=red>Username must be of atleast 5 characters</font>";
                   return false;
                 }
                 else
                 {
                    document.getElementById("uiderr").innerHTML="";
                     x=new XMLHttpRequest();
                     var url="checkuid.jsp?uid="+uid;
                     x.open("GET",url,true);
                     x.onreadystatechange=uidupdates;
                     x.send(null);
                 }
            }
        function uidupdates()
            {
                if(x.readyState==4)
                {   
                    res=x.responseText.trim();
                    
                    if(res=="true")
                     { 
                         document.getElementById("uiderr").innerHTML="<font color=green>Username Available</font>";
                         uid_flag=true;
                     }
                     else
                     {
                         document.getElementById("uiderr").innerHTML="<font color=red>Username Unavailable</font>";
                         uid_flag=false;
                     }
                 }
            }
            
        function chkradio()
            { 
                 if(document.getElementById("male").checked==false && document.getElementById("female").checked==false)
                     {
                         document.getElementById("mferr").innerHTML="<font color=red>Gender not selected</font>";
                         return false;                      
                      }
                      
                     else
                     {
                         document.getElementById("mferr").innerHTML="";
                         return true; 
                    } 
            }            
        function chkfield(id)
            {
              if( document.getElementById("submit").disabled == true)
              {
                document.getElementById("submit").disabled = false;
                document.getElementById("flddiv").innerHTML="";
              }  
              if(id=="uid")
              {
                
               uid_flag=chkuid();
             
              }
              if(id=="pass")
              {
                  var a;
                  a=document.getElementById("pass").value;
                  if(a.length==0)
                    { 
                        document.getElementById("passerr").innerHTML="<font color=red>Blank field</font>";
                        pass_flag=false;
                    }
                         
                   else
                   {
                       document.getElementById("passerr").innerHTML="";
                       pass_flag=true;
                   }      
                  
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
              
              if(id=="dob")
              {
                   var a;
                  a=document.getElementById("dob").value;
                  if(a.length==0 )
                    { 
                        document.getElementById("doberr").innerHTML="<font color=red>Blank field</font>";
                        dob_flag=false;
                    }
                   else
                   {
                       document.getElementById("doberr").innerHTML="";
                       dob_flag=true;
                   }   
              }
              if(id=="mail")
              {
                   var a;
                  a=document.getElementById("mail").value;
                  if(a.length==0 )
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
              if(id=="cpass")
              {
                  cpass_flag=chkpass();
              }
              if(id=="pno")
              {
                  pno_flag=chkpno();
              }
              if(id=="zip")
              {
                  zip_flag=chkzip();
              }
              if(id=="male" || id=="female")
              {
                 radio_flag=chkradio();   
              }
              if(id=="submit")
              {
                   document.getElementById(id).focus();
                    if( uid_flag==false||pass_flag==false||name_flag==false||address_flag==false||dob_flag==false||city_flag==false||cpass_flag==false||pno_flag==false||radio_flag==false||mail_flag==false||zip_flag==false)
                  {
                      document.getElementById("submit").disabled = true;
                      document.getElementById("flddiv").innerHTML="<font color=red>Please complete all fields!!</font>";
                  }
                  else
                  {
                      document.getElementById("submit").disabled = false;
                       document.getElementById("flddiv").innerHTML="";
                  }
                   
              }
       }
     
          
         </script>
         
    </head>
    <body class="page1" id="top">
         <header><div>
<!--==============================header=================================-->
     <div class="menu_block ">
     <div class="container_12">
        <div class="grid_12">
            
            <h1>
        <a href="index.jsp">
          <img src="images/logo.png" alt="Your Happy Family">
        </a>
      </h1>
         
        <nav class="horizontal-nav full-width horizontalNav-notprocessed">
            <ul class="sf-menu">
                   <li><a href="index.jsp">Home</a></li>
                   <li class="current"><a href="registration.jsp">Sign Up</a></li>
                   <li><a href="cust_login.jsp">Login </a></li>
                   <li><a href="aboutus.jsp">About Us</a></li>
                   <li><a href="contactus.jsp">Contact Us</a></li>
                 </ul>
              </nav>
              
           <div class="clear"></div>
            
  </div>
    

 <div class="clear"></div>
</div></div>


</div>
             <div class="clear"></div>
  <div class="container_12">
    <div class="grid_12">
        </div>
  </div>
</header>
       <div class="content">
  <div class="container_12" >
    <!--<div class="grid_4">-->
    <center><H2>Registration Form</H2></center>
         <form action="CustReg" method="post" enctype="multipart/form-data">
            
        <table width="100%" border="0">
  <tr>
    <td width="29%" style="color: #000000;font-size: 15px;">User Name</td>
    <td width="25%"><input type="text" name="uid" value="" id="uid" onblur="chkfield(this.id)" onclick="enable()" /><div id="uiderr"></div></td>
    <td width="46%" rowspan="4"><img src="user.jpg" height="100" width="100" /></td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  <tr>
    <td style="color: #000000;font-size: 15px;">Password</td>
    <td><input type="password" name="pass" value="" id="pass" onblur="chkfield(this.id)" onclick="enable()"/><div id="passerr"></div></td>
    </tr>
    <tr><td>&nbsp;</td></tr>
  <tr>
    <td style="color: #000000;font-size: 15px;">Confirm Password</td>
    <td><input type="password" name="cpass" value="" id="cpass" onblur="chkfield(this.id)" onclick="enable()"/><div id="cpasserr"></div></td>
    
    </tr>
    <tr><td>&nbsp;</td></tr>
  <tr>
    <td style="color: #000000;font-size: 15px;">Name</td>
    <td><input type="text" name="name" value="" id="name" onblur="chkfield(this.id)" onclick="enable()"/><div id="nameerr"></div></td>
    <td style="color: #000000;font-size: 15px;"><input type="file" name="sel" id="sel"/></td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  <tr>
    <td style="color: #000000;font-size: 15px;">Gender</td>
    <td style="color: #000000;font-size: 15px;"><input type="radio" name="gender" value="male" id="male" onmouseout="chkfield(this.id)" /> Male  &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="female" id="female" onmouseout="chkfield(this.id)"/> Female <div id="mferr"></div></td>
    <td></td>
 </tr>
 <tr><td>&nbsp;</td></tr>
  <tr>
    <td style="color: #000000;font-size: 15px;">Date Of Birth</td>
    <td><input type="date" name="dob" value="" id="dob" onblur="chkfield(this.id)" onclick="enable()"/>
        <div id="doberr"></div></td>
    <td>&nbsp;</td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  
  <tr>
    <td style="color: #000000;font-size: 15px;">Address</td>
    <td><textarea name="address" rows="4" cols="20" id="address"  onblur="chkfield(this.id)" onclick="enable()"/>
        </textarea><div id="addresserr"></div></td>
    <td>&nbsp;</td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  <tr>
    <td style="color: #000000;font-size: 15px;">City</td>
    <td><input type="text" name="city" value="" id="city" onblur="chkfield(this.id)" onclick="enable()" /><div id="cityerr"></div></td>
    <td>&nbsp;</td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  <tr>
    <td style="color: #000000;font-size: 15px;">State</td>
    <TD><select name=state id="state" size="1">
                  <option value="AP">Andhra Pradesh</option>
                  <option value="ND" selected>New Delhi</option>
                  <option value="PB">Punjab</option>
                  <option value="HR">Haryana</option>
                  <option value="HP">Himachal Pradesh</option>
                  <option value="GJ">Gujrat</option>
                  <option value="MP">Madhya Pradesh</option>
                  <option value="BR">Bihar</option>
                  <option value="MH">Maharashtra</option>
                  <option value="RJ">Rajasthan</option>
                  <option value="KA">Karnataka</option>
                  <option value="KR">Kerala</option>
                  <option value="UP">Uttar Pradesh</option>
                </select><div id="stateerr"></div></TD>
    <td>&nbsp;</td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  <tr>
    <td style="color: #000000;font-size: 15px;">Zip Code</td>
    <td><input type="text" name="zip" value="" id="zip" onblur="chkfield(this.id)" onclick="enable()" maxlength="6" /><div id="ziperr"></div></td>
    <td>&nbsp;</td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  <tr>
    <td style="color: #000000;font-size: 15px;">Phone Number</td>
    <td><input type="text" name="pno" value="" id="pno" onblur="chkfield(this.id)" onclick="enable()" /><div id="pnoerr"></div></td>
    <td>&nbsp;</td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  <tr>
    <td style="color: #000000;font-size: 15px;">Email id</td>
    <td><input type="email" name="mail" value="" id="mail" onblur="chkfield(this.id)" onclick="enable()" /><div id="mailerr"></div></td>
    <td>&nbsp;</td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  <tr>
    <td>&nbsp;</td>
    <td><div id="flddiv"></div><input type="submit" value="Register" id="submit" onmouseover="chkfield(this.id)" /></td>
  </tr>
        </table>
      </form>
    </div>
  </div>
   <!-- </div-->
      
      
      
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
