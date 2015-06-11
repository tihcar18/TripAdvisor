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
        <title>Book Car</title>
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
          var pdate_flag=false,ddate_flag=false,ptime_flag=false,dtime_flag=false,cardno_flag=false;
         function enable()
         {
              if( document.getElementById("submit").disabled == true)
              {
                document.getElementById("submit").disabled = false;
                document.getElementById("flddiv").innerHTML="";
              }  
         }   
         function hide()
         {
             document.getElementById("d2").hidden=true;
             document.getElementById("t2").hidden=true;
             
             ddate_flag=true;
             dtime_flag=true;
         }
         function show()
         {
             document.getElementById("d2").hidden=false;
             document.getElementById("t2").hidden=false;
                ddate_flag=false;
             
             dtime_flag=false; 
         }
            
                   
        function chkfield(id)
            {
              if( document.getElementById("submit").disabled == true)
              {
                document.getElementById("submit").disabled = false;
                document.getElementById("flddiv").innerHTML="";
              }  
              
              if(id=="pdate")
              {
                   var a;
                  a=document.getElementById("pdate").value;
                  if(a.length==0 )
                    { 
                        document.getElementById("pdateerr").innerHTML="<font color=red>Blank field</font>";
                        pdate_flag=false;
                    }
                   else
                   {
                       document.getElementById("pdateerr").innerHTML="";
                       pdate_flag=true;
                   }   
              }
              if(id=="ddate")
              {
                   var a;
                  a=document.getElementById("ddate").value;
                  if(a.length==0 )
                    { 
                        document.getElementById("ddateerr").innerHTML="<font color=red>Blank field</font>";
                        ddate_flag=false;
                    }
                   else
                   {
                       document.getElementById("ddateerr").innerHTML="";
                       ddate_flag=true;
                   }   
              }
               if(id=="dtime")
              {
                   var a;
                  a=document.getElementById("dtime").value;
                  if(a.length==0 )
                    { 
                        document.getElementById("dtimeerr").innerHTML="<font color=red>Blank field</font>";
                        dtime_flag=false;
                    }
                   else
                   {
                       document.getElementById("dtimeerr").innerHTML="";
                       dtime_flag=true;
                   }   
              }
              if(id=="ptime")
              {
                   var a;
                  a=document.getElementById("ptime").value;
                  if(a.length==0 )
                    { 
                        document.getElementById("ptimeerr").innerHTML="<font color=red>Blank field</font>";
                        ptime_flag=false;
                    }
                   else
                   {
                       document.getElementById("ptimeerr").innerHTML="";
                       ptime_flag=true;
                   }   
              }
               if(id=="cardno")
              {
                   var a;
                  a=document.getElementById("cardno").value;
                  if(a.length!=12 || isNaN(a) )
                    { 
                        document.getElementById("cardnoerr").innerHTML="<font color=red>Blank field</font>";
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
                    if(pdate_flag==false||ddate_flag==false||dtime_flag==false||ptime_flag==false||cardno_flag==false)
                  {
                      document.getElementById("submit").disabled = true;
                      document.getElementById("flddiv").innerHTML="<font color=red>Please complete all fields!!</font>";
                  }
                  
                  else
                  {
                     var a,b;
                  a=document.getElementById("pdate").value;
                  b=document.getElementById("ddate").value;
                  if(b.length!=0 && b.localeCompare(a)<0 )
                  {
                      document.getElementById("submit").disabled = true;
                      document.getElementById("flddiv").innerHTML="<font color=red>Check In Date cannot be prior to Check Out Date</font>";
                  
                  }
                else
                {
                         
                       document.getElementById("submit").disabled = false;
                       document.getElementById("flddiv").innerHTML="";
                  }
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
    <body onload="hide()" class="page1" id="top">
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
                   <li><a href="services.jsp">Services</a></li>
                   <li class="current"><a href="booking.jsp">Booking</a></li>
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
    <center><H2>Book Car</H2></center>
         <form action="BookCar" method="post">
            
        <table width="100%" border="0" class="mystyle">
  <tr>
    <td width="29%">User Name</td>
    
    <td width="25%"><%=session.getAttribute("uname")%></td>
    <td width="46%" rowspan="4"></td>
  </tr>
 <tr><td>&nbsp;</td></tr>   
  <tr>
    <td>Type</td>
    <td><input type="radio" name="journey" value="one" id="one"  checked  onclick="hide()"/> One Way  &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="journey" value="round" id="round" onclick="show()"/> Round Trip </td>
    <td></td>
 </tr>
  <tr><td>&nbsp;</td></tr>
 <tr>
    <td>Pick-up City</td>
    <td><select name="pcity" id="pcity">
<option value="ND" selected>New Delhi</option>
<option value="KL">Kolkata</option>
<option value="CH">Chennai</option>
<option value="MB">Mumbai</option>
<option value="BG">Banglore</option>
<option value="AG">Agra</option>
<option value="AH">Ahmedabad</option>
<option value="HD">Hyderabad</option>
<option value="ID">Indore</option>
<option value="RC">Ranchi</option>
<option value="NN">Nanital</option>
<option value="MS">Mussorie</option>
<option value="KO">Kochi</option>
<option value="PU">Pune</option>
<option value="MG">Manglore</option>
<option value="CU">Cuttack</option>
<option value="DH">Dhramshala</option>
<option value="HA">Haridwar</option>
<option value="DG">Dargeeling</option>
<option value="DH">Dehradun</option>
</select></td>
    <td>&nbsp;</td>
  </tr>
   <tr><td>&nbsp;</td></tr>
 <tr>
    <td>Drop-off City</td>
    <td><select name="dcity" id="dcity">
<option value="ND" selected>New Delhi</option>
<option value="KL">Kolkata</option>
<option value="CH">Chennai</option>
<option value="MB">Mumbai</option>
<option value="BG">Banglore</option>
<option value="AG">Agra</option>
<option value="AH">Ahmedabad</option>
<option value="HD">Hyderabad</option>
<option value="ID">Indore</option>
<option value="RC">Ranchi</option>
<option value="NN">Nanital</option>
<option value="MS">Mussorie</option>
<option value="KO">Kochi</option>
<option value="PU">Pune</option>
<option value="MG">Manglore</option>
<option value="CU">Cuttack</option>
<option value="DH">Dhramshala</option>
<option value="HA">Haridwar</option>
<option value="DG">Dargeeling</option>
<option value="DH">Dehradun</option>
</select></td>
    <td>&nbsp;</td>
  </tr>
   <tr><td>&nbsp;</td></tr>
  <tr>
    <td>Pick-up Date</td>
    <td><input type="date" name="pdate" value="" id="pdate" onblur="chkfield(this.id)" onclick="enable()"/>
        <div id="pdateerr"></div></td>
    <td>&nbsp;</td>
  </tr>
   <tr><td>&nbsp;</td></tr>
  <tr id="d2" hidden>
    <td >Return Date</td>
    <td><input type="date" name="ddate" value="" id="ddate" onblur="chkfield(this.id)" onclick="enable()"/>
        <div id="ddateerr"></div></td>
    <td>&nbsp;</td>
  </tr>
   <tr><td>&nbsp;</td></tr>
  <tr>
    <td>Pick-up Time</td>
    <td><input type="time" name="ptime" value="" id="ptime" onblur="chkfield(this.id)" onclick="enable()"/>
        <div id="ptimeerr"></div></td>
    <td>&nbsp;</td>
  </tr>
   <tr><td>&nbsp;</td></tr>
  <tr hidden id="t2">
    <td>Return Time</td>
    <td><input type="time" name="dtime" value="" id="dtime" onblur="chkfield(this.id)" onclick="enable()"/>
        <div id="dtimeerr"></div></td>
    <td>&nbsp;</td>
  </tr>
   <tr><td>&nbsp;</td></tr>
  <tr>
    <td>Car Class Preference</td>
    <td><select name="carclass" id="carclass">
<option value="SM" selected>Small</option>
<option value="MI">Mid-Size</option>
<option value="LU">Luxury</option>
<option value="PR">Premium</option>
        </select></td>
        <td></td>
 </tr>
  <tr><td>&nbsp;</td></tr>
 <tr>
    <td width="29%">Aadhaar Card Number</td>
    <td width="25%"><input type="text" name="cardno" value="" id="cardno" onblur="chkfield(this.id)" onclick="enable()" maxlength="12" /><div id="cardnoerr"></div></td>
    <td width="46%" rowspan="4"></td>
  </tr>
   
   <tr><td>&nbsp;</td></tr>
  
  <tr>
    <td>&nbsp;</td>
    <td><div id="flddiv"></div><input type="submit" value="Book Car" id="submit" onmouseover="chkfield(this.id)" /></td>
  </tr>
        </table>
      </form>
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
