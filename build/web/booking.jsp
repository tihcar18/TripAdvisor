<%-- 
    Document   : booking
    Created on : 12-Apr-2015, 12:27:51
    Author     : win 8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
               <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking</title>
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
    <style>
        p.mystyle
        {
            color: #000000;
            font-size: 15px;
        }
        div.mystyle
        {
            color: #000000;
            font-size: 15px;
        }
        .mystyle
        {
            color: #000000;
            font-size: 15px;
        }
        
    </style>
    </head>
    <body class="page1" id="top" onload="initialize()">
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
                   <li><a href="services.jsp">Services</a></li>
                   <li class="current"><a href="booking.jsp">Booking</a></li>
                   <li><a href="holidays.jsp">Holidays</a>
                   </li>
                   <li><a href="contactus.jsp">Contact Us</a></li>
                 </ul>
              </nav>
              
            <div class="clear"></div>
  </div>
 <div class="clear"></div>
</div></div>
</div>
</header>
        <!--==============================Content=================================-->
<div class="content">
  <div class="container_12">
    <div class="grid_12">
        <center><h2>Booking</h2></center>
       <div class="tabs tb1">
             <div class="div-nav">
                 <ul class="nav">
                     <li id="li1" ><a href="BookHotel.jsp">Hotel<br> Booking</a></li>
                      <li id="li2"><a href="BookCar.jsp"> Car<br> Booking</a></li>
                      <li id="li3"><a href="BookTrain.jsp"> Train<br> Booking </a></li>
                      <li id="li4"><a href="BookFlight.jsp">Flight<br>Booking</a></li>
                      <li id="li5"><a href="BookPackage.jsp">Package<br>Booking </a></li>
                 </ul>
            </div>
       </div>
        
        <table width="100%">
            <tr class="mystyle">
                <td>
        <h2 style="font-size: 35px; color:black;">Why Book  with us?</h2>
      <ul >
        <li>
          
            1. Best Price Guarantee<br><br>
        </li>
        <li>
            2. Dedicated Customer Support - 1810 5210 720<br><br>
       </li>
        <li>
            3. 22,000 hotels across India<br><br>
        
        </li>
        <li>
            4. Guest Reviews & Ratings <br><br>
        </li>
        <li>
 5. Millions of satisfied guests<br>
        </li>
      </ul>
    
  </td>
  <td>
      <h2 style="font-size: 35px; color:black;">Customer Reviews</h2>
      <p class="mystyle">Many Thanks for your effort with me.Be<br> sure for my coming trips it will be with<br> you as i was very pleased with your <br>professionalization. Once again thank you <br> personally and thanks Travel and Tourism</p>
          Shobhit -<br> 
          08/20/14<br><br>
          
        
     
          <p class="mystyle">It was a great pleasure for us to thank<br> a many times to Travel and Tourism for <br>their friendly behave and so many help <br>and guidance. I want to have my heartiest<br> thanks, particularly <br> Mr. Anshuman Tiwari of Travel and Tourism</p>
        Siddharth - <br>
        08/21/14<br>
        
      
  </td>
</tr>
</table>
      <p><br>
          <br>
          <br>
          <br>
          <br>
          <br>
      </p>
    

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
