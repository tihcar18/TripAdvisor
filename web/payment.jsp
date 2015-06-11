<%-- 
    Document   : payment
    Created on : 16-Apr-2015, 10:59:53
    Author     : win 8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Gateway</title>
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
       
       
      function noBack()
        {
            window.history.forward();
        }
          
       
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
    
          var cardno_flag=false; 
          var cvv_flag=false,mail_flag=false,pass_flag=false;
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
              var pass=document.getElementById("pass").value;
              if((pass.length!=4)||(isNaN(pass)))
              {
                  document.getElementById("passerr").innerHTML="<font color=red>Invalid Field</font>";
                  return false;
              }
              else
              {
                  document.getElementById("passerr").innerHTML="";
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
              if(id=="name")
              {
                   var a;
                  a=document.getElementById("name").value;
                  if(a.length==0 )
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
              if(id=="pass")
              {
                  pass_flag=chkpass();
              }
             
              
              if(id=="cardno")
              {
                   var a;
                  a=document.getElementById("cardno").value;
                  if(a.length!=16 || isNaN(a) )
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
             
                    if(id=="cvv")
              {
                   var a;
                  a=document.getElementById("cvv").value;
                  if(a.length!=3 || isNaN(a) )
                    { 
                        document.getElementById("cvverr").innerHTML="<font color=red>Invalid field</font>";
                        cvv_flag=false;
                    }
                   else
                   {
                       document.getElementById("cvverr").innerHTML="";
                       cvv_flag=true;
                   }   
              }
          
        
              if(id=="submit")
              {
                   document.getElementById(id).focus();
                    if( pass_flag==false||cvv_flag==false||cardno_flag==false||name_flag==false)
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
    <body class="page1" id="top" onload="noBack();">
            <%
   /*if(session.getAttribute("uname")==null)
   { 
       response.sendRedirect("cust_login.jsp");
   } 
   else {*/
%>
<header><div>
<!--==============================header=================================-->
     <div class="menu_block ">
     <div class="container_12">
        <div class="grid_12">
            
            <h1>
        <a href="#">
          <img src="images/logo.png" alt="Your Happy Family">
        </a>
      </h1>
         
        <nav class="horizontal-nav full-width horizontalNav-notprocessed">
            <ul class="sf-menu">
                   <!--li><a href="index.jsp">Home</a></li>
                   <li class="current"><a href="services.jsp">Services</a></li>
                   <li><a href="booking.jsp">Booking</a></li>
                   <li><a href="holidays.jsp">Holidays</a></li-->
                   <li class="current"><a href="#">Make Payment</a></li>
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
        
        <center><H2>Make Payment</H2></center>
    
    
         <form action="gateway" method="post">
        <table width="100%" border="0" class="mystyle">
  <tr>
    <td width="29%">User Name</td>    
    <td width="25%"><%=session.getAttribute("uname")%></td>
    <td width="46%" rowspan="4"></td>
  </tr>
  <tr><td>&nbsp;</td></tr>
   <tr>
    <td>Select Card Type</td>
    <td><select name="ctype" id="ctype">
<option value="master" selected>Master Card</option>
<option value="visa">Visa</option>
</select></td>
    <td>&nbsp;</td>
  </tr>
  <tr><td>&nbsp;</td></tr>
<tr>
    <td>Card Number</td>
    <td><input type="text" name="cardno" value="" id="cardno" onblur="chkfield(this.id)" onclick="enable()" maxlength="16"/><div id="cardnoerr"></div></td>
    <td>&nbsp;</td>
  </tr>
 <tr><td>&nbsp;</td></tr>
  <tr>
    <td>Expiry date(MM/YYYY)</td>
    <td><select name="month" id="month">
<option value="01" selected>01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
<option value="07">07</option>
<option value="08">08</option>
<option value="09">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
</select>
<select name="year" id="year">
<option value="2015" selected>2015</option>
<option value="2016">2016</option>
<option value="2017">2017</option>
<option value="2018">2018</option>
<option value="2019">2019</option>
<option value="2020">2020</option>
<option value="2021">2021</option>
<option value="2022">2022</option>
<option value="2023">2023</option>
<option value="2024">2024</option>
<option value="2025">2025</option>
<option value="2026">2026</option>
</select>
    </td>
    <td>&nbsp;</td>
  </tr>
 <tr><td>&nbsp;</td></tr>
  
 <tr>
    <td>CVV No</td>
    <td width="25%"><input type="text" name="cvv" value="" id="cvv" onblur="chkfield(this.id)" onclick="enable()" maxlength="3" /><div id="cvverr"></div></td>
    <td>&nbsp;</td>
  </tr>
 <tr><td>&nbsp;</td></tr> 
 <tr>
    <td width="29%">Card Holder Name</td>
    <td width="25%"><input type="text" name="name" value="" id="name" onblur="chkfield(this.id)" onclick="enable()"  /><div id="nameerr"></div></td>
    <td width="46%" rowspan="4"></td>
  </tr>
  
 <tr><td>&nbsp;</td></tr> 
 <tr>
    <td>ATM Pin</td>
    <td width="25%"><input type="password" name="pass" value="" id="pass" onblur="chkfield(this.id)" onclick="enable()" maxlength="4" /><div id="passerr"></div></td>
    <td>&nbsp;</td>
  </tr>
 <tr><td>&nbsp;</td></tr> 
  <tr>
    <td width="29%">Purchase Amount</td>    
    <td width="25%"><%=session.getAttribute("cost")%></td>
    <td width="46%" rowspan="4"></td>
  </tr>
  <tr><td>&nbsp;</td></tr>
 
  <tr>
    <td>&nbsp;</td>
    <td><div id="flddiv"></div><input type="submit" value="Pay" id="submit" onmouseover="chkfield(this.id)" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="confirm.jsp">Cancel</a></td>
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
    
    </body>
</html>
