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
        <title>Holidays</title>
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
        function showinfo(id)
        {
            if(id=="li1")
            {
                document.getElementById(id+"para").hidden=false;
                document.getElementById("li2para").hidden=true;
            document.getElementById("li3para").hidden=true;    
            document.getElementById("li4para").hidden=true;
                document.getElementById("li5para").hidden=true;
            }
             if(id=="li2")
            {
                document.getElementById(id+"para").hidden=false;
               document.getElementById("li1para").hidden=true;
               document.getElementById("li3para").hidden=true;
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
            document.getElementById("li3para").hidden=true;
            }
             if(id=="li5")
            {
                document.getElementById(id+"para").hidden=false;
                document.getElementById("li2para").hidden=true;
                     document.getElementById("li4para").hidden=true;
         document.getElementById("li1para").hidden=true; 
         document.getElementById("li3para").hidden=true;
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
            }
            if(id=="li3")
            {
                document.getElementById(id+"para").hidden=true;
                
            }
           if(id=="li4")
            {
                document.getElementById(id+"para").hidden=true;
            }
            if(id=="li5")
            {
                document.getElementById(id+"para").hidden=true;
            }*/



        }
        ////////////////////////////
         
        
    </script>
    <style>
        .mystyle
        {
            color: #000000;
            font-size: 15px;
        }
        div.mystyle
        {
            color: #000000;
            font-size: 15px;
        }
        .mystyle2
        {
            height: 100px;
  
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
                   <li ><a href="services.jsp">Services</a></li>
                   <li><a href="booking.jsp">Booking</a></li>
                   <li class="current" ><a href="holidays.jsp">Holidays</a>
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
        <center><h2>Holidays</h2></center>
       <div class="tabs tb1">
             <div class="div-nav">
                 <ul class="nav">
                     <li id="li1" onmouseover="showinfo(this.id);" onmouseout="hideinfo(this.id);"><a href="wildlife.jsp">WildLife<br> Tour</a></li>
                      <li id="li2" onmouseover="showinfo(this.id);" onmouseout="hideinfo(this.id);"><a href="heritage.jsp"> Heritage<br> Tour</a></li>
                      <li id="li3" onmouseover="showinfo(this.id);" onmouseout="hideinfo(this.id);"><a href="pilgrimage.jsp"> Pilgrimage<br> Tour </a></li>
                      <li id="li4" onmouseover="showinfo(this.id);" onmouseout="hideinfo(this.id);"><a href="hillstation.jsp">Hill Station<br> Tour&nbsp;</a></li>
                      <li id="li5" onmouseover="showinfo(this.id);" onmouseout="hideinfo(this.id);"><a href="beach.jsp">Beach<br> Tour&nbsp; </a></li>
                 </ul>
            </div>
       </div>
        <p><br><br><br></p>
        
      <div id="li1para" hidden class="mystyle"  ><h2 class="mystyle">Wildlife Tour</h2>
          <marquee behavior="Alternate" onmouseover="this.stop()" onmouseout="this.start()" />
        <img src="images/wildlife1.jpg" class="mystyle2"/><img src="images/wildlife2.jpg" class="mystyle2"/><img src="images/wildlife3.jpg" class="mystyle2"/><img src="images/wildlife4.jpg" class="mystyle2"/><img src="images/wildlife5.jpg" class="mystyle2"/><img src="images/wildlife6.jpg" class="mystyle2"/><img src="images/wildlife7.jpg" class="mystyle2"/><img src="images/wildlife8.jpg" class="mystyle2"/>
    </marquee>

          A good news for wildlife lovers and people going for wildlife tours! We brings to you one-stop-information-centre from where you can browse entire world's wildlife spots without wasting much of time and energy. We have identified smallest corners of the country, isolated places whose wildlife are still waiting for footmarks of mankind. At our place you will get to know about new wildlife destinations. In addition, you will get the guide having all the information, do's and don'ts, planning and other necessary things that make your tour enjoyable and worry-free. Last but not the least; we have classified all the spots accordingly your wishes so that you can find out the places where you can enjoy to the full.<br>
          <br><br>
        
     
    <a href='wildlife.jsp' id='refer'>Book a Wildlife Tour</a>         

      </div>
    


      <div id="li2para" hidden  class="mystyle">        <h2 class="mystyle">Heritage Tour</h2>India's heritage spreads across many states and Union Territories though it has managed to absorb the foreign heritage and still it has been successfully promoting its own heritage and culture worldwide. She is old, she is young, (the) two scenarios which are diametrically different yet weaved into each other even to this millennium. With an amazing history of heritage tourism spanning from the snow  capped mountains to the sparkling crystal clear beaches heritage tourism is not just that, but a lot more. Starting from the north where the Majestic Himalayas cover up all the northern states to the south where tropical rain forests and plateaus are bordered with palm beaches where the southernmost tip happens to be a meeting point of three oceans. <br><br><br>
     
    <a href='heritage.jsp' id='refer'>Book a Heritage Tour</a>         
      
          
</div>
      <div id="li3para" hidden  class="mystyle">   <h2 class="mystyle">Pilgrimage Tour</h2>Feel the true divine power and bounties of God via the Pilgrimage Tours. No matter whether you are a Hindu or a Muslim, pilgrimage tours are meant for all. Wash away all your sins by going on a pilgrimage and getting the blessings of god. Pilgrimage tours will surely freshen up your mind & soul and will help you in learning more about life. "As I make my slow pilgrimage through the world, a certain sense of beautiful mystery seems to gather and grow".<br><br><br>

       <a href='pilgrimage.jsp' id='refer'>Book a Pilgrimage Tour</a>         
      </div>


       
<div id="li4para" hidden  class="mystyle"> <h2 class="mystyle">Hill Station Tour</h2>The hills have been successful in holding up the century-old traditions and cultures that have prospered the lives of the people in Incredible India. India is dotted with the awe-inspiring hills all over the country starting right up from Jammu and Kashmir to Tamil Nadu, encapsulating over 20 mountain ranges.
    There are many hill station tours in India to choose from, but the problem remains which one to select. In a country with over 20 mountain ranges, choosing a hill station can be a very challenging task. Here is a list of the popular hill stations in India categorized by the part of the country you decide to visit.<br><br><br>

  <a href='hillstation.jsp' id='refer'>Book a Hill Station Tour</a>         
     </div>
     
      
      <div id="li5para" hidden  class="mystyle"> <h2 class="mystyle">Beach Tour</h2>India, the seventh largest country in the world, has a large coastline of 7517 kms. In particular, the Southern part of India is surrounded by the Arabian sea in the southwest and Bay of Bengal in the southeast. It has numerous beaches spread over different parts along the coastline as well as in many inhabited and uninhabited islands.
          Tourists from all over the world are attracted by the sea, sun and sand available at these beaches in India and many of them have become popular destinations.<br><br><br>
<a href='beach.jsp' id='refer'>Book a Beach Tour</a>         
      </div>
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
