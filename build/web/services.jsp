<%-- 
    Document   : services
    Created on : 12-Apr-2015, 12:27:51
    Author     : win 8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
               <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Services</title>
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
 <script src="http://maps.google.com/maps?file=api&v=2&key=ABQIAAAA7j_Q-rshuWkc8HyFI4V2HxQYPm-xtd00hTQOC0OXpAMO40FHAxT29dNBGfxqMPq5zwdeiDSHEPL89A" type="text/javascript"></script>
   <script src="http://www.geoplugin.net/javascript.gp" type="text/javascript"></script>
<!-- when using Google to load JSON API -->
<script src="http://www.google.com/jsapi" type="text/javascript"></script>
<script src="http://www.geoplugin.net/ajax_currency_converter.gp" type="text/javascript"></script>
    <script>
        function showinfo(id)
        {
            if(id=="li1")
            {
                document.getElementById(id+"para").hidden=false;
                document.getElementById("li2para").hidden=true;
                document.getElementById("li4para").hidden=true;
                document.getElementById("li5para").hidden=true;
            }
             if(id=="li2")
            {
                document.getElementById(id+"para").hidden=false;
               document.getElementById("li1para").hidden=true;
            document.getElementById("li4para").hidden=true;
                document.getElementById("li5para").hidden=true;
            
            }
             if(id=="li3")
            {
                document.getElementById(id+"para").hidden=false;
                 document.getElementById("li1para").hidden=true;
                 document.getElementById("li2para").hidden=true;
                 document.getElementById("li4para").hidden=true;
                document.getElementById("li5para").hidden=true;
            
            }
             if(id=="li4")
            {
                document.getElementById(id+"para").hidden=false;
             document.getElementById("li1para").hidden=true;
             document.getElementById("li2para").hidden=true;
                document.getElementById("li5para").hidden=true;
            
            }
             if(id=="li5")
            {
                document.getElementById(id+"para").hidden=false;
                document.getElementById("li2para").hidden=true;
                     document.getElementById("li4para").hidden=true;
         document.getElementById("li1para").hidden=true;    
        }
        }
        function hideinfo(id)
        {
            /*if(id=="li1")
            {
                document.getElementById(id+"para").hidden=true;
            }*/
            /*if(id=="li2")
            {
                document.getElementById(id+"para").hidden=true;
            }*/
            if(id=="li3")
            {
                document.getElementById(id+"para").hidden=true;
                
            }
           /*if(id=="li4")
            {
                document.getElementById(id+"para").hidden=true;
            }
            if(id=="li5")
            {
                document.getElementById(id+"para").hidden=true;
            }*/



        }
        ////////////////////////////
          function func()
    {
        
        var a=document.getElementById("gp_converted").innerHTML;
     }
  
        
    </script>
    <script type="text/javascript">

    var geocoder, location1, location2;

    function initialize() {
        geocoder = new GClientGeocoder();
    }

    function showLocation() {
        geocoder.getLocations(document.forms[0].address1.value, function (response) {
            if (!response || response.Status.code != 200)
            {
                alert("Sorry, we were unable to geocode the first address");
            }
            else
            {
                location1 = {lat: response.Placemark[0].Point.coordinates[1], lon: response.Placemark[0].Point.coordinates[0], address: response.Placemark[0].address};
                geocoder.getLocations(document.forms[0].address2.value, function (response) {
                    if (!response || response.Status.code != 200)
                    {
                        alert("Sorry, we were unable to geocode the second address");
                    }
                    else
                    {
                        location2 = {lat: response.Placemark[0].Point.coordinates[1], lon: response.Placemark[0].Point.coordinates[0], address: response.Placemark[0].address};
                        calculateDistance();
                    }
                });
            }
        });
    }
    
    function calculateDistance()
    {
        try
        {
            var glatlng1 = new GLatLng(location1.lat, location1.lon);
            var glatlng2 = new GLatLng(location2.lat, location2.lon);
            var miledistance = glatlng1.distanceFrom(glatlng2, 3959).toFixed(1);
            var kmdistance = (miledistance * 1.609344).toFixed(1);

            document.getElementById('results').innerHTML = '<strong>Address 1: </strong>' + location1.address + '<br /><strong>Address 2: </strong>' + location2.address + '<br /><strong>Distance: </strong>' + miledistance + ' miles (or ' + kmdistance + ' kilometers)';
         document.getElementById('refer').href="seeonmap.jsp?start="+location1.address+"&end="+location2.address+"&kmdist="+kmdistance.toString();
        }
        catch (error)
        {
            alert(error);
        }
    }

    </script>
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
                   <li class="current"><a href="services.jsp">Services</a></li>
                   <li><a href="booking.jsp">Booking</a></li>
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
        <center><h2>Services</h2></center>
       <div class="tabs tb1">
             <div class="div-nav">
                 <ul class="nav">
                     <li id="li1" onmouseover="showinfo(this.id);" onmouseout="hideinfo(this.id);"><a href="services.jsp">Distance<br> Calculator</a></li>
                      <li id="li2" onmouseover="showinfo(this.id);" onmouseout="hideinfo(this.id);"><a href="services.jsp"> Currency<br> Converter</a></li>
                      <li id="li3" onmouseover="showinfo(this.id);" onmouseout="hideinfo(this.id);"><a href="insurance.jsp"> Travelling<br> Insurance </a></li>
                      <li id="li4" onmouseover="showinfo(this.id);" onmouseout="hideinfo(this.id);"><a href="#tab-4">Cancellation<br>&nbsp;</a></li>
                      <li id="li5" onmouseover="showinfo(this.id);" onmouseout="hideinfo(this.id);"><a href="#tab-5">FAQs<br>&nbsp; </a></li>
                 </ul>
            </div>
       </div>
        <p><br><br><br></p>
      <div id="li1para" hidden class="mystyle">Names and locations in this distance calculator are from the Geographic Names Information System (GNIS), the federal standard for geographic nomenclature, developed for the U.S. Board on Geographic Names (BGN) by the U.S. Geological Survey (USGS), and BGN database of foreign geographic feature names. No attempt has been made to supplement those names with others that may be in common use.

          Distance calculations are based on the WGS84 ellipsoid using geod (a part of the PROJ.4 Cartographic Projections library originally written by Gerald Evenden then of the USGS). The computation is for the great circle distance between points, and do not account for differences in elevation.<br>
          <br><br>
          <form action="#" onsubmit="showLocation(); return false;">
      
              Location 1 : &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="address1" value="" class="address_input" size="40" /><br><br>
              Location 2 : &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="address2" value="" class="address_input" size="40" /><br><br>
        <input type="submit" name="find" value="Search" />
      
    </form>
     
          <div id="results" class="mystyle"></div>
    <a href='seeonmap.jsp?start=&end=&kmdist=' id='refer'>See On Map</a>         

      </div>
    



      <div id="li2para" hidden  class="mystyle">A currency converter is a calculator that converts the value or quantity of one currency into the relative values or quantities of other currencies. For example, if you had $1 that needed to be exchanged into the local currency of a country you are visiting, you would need to know the dollar-euro conversion, if you were traveling to certain parts of Europe, the dollar-pound conversion if you were in traveling in the United Kingdom, the dollar-yen conversion if you were traveling in Japan, the Canadian dollar-U.S. dollar conversion if you were traveling in Canada or the Swiss francs-dollar conversion if you were traveling in Switzerland. A currency converter stores the most recent market valuations of the world's currencies, which allows individuals to compare the value of one currency against those of others in the database. The values of the different currencies are determined based on the supply or demand of dealing prices between international banks. 

          Currency conversions also can be determined by contacting a local bank and asking for exchange rates. However, the rates that are quoted to retail customers at a bank may differ slightly from those at which banks trade among themselves because banks make a small profit on the exchange rate each time they buy or sell a currency. The rates shown on online rate converter tools usually do not take this retail profit into account.<br><br>
     <input type='text' id='gp_amount' size='20' /> 
     <select id="gp_from"></select>&nbsp;&nbsp;&nbsp;&nbsp; to&nbsp;&nbsp;&nbsp;&nbsp; <select id="gp_to"></select><br><br>
<p><input type='button' onClick='gp_convertIt()' value = 'Convert It' /></p>
<div id="gp_converted" onload="func()">---</div>
<script>gp_currencySymbols()</script>
     
          
          
</div>
      <p id="li3para" hidden  class="mystyle">Eureka Health offers Easy Travel Insurance, which is a short-term travel insurance plan designed to make your travel hassle-free and safe. It guards you in times of illness, theft and other unexpected situations that can drastically foil your plans while you travel. It provides coverage for you and your family members - including spouse, children, and dependent parents - and comes complete with great benefits such as emergency cash, imported medicines, doctor referrals, and family transportation etc. It also offers you with the latest travel and health oriented information.

          Some benefits of Eureka Travel Insurance<br>

          1.Receive medical advice on phone while you travel<br>
2.Receive information on various medical service providers <br>
3.Receive assistance with hospital admissions<br>
4.Receive assistance in arrangement of appointments with doctors<br> 5.Receive assistance in covering your medical expenses, wherever possible<br>
6.Your medical condition will be well-monitored during hospitalisation</p>
      <p id="li4para" hidden  class="mystyle">Cancellation Of<br>
          1. <a href="cancellation.jsp?x=Hotel">Booking Hotel/Lodging</a><br>
          2.<a href="cancellation.jsp?x=Train">Trains</a> <br>
          3.<a href="cancellation.jsp?x=Car">Cars</a><br>
          4.<a href="cancellation.jsp?x=Flight">Flight</a><br>
          5. <a href="cancellation.jsp?x=Package">Package</a><br>
</p>
      <p id="li5para" hidden  class="mystyle">Frequently Asked Questions about:<br>
            1. Booking Hotel/Lodging<br>
2.Trains <br>
3.Cars<br>
4.Flight<br>
5. Package<br>

      </p>
      <p><br>
          <br>
          <br>
          <br>
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
