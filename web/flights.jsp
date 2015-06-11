<%-- 
    Document   holidays
    Created on : 12-Apr-2015, 12:27:51
    Author     : win 8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
               <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flights</title>
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
        .mystyle
        {
            color: #000000;
            font-size: 15px;
        }
        
        .mystyle2
        {
            height: 210px;
            width: 450px;    
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
                   <li ><a href="services.jsp">Services</a></li>
                   <li class="current"><a href="booking.jsp">Booking</a></li>
                   <li  ><a href="holidays.jsp">Holidays</a>
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
        <center><h2 >Flights Classification</h2></center>
       <div class="tabs tb1">
             <div class="div-nav">
            </div>
       </div>

              <div id="li2para"    class="mystyle">        <h2 style="color: black; font-size: 30px;">Economy Class</h2>   On short and medium-haul routes you’ll enjoy plenty of room. In Economy Class, too, the slim construction of the seat backs provides greater leg room, making it easier for you to stretch your legs.
        On long-haul routes a seat cushion width of over 40 cm, as well as the individually adjustable headrests on every seat, ensure your comfort.<br><br>
        <table width="100%">
             <tr>  
                <th><img src="images/eco1.jpg" class="mystyle2"></th>
              <th><img src="images/eco2.jpg" class="mystyle2"></th>
              </tr>
              <tr>
                  <td overflow:hidden><b>Inflight Entertainment :</b><br>On long-haul flights you can enjoy our extensive programme of in-flight entertainment. The very latest movies, international radio stations and a wide range of TV programmes are waiting for you. Just sit back and enjoy your flight!</td>
                  <td overflow:hidden><b>&nbsp; Meals & Drinks :<br></b>We offer you menus that suit your departure time and destination. The meals are rounded off by a wide selection of complimentary drinks. On selected routes we will also serve you a ‘movie snack’ during the In-flight Entertainment.</td>
         </tr> 
        </table>          
</div>

        
      <div id="li1para" class="mystyle" ><h2  style="color: black; font-size: 30px;">Business Class</h2>       
          Wherever you are travelling to, you will enjoy a more relaxed journey in TripAdvisor Business Class. Lounge access, priority boarding at the airport, an increased free baggage allowance and exclusive in-flight meals are waiting for you as a passenger on board TripAdvisor Business Class.<br><br>
          <table width="100%" >
              <tr>  
                  <th><img src="images/bus2.jpg" class="mystyle2"></th>
                  <th><img src="images/bus1.jpg" class="mystyle2"></th>
              </tr>
              <tr>
                  <td overflow:hidden><b>Short- and medium-haul routes:</b><br>Relaxation right from the start: enjoy amenities and services on your short- or medium-haul flight in TripAdvisor Business Class.</td>
                  <td overflow:hidden><b>&nbsp;&nbsp;&nbsp;&nbsp; Long-haul routes:<br></b>&nbsp;&nbsp;&nbsp;&nbsp; Experience the exclusive comfort and privacy of  Business Class on &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; long-haul flights and arrive at your destination rested and relaxed.</td>
         </tr> </table>
      </div>

      <div id="li3para"    class="mystyle">   <h2 style="color: black; font-size: 30px;">Premium/First Class</h2>
          With Premium/First Class will be offering you a new travel experience between Business Class and Economy Class on long-haul flights. Whether you are travelling for business or pleasure, you will enjoy more personal space, more service and more extras. So you’ll be able to enjoy a thoroughly relaxing journey – both on the ground and on board.<br><br>
     <table width="100%">
              <tr>  
                  <th><img src="images/f1.jpg" class="mystyle2"></th>
                  <th><img src="images/f2.jpg" class="mystyle2"></th>
              </tr>
              <tr>
                  <td overflow:hidden><b>More personal space :</b><br>Look forward to spacious and comfortable seating with up to 50% &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; more space: the specially developed seat with its own armrest, fold-out      table, adjustable backrest and footrest offers more comfort and more legroom. You will never sit more than one seat away from the aisle.</td>
                  <td overflow:hidden><b>More entertainment  :<br></b>Experience our extensive in-flight entertainment programme on an 11- or 12-inch monitor built into the seat in front. The programme is operated by a remote control. There is also a power outlet at your seat and a wide choice of magazines.</td>
                  
         </tr>
         
         <tr><td>&nbsp;&nbsp;</td></tr>
           <tr><td>&nbsp;&nbsp;</td></tr>
          
         <tr>  
                  <th><img src="images/f3.jpg" class="mystyle2"></th>
                  <th><img src="images/f4.jpg" class="mystyle2"></th>
              </tr>
              <tr>
                  <td overflow:hidden><b>More refreshment :</b><br>A separate water bottle at your seat ensures you can enjoy a &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; refreshing drink whenever you wish.</td>
                  <td overflow:hidden><b> More delight  :<br></b>Take your time choosing from the menu card and enjoy your meal served on china tableware especially designed for Premium Economy Class.</td>
         </tr>
        </table>
      </div>


       

<a href='BookFlight.jsp' id='refer' ><center><h2 style="font-size:22px;">Book Flight</h2></center></a>         
     </div>
     
      
      
      <p><br>
          <br>
          <br>
      </p>
    
     </div>
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
