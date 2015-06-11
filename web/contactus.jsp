<!DOCTYPE html>
<html lang="en">
     <head>
     <title>Contacts</title>
     <meta charset="utf-8">
     <meta name = "format-detection" content = "telephone=no" />
     <link rel="icon" href="images/favicon.ico">
     <link rel="shortcut icon" href="images/favicon.ico" />
     <link rel="stylesheet" href="css/style.css">
     <link rel="stylesheet" href="css/form.css">
     <script src="js/jquery.js"></script>
     <script src="js/jquery-migrate-1.1.1.js"></script>
     <script src="js/script.js"></script> 
     <script src="js/superfish.js"></script>
     <script src="js/jquery.ui.totop.js"></script>
     <script src="js/jquery.equalheights.js"></script>
     <script src="js/jquery.mobilemenu.js"></script>
     <script src="js/TMForm.js"></script>
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
            font-size: 13px;
        }
        
    </style>
     </head>

     <body class="" id="top">
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
                   <li ><a href="index.jsp">Home</a></li>
                   <li><a href="services.jsp">Services</a></li>
                   <li><a href="booking.jsp">Booking</a></li>
                   <li><a href="holidays.jsp">Holidays</a></li>
                   <li class="current"><a href="contactus.jsp">Contact Us</a></li>
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
      <h3 class="mb1">Contact Information</h3>
       <div class="map">
            <figure class=" ">
                          <iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
               </figure>
               
               <p class="mystyle">Today, TripAdvisor is much more than just a travel portal or a famous pioneering brand - it is a one-stop-travel-shop that offers the broadest selection of travel products and services in India. TripAdvisor is the dominant market-leader with 47% market-share (PhocusWright, 2013), a fact evinced by the trust placed in it by millions of happy customers.

Remaining reliable, efficient and at the forefront of technology, TripAdvisor?s commitment and customer-centricity allows it to better understand and provide for its customers? diverse needs and wants, and deliver consistently. With dedicated 24x7 customer support and offices in 20 cities across India and 2 international offices in New York and San Francisco (in addition to several franchise locations), TripAdvisor is there for you, whenever and wherever. </p>
              <address>
                            <dl>
                                <dt class="col2">
                                <strong>
                                    8901 Marmora Road, <br>
                                    Glasgow, D04 89GR.</strong>
                                </dt>
                                <dd><span>Freephone:</span>+1 959 603 6035</dd>
                                <dd><span>Telephone:</span>+1 959 603 6035</dd>
                                <dd><span>FAX:</span>+1 504  889 9898</dd>
                                <dd>E-mail: <strong class="col1"> <a href="#" class="">TripAdvi2015@gmail.com</a></strong></dd>
                            </dl>
                         </address>
                        
          </div>

      <h3 class="head1">Feedback</h3>
       <form id="form" action="MyMail">
                      
                <div class="success_wrapper">
                <div class="success-message">Contact form submitted</div>
                </div>
                <label class="name">
                <input type="text" placeholder="Name" data-constraints="@Required @JustLetters" id="name" name="name"/>
                <span class="empty-message">*This field is required.</span>
                <span class="error-message">*This is not a valid name.</span>
                </label>
              
                <label class="email">
                <input type="text" placeholder="E-mail" data-constraints="@Required @Email" id="email" name="email"/>
                <span class="empty-message">*This field is required.</span>
                <span class="error-message">*This is not a valid email.</span>
                </label>
                 
                <label class="message">
                <textarea placeholder="Message" data-constraints='@Required @Length(min=20,max=999999)' id="message" name="message"></textarea>
                <span class="empty-message">*This field is required.</span>
                <span class="error-message">*The message is too short.</span>
                </label>
                <div>
                <div class="clear"></div>
                <div class="btns">
                    <!--a href="" data-type="submit" class="btn">send message</a--></div>
           <input type="submit" value="Send Message" style="background: #cb2710; color:white; font-size: 20px; width: 200px;  ">     
                </div>
           
                </form>
    </div>
  </div>
</div>
<!--==============================footer=================================-->

  <footer>   
    <div class="container_12">
      <div class="grid_3 fright">
        <ul>
          <!--li><a href="#">Destin hotels</a></li>
          <li><a href="#">Galveston hotels</a></li>
          <li><a href="#">Gatlinburg hotels</a></li>
          <li><a href="#">Hawaii hotels</a></li>
          <li><a href="#">Hilton Head hotels</a></li>
          <li><a href="#">Honolulu hotels</a></li-->
        </ul>
      </div>
      <div class="grid_2 fright">
        <!--ul>
          <li><a href="#">Branson hotels</a></li>
          <li><a href="#">Brooklyn hotels</a></li>
          <li><a href="#">Chicago hotels</a></li>
          <li><a href="#">Dallas hotels</a></li>
          <li><a href="#">Denver hotels</a></li>
          <li><a href="#">Destin hotels</a></li>
        </ul-->
      </div>
      <div class="none"></div>
      <div class="grid_2 fright">
        <!--ul>
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
        &copy; <span id="copyright-year"></span><br><a href="index.jsp">Privacy policy</a> </div>
        </div>
      </div>
    </div>  
  </footer>
</body>
</html>

