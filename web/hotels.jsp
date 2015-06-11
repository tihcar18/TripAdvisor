<%-- 
    Document   : hotels
    Created on : 20-Apr-2015, 17:33:59
    Author     : win 8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotels</title>
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
            function fun1()
            {
                
                if(document.getElementById("pcity").value=="New Delhi")
                {
                
                document.getElementById("newdelhi").hidden =false;
                document.getElementById("kolkata").hidden =true;
                document.getElementById("chennai").hidden =true;
                document.getElementById("mumbai").hidden =true;
                document.getElementById("bangalore").hidden =true;
                document.getElementById("ahmedabad").hidden =true;
                document.getElementById("hyderabad").hidden =true;
                document.getElementById("indore").hidden =true;
                document.getElementById("ranchi").hidden =true;
                document.getElementById("kochi").hidden =true;
                document.getElementById("pune").hidden =true;
                document.getElementById("mangalore").hidden =true;
                document.getElementById("cuttack").hidden =true;
                document.getElementById("dhramshala").hidden =true;
                document.getElementById("darjeeling").hidden =true;
                document.getElementById("dehradun").hidden =true;
                document.getElementById("agra").hidden =true;
                }
              if(document.getElementById("pcity").value=="Kolkata")
                {
                document.getElementById("newdelhi").hidden =true;
                document.getElementById("kolkata").hidden =false;
                document.getElementById("chennai").hidden =true;
                document.getElementById("mumbai").hidden =true;
                document.getElementById("bangalore").hidden =true;
                document.getElementById("ahmedabad").hidden =true;
                document.getElementById("hyderabad").hidden =true;
                document.getElementById("indore").hidden =true;
                document.getElementById("ranchi").hidden =true;
                document.getElementById("kochi").hidden =true;
                document.getElementById("pune").hidden =true;
                document.getElementById("mangalore").hidden =true;
                document.getElementById("cuttack").hidden =true;
                document.getElementById("dhramshala").hidden =true;
                document.getElementById("darjeeling").hidden =true;
                document.getElementById("dehradun").hidden =true;
                document.getElementById("agra").hidden =true;
            }
                if(document.getElementById("pcity").value=="Chennai")
                {
                document.getElementById("newdelhi").hidden =true;
                document.getElementById("kolkata").hidden =true;
                document.getElementById("chennai").hidden =false;
                document.getElementById("mumbai").hidden =true;
                document.getElementById("bangalore").hidden =true;
                document.getElementById("ahmedabad").hidden =true;
                document.getElementById("hyderabad").hidden =true;
                document.getElementById("indore").hidden =true;
                document.getElementById("ranchi").hidden =true;
                document.getElementById("kochi").hidden =true;
                document.getElementById("pune").hidden =true;
                document.getElementById("mangalore").hidden =true;
                document.getElementById("cuttack").hidden =true;
                document.getElementById("dhramshala").hidden =true;
                document.getElementById("darjeeling").hidden =true;
                document.getElementById("dehradun").hidden =true;
            document.getElementById("agra").hidden =true;
        }
                if(document.getElementById("pcity").value=="Mumbai")
                {
                document.getElementById("newdelhi").hidden =true;
                document.getElementById("kolkata").hidden =true;
                document.getElementById("chennai").hidden =true;
                document.getElementById("mumbai").hidden =false;
                document.getElementById("bangalore").hidden =true;
                document.getElementById("ahmedabad").hidden =true;
                document.getElementById("hyderabad").hidden =true;
                document.getElementById("indore").hidden =true;
                document.getElementById("ranchi").hidden =true;
                document.getElementById("kochi").hidden =true;
                document.getElementById("pune").hidden =true;
                document.getElementById("mangalore").hidden =true;
                document.getElementById("cuttack").hidden =true;
                document.getElementById("dhramshala").hidden =true;
                document.getElementById("darjeeling").hidden =true;
                document.getElementById("dehradun").hidden =true;
        document.getElementById("agra").hidden =true;
    }
                if(document.getElementById("pcity").value=="Bangalore")
                {
                document.getElementById("newdelhi").hidden =true;
                document.getElementById("kolkata").hidden =true;
                document.getElementById("chennai").hidden =true;
                document.getElementById("mumbai").hidden =true;
                document.getElementById("bangalore").hidden =false;
                document.getElementById("ahmedabad").hidden =true;
                document.getElementById("hyderabad").hidden =true;
                document.getElementById("indore").hidden =true;
                document.getElementById("ranchi").hidden =true;
                document.getElementById("kochi").hidden =true;
                document.getElementById("pune").hidden =true;
                document.getElementById("mangalore").hidden =true;
                document.getElementById("cuttack").hidden =true;
                document.getElementById("dhramshala").hidden =true;
                document.getElementById("darjeeling").hidden =true;
                document.getElementById("dehradun").hidden =true;
    document.getElementById("agra").hidden =true;
}
                if(document.getElementById("pcity").value=="Ahmedabad")
                {
                document.getElementById("newdelhi").hidden =true;
                document.getElementById("kolkata").hidden =true;
                document.getElementById("chennai").hidden =true;
                document.getElementById("mumbai").hidden =true;
                document.getElementById("bangalore").hidden =true;
                document.getElementById("ahmedabad").hidden =false;
                document.getElementById("hyderabad").hidden =true;
                document.getElementById("indore").hidden =true;
                document.getElementById("ranchi").hidden =true;
                document.getElementById("kochi").hidden =true;
                document.getElementById("pune").hidden =true;
                document.getElementById("mangalore").hidden =true;
                document.getElementById("cuttack").hidden =true;
                document.getElementById("dhramshala").hidden =true;
                document.getElementById("darjeeling").hidden =true;
                document.getElementById("dehradun").hidden =true;
document.getElementById("agra").hidden =true;
                }
                if(document.getElementById("pcity").value=="Hyderabad")
                {
                document.getElementById("newdelhi").hidden =true;
                document.getElementById("kolkata").hidden =true;
                document.getElementById("chennai").hidden =true;
                document.getElementById("mumbai").hidden =true;
                document.getElementById("bangalore").hidden =true;
                document.getElementById("ahmedabad").hidden =true;
                document.getElementById("hyderabad").hidden =false;
                document.getElementById("indore").hidden =true;
                document.getElementById("ranchi").hidden =true;
                document.getElementById("kochi").hidden =true;
                document.getElementById("pune").hidden =true;
                document.getElementById("mangalore").hidden =true;
                document.getElementById("cuttack").hidden =true;
                document.getElementById("dhramshala").hidden =true;
                document.getElementById("darjeeling").hidden =true;
                document.getElementById("dehradun").hidden =true;
document.getElementById("agra").hidden =true;
                }
                if(document.getElementById("pcity").value=="Indore")
                {
                document.getElementById("newdelhi").hidden =true;
                document.getElementById("kolkata").hidden =true;
                document.getElementById("chennai").hidden =true;
                document.getElementById("mumbai").hidden =true;
                document.getElementById("bangalore").hidden =true;
                document.getElementById("ahmedabad").hidden =true;
                document.getElementById("hyderabad").hidden =true;
                document.getElementById("indore").hidden =false;
                document.getElementById("ranchi").hidden =true;
                document.getElementById("kochi").hidden =true;
                document.getElementById("pune").hidden =true;
                document.getElementById("mangalore").hidden =true;
                document.getElementById("cuttack").hidden =true;
                document.getElementById("dhramshala").hidden =true;
                document.getElementById("darjeeling").hidden =true;
                document.getElementById("dehradun").hidden =true;
document.getElementById("agra").hidden =true;                
}
                if(document.getElementById("pcity").value=="Ranchi")
                {
                document.getElementById("newdelhi").hidden =true;
                document.getElementById("kolkata").hidden =true;
                document.getElementById("chennai").hidden =true;
                document.getElementById("mumbai").hidden =true;
                document.getElementById("bangalore").hidden =true;
                document.getElementById("ahmedabad").hidden =true;
                document.getElementById("hyderabad").hidden =true;
                document.getElementById("indore").hidden =true;
                document.getElementById("ranchi").hidden =false;
                document.getElementById("kochi").hidden =true;
                document.getElementById("pune").hidden =true;
                document.getElementById("mangalore").hidden =true;
                document.getElementById("cuttack").hidden =true;
                document.getElementById("dhramshala").hidden =true;
                document.getElementById("darjeeling").hidden =true;
                document.getElementById("dehradun").hidden =true;
document.getElementById("agra").hidden =true;
                }
                if(document.getElementById("pcity").value=="Kochi")
                {
                document.getElementById("newdelhi").hidden =true;
                document.getElementById("kolkata").hidden =true;
                document.getElementById("chennai").hidden =true;
                document.getElementById("mumbai").hidden =true;
                document.getElementById("bangalore").hidden =true;
                document.getElementById("ahmedabad").hidden =true;
                document.getElementById("hyderabad").hidden =true;
                document.getElementById("indore").hidden =true;
                document.getElementById("ranchi").hidden =true;
                document.getElementById("kochi").hidden =false;
                document.getElementById("pune").hidden =true;
                document.getElementById("mangalore").hidden =true;
                document.getElementById("cuttack").hidden =true;
                document.getElementById("dhramshala").hidden =true;
                document.getElementById("darjeeling").hidden =true;
                document.getElementById("dehradun").hidden =true;
document.getElementById("agra").hidden =true;
                }
                if(document.getElementById("pcity").value=="Pune")
                {
                document.getElementById("newdelhi").hidden =true;
                document.getElementById("kolkata").hidden =true;
                document.getElementById("chennai").hidden =true;
                document.getElementById("mumbai").hidden =true;
                document.getElementById("bangalore").hidden =true;
                document.getElementById("ahmedabad").hidden =true;
                document.getElementById("hyderabad").hidden =true;
                document.getElementById("indore").hidden =true;
                document.getElementById("ranchi").hidden =true;
                document.getElementById("kochi").hidden =true;
                document.getElementById("pune").hidden =false;
                document.getElementById("mangalore").hidden =true;
                document.getElementById("cuttack").hidden =true;
                document.getElementById("dhramshala").hidden =true;
                document.getElementById("darjeeling").hidden =true;
                document.getElementById("dehradun").hidden =true;
document.getElementById("agra").hidden =true;
                }
                if(document.getElementById("pcity").value=="Mangalore")
                {
                document.getElementById("newdelhi").hidden =true;
                document.getElementById("kolkata").hidden =true;
                document.getElementById("chennai").hidden =true;
                document.getElementById("mumbai").hidden =true;
                document.getElementById("bangalore").hidden =true;
                document.getElementById("ahmedabad").hidden =true;
                document.getElementById("hyderabad").hidden =true;
                document.getElementById("indore").hidden =true;
                document.getElementById("ranchi").hidden =true;
                document.getElementById("kochi").hidden =true;
                document.getElementById("pune").hidden =true;
                document.getElementById("mangalore").hidden =false;
                document.getElementById("cuttack").hidden =true;
                document.getElementById("dhramshala").hidden =true;
                document.getElementById("darjeeling").hidden =true;
                document.getElementById("dehradun").hidden =true;
document.getElementById("agra").hidden =true;
                }
                if(document.getElementById("pcity").value=="Cuttack")
                {
                document.getElementById("newdelhi").hidden =true;
                document.getElementById("kolkata").hidden =true;
                document.getElementById("chennai").hidden =true;
                document.getElementById("mumbai").hidden =true;
                document.getElementById("bangalore").hidden =true;
                document.getElementById("ahmedabad").hidden =true;
                document.getElementById("hyderabad").hidden =true;
                document.getElementById("indore").hidden =true;
                document.getElementById("ranchi").hidden =true;
                document.getElementById("kochi").hidden =true;
                document.getElementById("pune").hidden =true;
                document.getElementById("mangalore").hidden =true;
                document.getElementById("cuttack").hidden =false;
                document.getElementById("dhramshala").hidden =true;
                document.getElementById("darjeeling").hidden =true;
                document.getElementById("dehradun").hidden =true;
document.getElementById("agra").hidden =true;
                }
                if(document.getElementById("pcity").value=="Dhramshala")
                {
                document.getElementById("newdelhi").hidden =true;
                document.getElementById("kolkata").hidden =true;
                document.getElementById("chennai").hidden =true;
                document.getElementById("mumbai").hidden =true;
                document.getElementById("bangalore").hidden =true;
                document.getElementById("ahmedabad").hidden =true;
                document.getElementById("hyderabad").hidden =true;
                document.getElementById("indore").hidden =true;
                document.getElementById("ranchi").hidden =true;
                document.getElementById("kochi").hidden =true;
                document.getElementById("pune").hidden =true;
                document.getElementById("mangalore").hidden =true;
                document.getElementById("cuttack").hidden =true;
                document.getElementById("dhramshala").hidden =false;
                document.getElementById("darjeeling").hidden =true;
                document.getElementById("dehradun").hidden =true;
document.getElementById("agra").hidden =true;
                }
                if(document.getElementById("pcity").value=="Darjeeling")
                {
                document.getElementById("newdelhi").hidden =true;
                document.getElementById("kolkata").hidden =true;
                document.getElementById("chennai").hidden =true;
                document.getElementById("mumbai").hidden =true;
                document.getElementById("bangalore").hidden =true;
                document.getElementById("ahmedabad").hidden =true;
                document.getElementById("hyderabad").hidden =true;
                document.getElementById("indore").hidden =true;
                document.getElementById("ranchi").hidden =true;
                document.getElementById("kochi").hidden =true;
                document.getElementById("pune").hidden =true;
                document.getElementById("mangalore").hidden =true;
                document.getElementById("cuttack").hidden =true;
                document.getElementById("dhramshala").hidden =true;
                document.getElementById("darjeeling").hidden =false;
                document.getElementById("dehradun").hidden =true;
document.getElementById("agra").hidden =true;
                }
                if(document.getElementById("pcity").value=="Dehradun")
                {
                document.getElementById("newdelhi").hidden =true;
                document.getElementById("kolkata").hidden =true;
                document.getElementById("chennai").hidden =true;
                document.getElementById("mumbai").hidden =true;
                document.getElementById("bangalore").hidden =true;
                document.getElementById("ahmedabad").hidden =true;
                document.getElementById("hyderabad").hidden =true;
                document.getElementById("indore").hidden =true;
                document.getElementById("ranchi").hidden =true;
                document.getElementById("kochi").hidden =true;
                document.getElementById("pune").hidden =true;
                document.getElementById("mangalore").hidden =true;
                document.getElementById("cuttack").hidden =true;
                document.getElementById("dhramshala").hidden =true;
                document.getElementById("darjeeling").hidden =true;
                document.getElementById("dehradun").hidden =false;
document.getElementById("agra").hidden =true;
        }
               if(document.getElementById("pcity").value=="Agra")
                {
                document.getElementById("newdelhi").hidden =true;
                document.getElementById("kolkata").hidden =true;
                document.getElementById("chennai").hidden =true;
                document.getElementById("mumbai").hidden =true;
                document.getElementById("bangalore").hidden =true;
                document.getElementById("ahmedabad").hidden =true;
                document.getElementById("hyderabad").hidden =true;
                document.getElementById("indore").hidden =true;
                document.getElementById("ranchi").hidden =true;
                document.getElementById("kochi").hidden =true;
                document.getElementById("pune").hidden =true;
                document.getElementById("mangalore").hidden =true;
                document.getElementById("cuttack").hidden =true;
                document.getElementById("dhramshala").hidden =true;
                document.getElementById("darjeeling").hidden =true;
                document.getElementById("dehradun").hidden =true;
                document.getElementById("agra").hidden =false;
        }
                }
                        
        </script>
        <style>
            .mystyle2
        {
            height: 100px;
            width: 200px;
        }
        .mystyle
        {
            color: #000000;
            font-size: 15px;
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
        <center><h2>Hotels</h2></center>
        <div class="tabs tb1">
             <div class="div-nav">
             </div>
        </div>
        <h2 style="color: black; font-size: 30px;">Select Hotel Destination</h2>
          <select name="pcity" id="pcity"  onchange="fun1()" style="width: 180px; height: 30px;">
<option value="New Delhi" >New Delhi</option>
<option value="Kolkata">Kolkata</option>
<option value="Chennai">Chennai</option>
<option value="Mumbai">Mumbai</option>
<option value="Bangalore">Bangalore</option>
<option value="Agra">Agra</option>
<option value="Ahmedabad">Ahmedabad</option>
<option value="Hyderabad">Hyderabad</option>
<option value="Indore">Indore</option>
<option value="Ranchi">Ranchi</option>
<option value="Kochi">Kochi</option>
<option value="Pune">Pune</option>
<option value="Mangalore">Mangalore</option>
<option value="Cuttack">Cuttack</option>
<option value="Dhramshala">Dhramshala</option>
<option value="Darjeeling">Darjeeling</option>
<option value="Dehradun">Dehradun</option>
</select>
        <br><br><br>
        <div id='newdelhi'  class="mystyle" >
            <table width="100%">
                
            <tr>
                <td><h1 style="color: black; font-size: 20px;" >Hyatt Regency Delhi </h1><br><br>
                   <img src="images/delhi11.jpg" class="mystyle2"><img src="images/delhi12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : Bhikaiji Cama Place,<br> Ring Road,<br> New Delhi, Delhi 110066<br>Price - 999/- per room <b><a href="BookHotel.jsp?dest=New+Delhi&price=999"><br>Book Now</a></b></td>
            </tr>
            
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td><h1 style="color: black; font-size: 20px;">Taj Palace, New Delhi </h1><br><br>
                <img src="images/delhi21.jpg" class="mystyle2"><img src="images/delhi22.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : Sardar Patel Marg,<br> Diplomatic Enclave, <br> New Delhi - 110 021 <br>Price - 1299/- per room <b><a href="BookHotel.jsp?dest=New+Delhi&price=1299"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
        <div id='kolkata' hidden class="mystyle">
            <table width="100%">
              
            <tr>
               <td>  <h1 style="color: black; font-size: 20px;" >The Oberoi Grand, Kolkata</h1><br><br>
                   <img src="images/kolkata11.jpg" class="mystyle2"><img src="images/kolkata12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : 15, Jawaharlal Nehru Road,<br> Kolkata,<br> West Bengal 700013<br>Price - 1599/- per room <b><a href="BookHotel.jsp?dest=Kolkata&price=1599"><br>Book Now</a></b></td>
            </tr>
            
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            
            <tr>
            <td><h1 style="color: black; font-size: 20px;" >Taj Bengal, Kolkata </h1><br><br>
            <img src="images/kolkata21.jpg" class="mystyle2"><img src="images/kolkata22.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : 34B, Belvedere Road,<br> Alipore, Kolkata,  <br> West Bengal 700027 <br>Price - 1899/- per room <b><a href="BookHotel.jsp?dest=Kolkata&price=1899"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
        <div id='chennai' hidden class="mystyle">
            <table width="100%">
            <tr>
               <td>    <h1 style="color: black; font-size: 20px;" >Vivanta by Taj - Connemara</h1><br><br>
            <img src="images/chennai11.jpg" class="mystyle2"><img src="images/chennai12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : No.2, Binny Road<br> Anna Salai,<br> Chennai, Tamil Nadu 600002<br>Price - 1599/- per room <b><a href="BookHotel.jsp?dest=Chennai&price=1599"><br>Book Now</a></b></td>
            </tr>
           <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            
            <tr>
            <td><h1 style="color: black; font-size: 20px;" >New Woodlands Hotel </h1><br><br>
            <img src="images/chennai21.jpg" class="mystyle2"><img src="images/chennai22.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : 72-75, Dr. Radha Krishnan Road,<br> Mylapore, Chennai,  <br> Tamil Nadu 600004 <br>Price - 1499/- per room <b><a href="BookHotel.jsp?dest=Chennai&price=1499"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
        <div id='mumbai' hidden class="mystyle">
            <table width="100%">
            <tr>
               <td>    <h1 style="color: black; font-size: 20px;" >The Taj Mahal Palace</h1><br><br>
            <img src="images/mumbai11.jpg" class="mystyle2"><img src="images/mumbai12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : Apollo Bunder,<br> Mumbai,<br> Maharashtra 400001<br>Price - 1999/- per room <b><a href="BookHotel.jsp?dest=Mumbai&price=1999"><br>Book Now</a></b></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            
            <tr>
            <td><h1 style="color: black; font-size: 20px;" >The Emerald </h1><br><br>
            <img src="images/mumbai21.jpg" class="mystyle2"><img src="images/mumbai22.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : Juhu Tara Rd,<br> Juhu, Mumbai,  <br> Maharashtra 400049 <br>Price - 1899/- per room <b><a href="BookHotel.jsp?dest=Mumbai&price=1899"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
        <div id='bangalore' hidden class="mystyle" class="mystyle">
            <table width="100%">
            <tr>
               <td>    <h1 style="color: black; font-size: 20px;" >St. Mark's Hotel</h1><br><br>
            <img src="images/bangalore11.jpg" class="mystyle2"><img src="images/bangalore12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : 4/1, St. Mark's Road,<br> Bengaluru, <br> Karnataka 560001<br>Price - 1799/- per room <b><a href="BookHotel.jsp?dest=Bangalore&price=1799"><br>Book Now</a></b></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            
            <tr>
            <td><h1 style="color: black; font-size: 20px;" >Le Meridien</h1><br><br>
            <img src="images/bangalore21.jpg" class="mystyle2"><img src="images/bangalore22.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : 28, Sankey Road,<br> Bengaluru,  <br> Karnataka 560052 <br>Price - 1699/- per room <b><a href="BookHotel.jsp?dest=Bangalore&price=1699"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
        <div id='agra' hidden class="mystyle">
            <table width="100%">
            <tr>
               <td>    <h1 style="color: black; font-size: 20px;" >Wyndham Grand Agra</h1><br><br>
            <img src="images/agra11.jpg" class="mystyle2"><img src="images/agra12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : Fatehabad Road, <br> Agra - 282004<br>Price - 1599/- per room <b><a href="BookHotel.jsp?dest=Agra&price=1599"><br>Book Now</a></b></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            
            <tr>
            <td><h1 style="color: black; font-size: 20px;" >Hotel Clarks Shiraz</h1><br><br>
            <img src="images/agra21.jpg" class="mystyle2"><img src="images/agra22.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : 54 Taj Road,<br>Agra - 282001   <br>Price - 1799/- per room <b><a href="BookHotel.jsp?dest=Agra&price=1799"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
        <div id='ahmedabad' hidden class="mystyle">
            <table width="100%">
            <tr>
               <td>    <h1 style="color: black; font-size: 20px;" >Comfort Inn Sunset</h1><br><br>
            <img src="images/ahmedabad11.jpg" class="mystyle2"><img src="images/ahmedabad12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : Airport Circle, <br> Hansol Sardarnagar, Hansol<br> Ahmedabad - 382475 <br>Price - 1199/- per room <b><a href="BookHotel.jsp?dest=Ahmedabad&price=1199"><br>Book Now</a></b></td>
            </tr>
<tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
                        
            <tr>
            <td><h1 style="color: black; font-size: 20px;" >Hotel Clarks Shiraz</h1><br><br>
            <img src="images/ahmedabad21.jpg" class="mystyle2"><img src="images/ahmedabad22.jpg" class="mystyle2"></td>
            <td><br><br><br>Address : Near Dinbai Tower, <br>Opp. Sarabhai Compound, <br>Mirzapur Road Ahmedabad - 380001   <br>Price - 1699/- per room <b><a href="BookHotel.jsp?dest=Ahmedabad&price=1699"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
        <div id='hyderabad' hidden class="mystyle">
            <table width="100%">
               <tr>
               <td> <h1 style="color: black; font-size: 20px;" >Westin</h1><br><br>
            <img src="images/hyderabad11.jpg" class="mystyle2"><img src="images/hyderabad12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : Mindspace , Survery No 64, <br> Hi-Tech City Road, HUDA Techno Enclave<br>HITEC City, Hyderabad, Telangana 500081 <br>Price - 1299/- per room <b><a href="BookHotel.jsp?dest=Hyderabad&price=1299"><br>Book Now</a></b></td>
            </tr>
<tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            
            <tr>
            <td><h1 style="color: black; font-size: 20px;" >The Golkonda Hotel</h1><br><br>
            <img src="images/hyderabad21.jpg" class="mystyle2"><img src="images/hyderabad22.jpg" class="mystyle2"></td>
            <td><br><br><br>Address : 10-1-124, Opp. Jntu, Masab Tank, <br>Banjara Hills, <br>Hyderabad, Telangana  - 500028   <br>Price - 1199/- per room <b><a href="BookHotel.jsp?dest=Hyderabad&price=1199"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
         <div id='indore' hidden class="mystyle">
            <table width="100%">
            <tr>
               <td>    <h1 style="color: black; font-size: 20px;" >Best Western Plus O2 Hotel</h1><br><br>
            <img src="images/indore11.jpg" class="mystyle2"><img src="images/indore12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : 31/1 Main Road, <br> South Tukoganj <br>Indore - 452001 <br>Price - 1599/- per room <b><a href="BookHotel.jsp?dest=Indore&price=1599"><br>Book Now</a></b></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            
            <tr>
            <td><h1 style="color: black; font-size: 20px;" >The Blessings Grand</h1><br><br>
            <img src="images/indore21.jpg" class="mystyle2"><img src="images/indore22.jpg" class="mystyle2"></td>
            <td><br><br><br>Address : Behind Aerodrome Thana, <br>Airport Road, Chotta  <br>Bangarda Indore - 452005  <br>Price - 1199/- per room <b><a href="BookHotel.jsp?dest=Indore&price=1199"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
        <div id='ranchi' hidden class="mystyle">
            <table width="100%">
            <tr>
               <td>    <h1 style="color: black; font-size: 20px;" >Hotel AVN Grand</h1><br><br>
            <img src="images/ranchi11.jpg" class="mystyle2"><img src="images/ranchi12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : Opposite G.E.L Church Shopping Centre, Sharma , <br> Lane, Main Road  <br>Ranchi - 834001 <br>Price - 1799/- per room <b><a href="BookHotel.jsp?dest=Ranchi&price=1799"><br>Book Now</a></b></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            
            <tr>
            <td><h1 style="color: black; font-size: 20px;" >Radisson Blu Hotel</h1><br><br>
            <img src="images/ranchi21.jpg" class="mystyle2"><img src="images/ranchi22.jpg" class="mystyle2"></td>
            <td><br><br><br>Address : Main Road Kadru Diversion, <br>Opposite Chambers of Commerce  <br>Ranchi - 834001 <br>Price - 1899/- per room <b><a href="BookHotel.jsp?dest=Ranchi&price=1899"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
        <div id='kochi' hidden class="mystyle">
            <table width="100%">
            <tr>
               <td>    <h1 style="color: black; font-size: 20px;" >Abad Atrium</h1><br><br>
            <img src="images/kochi11.jpg" class="mystyle2"><img src="images/kochi12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : M.G Road, <br> Kochi - 682035  <br>Kerala, India <br>Price - 999/- per room <b><a href="BookHotel.jsp?dest=Kochi&price=999"><br>Book Now</a></b></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            
            <tr>
            <td><h1 style="color: black; font-size: 20px;" >A J Residency Hotel</h1><br><br>
            <img src="images/kochi21.jpg" class="mystyle2"><img src="images/kochi22.jpg" class="mystyle2"></td>
            <td><br><br><br>Address : 17 Kaloor <br>Behind Lenin Centre,  <br> Ernakulam Kochi - 682017 <br>Price - 1499/- per room <b><a href="BookHotel.jsp?dest=Kochi&price=1499"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
        <div id='pune' hidden class="mystyle">
            <table width="100%">
            <tr>
               <td>    <h1 style="color: black; font-size: 20px;" >JW Marriott Hotel Pune</h1><br><br>
            <img src="images/pune11.jpg" class="mystyle2"><img src="images/pune12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : Senapati Bapat Road, <br> Pune,  <br>Maharashtra 411053 <br>Price - 1999/- per room <b><a href="BookHotel.jsp?dest=Pune&price=1999"><br>Book Now</a></b></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            
            <tr>
            <td><h1 style="color: black; font-size: 20px;" >Hotel Sagar Plaza, Pune</h1><br><br>
            <img src="images/pune21.jpg" class="mystyle2"><img src="images/pune22.jpg" class="mystyle2"></td>
            <td><br><br><br>Address : 1, Bund Garden Road, <br>Pune,  <br> Maharashtra 411001 <br>Price - 1899/- per room <b><a href="BookHotel.jsp?dest=Pune&price=1899"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
        <div id='mangalore' hidden class="mystyle">
            <table width="100%">
            <tr>
               <td>    <h1 style="color: black; font-size: 20px;" >GoldFinch The Finest Boutique Hotel</h1><br><br>
            <img src="images/mangalore11.jpg" class="mystyle2"><img src="images/mangalore12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : 236/2A1, Bunts Hostel Road, <br> Near Jyoti Circle,  <br>Mangalore - 575003 <br>Price - 1899/- per room <b><a href="BookHotel.jsp?dest=Mangalore&price=1899"><br>Book Now</a></b></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            
            <tr>
            <td><h1 style="color: black; font-size: 20px;" >The Taj Gateway Hotel Old Port Road</h1><br><br>
            <img src="images/mangalore21.jpg" class="mystyle2"><img src="images/mangalore22.jpg" class="mystyle2"></td>
            <td><br><br><br>Address : Old Port Road, <br>S K Mangalore - 575001,  <br> Karnataka, India <br>Price - 1899/- per room <b><a href="BookHotel.jsp?dest=Mangalore&price=1899"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
        <div id='cuttack' hidden class="mystyle">
            <table width="100%">
            <tr>
               <td>    <h1 style="color: black; font-size: 20px;" >Hotel Bombay Inn</h1><br><br>
            <img src="images/cuttack11.jpg" class="mystyle2"><img src="images/cuttack12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : Ice Factory Road, <br> College Square,  <br>Cuttack, Odisha 753003 <br>Price - 1699/- per room <b><a href="BookHotel.jsp?dest=Cuttack&price=1699"><br>Book Now</a></b></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            
            <tr>
            <td><h1 style="color: black; font-size: 20px;" >The Blue Lagoon</h1><br><br>
            <img src="images/cuttack21.jpg" class="mystyle2"><img src="images/cuttack22.jpg" class="mystyle2"></td>
            <td><br><br><br>Address :Near Sunshine Field, Chandni chowk area, <br>Ring Rd,  <br> Rajabagicha, Cuttack,Odisha 753009 <br>Price - 1899/- per room <b><a href="BookHotel.jsp?dest=Cuttack&price=1899"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
         <div id='dhramshala' hidden class="mystyle">
            <table width="100%">
            <tr>
               <td>    <h1 style="color: black; font-size: 20px;" >Hotel Pong View</h1><br><br>
            <img src="images/dhramshala11.jpg" class="mystyle2"><img src="images/dhramshala12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : Hotel Pong View,Cantt Road, <br>Dharamshala,Distt Kangra,  <br> H.P - INDIA Dharamshala - 176219 <br>Price - 1699/- per room <b><a href="BookHotel.jsp?dest=Dhramshala&price=1699"><br>Book Now</a></b></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            
            <tr>
            <td>            <h1 style="color: black; font-size: 20px;" >Hotel Inclover Dharamshala</h1><br><br>
            <img src="images/dhramshala21.jpg" class="mystyle2"><img src="images/dhramshala22.jpg" class="mystyle2"></td>
            <td><br><br><br>Address :  The Hill Side Mall, <br>Kotwali Bazaar, Khaniyara Road  <br> Dharamshala - 176215 <br>Price - 1899/- per room <b><a href="BookHotel.jsp?dest=Dhramshala&price=1899"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
        <div id='darjeeling' hidden class="mystyle">
            <table width="100%">
            <tr>
               <td>                <h1 style="color: black; font-size: 20px;" >Windamere Hotel</h1><br><br>
                <img src="images/darjeeling11.jpg" class="mystyle2"><img src="images/darjeeling12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address : Observatory Hill, <br> Darjeeling,  <br>West Bengal 734101 <br>Price - 1199/- per room <b><a href="BookHotel.jsp?dest=Darjeeling&price=1199"><br>Book Now</a></b></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            
            <tr>
            <td>            <h1 style="color: black; font-size: 20px;" >Hotel Seven Seventeen</h1><br><br>
                <img src="images/darjeeling21.jpg" class="mystyle2"><img src="images/darjeeling22.jpg" class="mystyle2"></td>
            <td><br><br><br>Address : 26, H.D. Lama Road, <br>Darjeeling,  <br> West Bengal 734101 <br>Price - 1299/- per room <b><a href="BookHotel.jsp?dest=Darjeeling&price=1299"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
         <div id='dehradun' hidden class="mystyle">
            <table width="100%">
            <tr>
               <td>                <h1 style="color: black; font-size: 20px;" >Hotel Aketa</h1><br><br>
                <img src="images/dehradun11.jpg" class="mystyle2"><img src="images/dehradun12.jpg" class="mystyle2"></td>
               <td><br><br><br>Address :  113/1-2, Rajpur Road, <br>Dehradun, <br> Uttarakhand 248001 <br>Price - 1699/- per room <b><a href="BookHotel.jsp?dest=Dehradun&price=1699"><br>Book Now</a></b></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            
            <tr>
            <td>            <h1 style="color: black; font-size: 20px;" >Hotel Great Value</h1><br><br>
                <img src="images/dehradun21.jpg" class="mystyle2"><img src="images/dehradun22.jpg" class="mystyle2"></td>
            <td><br><br><br>Address :  74-C, Rajpur Road, <br>Dehradun,  <br> Dharamshala - 176215 <br>Price - 1899/- per room <b><a href="BookHotel.jsp?dest=Dehradun&price=1899"><br>Book Now</a></b></td>    
            </tr>
        </table>    
        </div>
    </body>
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
   
</html>
