<%-- 
    Document   : Insurance
    Created on : 11 Apr, 2015, 11:47:40 PM
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insurance</title>
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
          var cardno_flag=false; 
          var pno_flag=false,mail_flag=false;
         function enable()
         {
              if( document.getElementById("submit").disabled == true)
              {
                document.getElementById("submit").disabled = false;
                document.getElementById("flddiv").innerHTML="";
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
        function chkfield(id)
            {
              if( document.getElementById("submit").disabled == true)
              {
                document.getElementById("submit").disabled = false;
                document.getElementById("flddiv").innerHTML="";
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
              if(id=="pno")
              {
                  pno_flag=chkpno();
              }
             
              
              if(id=="cardno")
              {
                   var a;
                  a=document.getElementById("cardno").value;
                  if(a.length!=12 || isNaN(a) )
                    { 
                        document.getElementById("cardnoerr").innerHTML="<font color=red>Invalid field</font>";
                        cardno_flag=false;
                    }
                   else
                   {
                       document.getElementById("cardnoerr").innerHTML="";
                       cardno_flag=true;
                   }   
              }
              
              if(id=="submit")
              {
                   document.getElementById(id).focus();
                    if( pno_flag==false||mail_flag==false)
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
         <style>
        .mystyle
        {
            color: #000000;
            font-size: 15px;
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
        <a href="index.jsp">
          <img src="images/logo.png" alt="Your Happy Family">
        </a>
      </h1>
         
        <nav class="horizontal-nav full-width horizontalNav-notprocessed">
            <ul class="sf-menu">
                   <li><a href="index.jsp">Home</a></li>
                   <li class="current"><a href="services.jsp">Services</a></li>
                   <li><a href="booking.jsp">Booking</a></li>
                   <li><a href="holidays.jsp">Holidays</a></li>
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
    <center><H2>Insurance Form</H2></center>
    
    
         <form action="insurance" method="post">
            
        <table width="100%" border="0" class="mystyle">
  <tr>
    <td width="29%">User Name</td>    
    <td width="25%"><%=session.getAttribute("uname")%></td>
    <td width="46%" rowspan="4"></td>
  </tr>
  <tr><td>&nbsp;</td></tr>
   <tr>
    <td>Age</td>
    <td><select name="age" id="age">
<option value="child" selected>0-12 Years</option>
<option value="adult">12-60 Years</option>
<option value="senior">60-70 Years</option>
</select></td>
    <td>&nbsp;</td>
  </tr>
  <tr><td>&nbsp;</td></tr>
<tr>
    <td>Phone Number</td>
    <td><input type="text" name="pno" value="" id="pno" onblur="chkfield(this.id)" onclick="enable()" /><div id="pnoerr"></div></td>
    <td>&nbsp;</td>
  </tr>
 <tr><td>&nbsp;</td></tr>
  <tr>
    <td>Email id</td>
    <td><input type="email" name="mail" value="" id="mail" onblur="chkfield(this.id)" onclick="enable()" /><div id="mailerr"></div></td>
    <td>&nbsp;</td>
  </tr>
 <tr><td>&nbsp;</td></tr>
  
 <tr>
    <td>Month Of Travel</td>
    <td><select name="month" id="month">
<option value="JA" selected>January</option>
<option value="FE">Feburary</option>
<option value="MA">March</option>
<option value="AP">April</option>
<option value="MA">May</option>
<option value="JU">June</option>
<option value="JY">July</option>
<option value="AU">August</option>
<option value="SE">September</option>
<option value="OC">October</option>
<option value="NO">November</option>
<option value="DE">December</option>
</select></td>
    <td>&nbsp;</td>
  </tr>
 <tr><td>&nbsp;</td></tr> 
 <tr>
    <td width="29%">Aadhaar Card No</td>
    <td width="25%"><input type="text" name="cardno" value="" id="cardno" onblur="chkfield(this.id)" onclick="enable()" maxlength="12" /><div id="cardnoerr"></div></td>
    <td width="46%" rowspan="4"></td>
  </tr>
 <tr><td>&nbsp;</td></tr> 
  <tr>
    <td>&nbsp;</td>
    <td><div id="flddiv"></div><input type="submit" value="Book" id="submit" onmouseover="chkfield(this.id)" /></td>
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
