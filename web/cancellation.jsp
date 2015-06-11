<%-- 
    Document   : cancellation
    Created on : 12-Apr-2015, 16:03:26
    Author     : win 8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cancellation</title>
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
        
    </style>
    <script>
        var xreq=new XMLHttpRequest();
        function cancel()
        {
         
        var y=document.getElementById("reqno").value;
           var z='<%=request.getParameter("x")%>';
         
           var url="cancel_booking.jsp?reqno="+y+"&table="+z;
         
           xreq.open("GET",url,true);
           xreq.onreadystatechange=v_results;
           xreq.send(null);
        }
        function v_results()
        {   var resp;
         
            if(xreq.readyState==4)
            {
                resp=xreq.responseText.trim();
             
                if(resp=="Done")
                    {   resp="";
                        alert("Cancellation Done Successfully");
                        location="services.jsp";
                        
                    }
                  else
                  { 
                      alert("Cancellation Not Done");
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
        
        <div class="content">
  <div class="container_12">
    <div class="grid_12">
        <center><h2><%=request.getParameter("x")%> Cancellation</h2></center>
        <p class="mystyle"> Procedure of Cancel Reservation is as follows<br><br>
            It checks for Login ID and password, if both are valid then it will check for request number corresponding to that LoginID, if it is valid then your reservation will be cancelled<br><br>
            If Login ID or password or Request No. fails then again a new window will appear in which you again enter valid LoginID, password and Request No. After valid LoginID, password and Request No. your reservation will be cancelled<br><br>
            A Penalty will be charged for cancellation depending upon when you will cancel your reservation eg. if you cancel 2 days before then penalty will be more in comparison to if you cancel 4 or 5 days before<br></p>
        <p class="mystyle">       
            Enter your Request Number : &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="reqno" id="reqno" value="" size="40" /><br><br>
        <center> <input type="button" name="cancel" value="Cancel Booking" onclick="cancel();"></center> 
        
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
