<!DOCTYPE html>
<html lang="en">
     <head>
     <title>Home</title>
     <meta charset="utf-8">
     <meta name = "format-detection" content = "telephone=no" />
     <link rel="icon" href="images/favicon.ico">
     <link rel="shortcut icon" href="images/favicon.ico" />
     <link rel="stylesheet" href="css/style.css">
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
                   <li class="current"><a href="index.jsp">Home</a></li>
                   <li><a href="services.jsp">Services</a></li>
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
      <h2>Plan your <br>
          perfect trip  <br>
          with us:
      </h2>
      <form id="search" action="search.php" method="GET">
                      <input type="text" name="s" value="City or hotel name" onFocus="if (this.value==this.defaultValue) this.value = ''"
onblur="if (this.value=='') this.value = this.defaultValue">
            <div class="fright">                           
            <a onClick="document.getElementById('search').submit()" class="link1">
              find hotel
            </a><br>
            <strong><a href="#">Advanced search</a></strong>
            </div>
             <div class="clear"></div>
            
         </form>
    </div>
  </div>
</header>
<div class="p1_bar">
  <div class="container_12">
    <div class="grid_6">
      <div class="links">
        <a href="#" class="icon ic1">hotels</a>
        <a href="#" class="icon ic2">restaurants</a>
        <div class="clear"></div>
        <a href="#" class="icon ic3">flights</a>
        <a href="#" class="icon ic4">cars</a>
      </div>
    </div>
    <div class="grid_6 ">
      <div class="autor"><a href="cust_login.jsp">Login</a><a href="registration.jsp">Register</a></div>
    </div>
  </div>
</div>
<!--==============================Content=================================-->
<div class="content">
  <div class="container_12">
    <div class="grid_4">
      <a class="banner" href="#">New vacation  <br>
ideas  <span class="col1">for <br>
honeymoon</span></a>
      <a class="banner" href="#"><span class="col1">NY</span> sushi <br>
restaurants</a>
       <form id="newsletter">
          <div class="title">Newsletter:</div>
         <div class="rel">
          <div class="success">Your subscribe request has been sent!</div>
          <label class="email">
               <input type="email" value="Enter your email here" >
               <a href="#" class="btn" data-type="submit"></a> 
                <span class="error">*This is not a valid email address.</span>
                
          </label>
          <div class="clear"></div>
          Get the latest deals, reviews &amp; articles, tailored 
to the destination you choose. 
            </div>
      </form>  
    </div>
    <div class="grid_7 prefix_1">
      <h2>Travel planning tips
      <span>&amp; advice for everyone</span>
      </h2>
      <div class="tabs tb">
             <div class="div-nav  ">
                 <ul class="nav">
                      <li class="selected"><a href="#tab-1" class="">destinations</a></li>
                      <li><a href="#tab-2">hotels</a></li>
                      <li><a href="#tab-3">restaurants</a></li>
                 </ul>
             </div>
             <div class="div-tabs">
              <div  id="tab-1" class="tab-content">
                  <div class="maxheight">
                    <img src="images/dest1.jpg"  alt="">
                    <strong class="col2">Hawaii</strong> <br>
                    <strong>from $890</strong> <br>
                    <a href="#" class="btn">book now!</a>
                  </div>
                  <div class="maxheight">
                    <img src="images/dest2.jpg"  alt="">
                    <strong class="col2">Thailand</strong> <br>
                    <strong>from $890</strong> <br>
                    <a href="#" class="btn">book now!</a>
                  </div>
                  <div class="maxheight">
                    <img src="images/dest3.jpg"  alt="">
                    <strong class="col2">Bermuda</strong> <br>
                    <strong>from $890</strong> <br>
                    <a href="#" class="btn">book now!</a>
                  </div>
              </div>
              <div  id="tab-2" class="tab-content">
                  <div class="maxheight">
                    <img src="images/hotel1.jpg"  alt="">
                    <strong class="col2">George Rochester</strong> <br>
                    <strong>Chicago</strong> <br>
                    <a href="#" class="btn">book now!</a>
                  </div>
                  <div class="maxheight">
                    <img src="images/hotel2.jpg"  alt="">
                    <strong class="col2">Sweet Home</strong> <br>
                    <strong>LA</strong> <br>
                    <a href="#" class="btn">book now!</a>
                  </div>
                  <div class="maxheight">
                    <img src="images/hotel3.jpg"  alt="">
                    <strong class="col2">Sunny Hills</strong> <br>
                    <strong>Bermuda</strong> <br>
                    <a href="#" class="btn">book now!</a>
                  </div> 
              </div>
              <div  id="tab-3" class="tab-content">
                  <div class="maxheight">
                    <img src="images/rest1.jpg"  alt="">
                    <strong class="col2">Sailor</strong> <br>
                    <strong>Chicago</strong> <br>
                    <a href="#" class="btn">book now!</a>
                  </div>
                  <div class="maxheight">
                    <img src="images/rest2.jpg"  alt="">
                    <strong class="col2">Mexico</strong> <br>
                    <strong>LA</strong> <br>
                    <a href="#" class="btn">book now!</a>
                  </div>
                  <div class="maxheight">
                    <img src="images/rest3.jpg"  alt="">
                    <strong class="col2">Steak House</strong> <br>
                    <strong>NY</strong> <br>
                    <a href="#" class="btn">book now!</a>
                  </div> 
              </div>

             </div>
        </div>
    </div>
  </div>
</div>
<!--==============================footer=================================-->

  <footer>   
    <div class="container_12">
      <div class="grid_3 fright">
        <ul>
        </ul>
      </div>
      <div class="grid_2 fright">
        <ul>
        </ul>
      </div>      <div class="none"></div>

      <div class="grid_2 fright">
        <ul>
        </ul>
      </div>
      <div class="grid_5">
       
        <div class="copy">
        
        <a href="index.html" class="f_logo">
          <img src="images/f_logo.png" alt="">
        </a>
        <div>
        &copy; <span id="copyright-year"></span><br><a href="index-5.html">Privacy policy</a> <!--{%FOOTER_LINK} --></div>
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

