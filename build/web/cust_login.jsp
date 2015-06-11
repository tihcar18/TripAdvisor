<!DOCTYPE html>
<html lang="en">
     <head>
     <title>Home</title>
     <meta charset="utf-8">
     <meta name = "format-detection" content = "telephone=no" />
     <link rel="icon" href="images/favicon.ico">
     <link rel="shortcut icon" href="images/favicon.ico" />
     <link rel="stylesheet" href="css/style2.css">
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
     <script>
     var xreq=new XMLHttpRequest();
    function verify()
    {   
        var uid,pass;
        uid=document.getElementById("uid").value;
        pass=document.getElementById("pass").value;
        var url="verify_details.jsp?uid="+uid+"&pass="+pass;
        xreq.open("GET",url,true);
        xreq.onreadystatechange=v_results;
        xreq.send(null);
     
    }
    
    function v_results()
    { var resp;
        if(xreq.readyState==4)
            { resp=xreq.responseText.trim();
                
                if(resp=="Done")
                    {   resp="";
                        location="index.jsp";
                        
                    }
                  else
                  { document.getElementById("flddiv").innerHTML="<font color=white>Invalid Username Or Password</font>"
                      
                  }   
            }   
    }   
            
    
    
    
    var uid_flag=false,pass_flag=false;
            function enable()
            {
               if( document.getElementById("submit").disabled == true)
              {
                document.getElementById("submit").disabled = false;
                document.getElementById("flddiv").innerHTML="";
              }  
            }
            function chkfield(str)
            {
               
               if( document.getElementById("submit").disabled == true)
               {
                document.getElementById("submit").disabled = false;
                document.getElementById("flddiv").innerHTML="";
               }  
              if(str=="uid")
              {  var a;
                  a=document.getElementById("uid").value;
                  if(a.length<5)
                  {
                    document.getElementById("uiderr").innerHTML="<font color=white>Username is incorrect</font>";  
                    uid_flag=false;
                  }
                  else
                  {
                    document.getElementById("uiderr").innerHTML="";      
                    uid_flag=true;
                  }    
              }
              if(str=="pass")
              { var a;
               a=document.getElementById("pass").value;
                   if(a.length==0)
                    { 
                        document.getElementById("passerr").innerHTML="<font color=white>Blank field</font>";
                        pass_flag=false;
                    }
                         
                   else
                   {
                       document.getElementById("passerr").innerHTML="";
                       pass_flag=true;
                   }      
              }
              if(str=="submit")
              {
                  document.getElementById(str).focus();
                  if(uid_flag==false || pass_flag==false)
                  {
                      document.getElementById("submit").disabled = true;
                      document.getElementById("flddiv").innerHTML="<font color=white>Please complete all fields!!</font>";
                  }
                  else
                  {
                      document.getElementById("submit").disabled = false;
                       document.getElementById("flddiv").innerHTML="";
                  }
              }
                
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
                   <li><a href="registration.jsp">Sign Up</a></li>
                   <li class="current"><a href="cust_login.jsp">Login </a></li>
                   <li><a href="aboutus.jsp">About Us</a></li>
                   <li><a href="contactus.jsp">Contact Us</a></li>
                 </ul>
              </nav>
              
            <div class="clear"></div>
            
  </div>
    

<div class="clear"></div>
</div></div>


</div>
         <div style="padding-left: 200px;"> <h2 >Login  </h2>
            
           
         <table width="387"  border="0"  >
            <tr>
              <td style="color: #000000;font-size: 15px;">User name</td>
              <td><input type="text" name="uid" id="uid" value="" onblur="chkfield(this.id)" onclick="enable()" /><div id="uiderr"></div></td>
            
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
              <td style="color: #000000;font-size: 15px;">Password</td>
              <td><input type="password" id="pass" name="pass" value="" onblur="chkfield(this.id)" onclick="enable()"/><div id="passerr"></div></td>
            </tr>
             <tr><td>&nbsp;</td></tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="submit" value="Login" id="submit" onclick="verify();" onmouseover="chkfield(this.id)" /><div id="flddiv"></div></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td style="color: #000000;font-size: 15px;">Don't have an account?</td>
                <td style="color: #000000;font-size: 15px;"><a href='registration.jsp'>Sign Up!</a></td>
            </tr>
         </table></div>
      
<div class="clear"></div>
  <div class="container_12" style="padding-top: 180px" >
    <div class="grid_12">
  </div>
  </div>
</header>
<!--==============================Content=================================-->
<!--div class="content">
  <div class="container_12">
    <div class="grid_4">
    </div>
  </div>
</div-->
<!--==============================footer=================================-->

  <footer>   
    <div class="container_12">
      <div class="grid_3 fright">
       </div>
      <div class="grid_2 fright">
       </div>      <div class="none"></div>

      <div class="grid_2 fright">
       </div>
      <div class="grid_5">
       
        <div class="copy">
        
        <a href="index.jsp" class="f_logo">
          <img src="images/f_logo.png" alt="">
        </a>
        <div>
        &copy; <span id="copyright-year"></span><br> <!--{%FOOTER_LINK} --></div>
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

