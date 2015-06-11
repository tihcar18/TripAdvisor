<%-- 
    Document   : confirm
    Created on : 16-Apr-2015, 13:47:09
    Author     : win 8
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Booking</title>
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
    var xreq=new XMLHttpRequest();
    function paywallet(c)
    { alert("hi");
       var url="payewallet.jsp?c="+c;
           xreq.open("GET",url,true);
           xreq.onreadystatechange=v_results;
           xreq.send(null); 
     }
      function v_results()
        {   var resp;
         alert("hi2");
           if(xreq.readyState==4)
            {
                resp=xreq.responseText.trim();
                alert(resp);
                location="index.jsp";
            }
        }
      function noBack()
        {
            window.history.forward();
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
    <body class="page1" id="top" onload="noBack()">
          <%
   if(session.getAttribute("uname")==null)
   { 
       response.sendRedirect("cust_login.jsp");
   } 
   else {
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
                   <li><!--<a href="index.jsp">Home</a></li>
                   <li class="current"><a href="services.jsp">Services</a></li>
                   <li><a href="booking.jsp">Booking</a></li>
                   <li><a href="holidays.jsp">Holidays</a></li>
                   <li><a href="contactus.jsp">Contact Us</a--></li>
                   <li><a href="#">Confirm</a></li>
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
            <center><div class="container_12" >
      <center><h2>Confirm Booking</h2></center>
        <%int cash=0;
            String booking=request.getParameter("booking");
            String reqno=request.getParameter("reqno");
            String cost=request.getParameter("cost");
            session.setAttribute("cost",cost);
             session.setAttribute("booking",booking);
             session.setAttribute("reqno",reqno);   
            String uname=session.getAttribute("uname").toString();
            Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost/traveltourdb?user=root&password=system");
            PreparedStatement p=c.prepareStatement("select * from "+booking+"booking where uname=? and reqno=?");
            p.setString(1, uname);
            p.setString(2, reqno);
            ResultSet rs=p.executeQuery();
           if(rs.next())
            {
                PreparedStatement ps=c.prepareStatement("select * from ewallet where uname=?");
                 ps.setString(1, session.getAttribute("uname").toString());
                ResultSet rs2=ps.executeQuery();
                if(rs2.next())
                 {    
                    cash=Integer.parseInt(rs2.getString("cash"));
                 }
                
                
                if(booking.compareTo("package")==0)
                { %>
      
      <table class="mystyle" width="40%">
          
              <tr><td>Username</td><td>  <%=rs.getString(1)%></td></tr>
              <tr><td>&nbsp;</td></tr>
                  <tr><td>Package ID</td><td>  <%=rs.getString(2)%></td></tr>
                  <tr><td>&nbsp;</td></tr>
                      <tr><td>Package Type</td><td>  <%=rs.getString(3)%></td></tr><tr><td>&nbsp;</td></tr>
                          <tr><td>Departure Date</td><td>  <%=rs.getString(4)%></td></tr><tr><td>&nbsp;</td></tr>
                              <tr><td>Return Date</td><td>  <%=rs.getString(5)%></td></tr><tr><td>&nbsp;</td></tr>
                          <tr><td>Departure From</td><td>  <%=rs.getString(6)%></td></tr><tr><td>&nbsp;</td></tr>
                          <tr><td>Request Number</td><td>  <%=rs.getString(7)%></td></tr>   <tr><td>&nbsp;</td></tr>
                                  <tr><td>Number of Tickets</td><td>  <%=rs.getString(8)%></td></tr>    <tr><td>&nbsp;</td></tr>
                                <tr><td>Cost </td><td> Rs. <%=rs.getString(9)%></td></tr><tr><td>&nbsp;</td></tr>     
                  <tr><td>Pay Date</td><td>  <%=rs.getString(10)%></td></tr>   <tr><td>&nbsp;</td></tr>
                                  <tr><td></td><td><b><a href="payment.jsp" >Confirm</a></b></td></tr>
      </table>
        <%}
                else if(booking.compareTo("car")==0)
                {%>
      <table class="mystyle" width="40%">
          
              <tr><td>Username</td><td>  <%=rs.getString(1)%></td></tr>
              <tr><td>&nbsp;</td></tr>
                  <tr><td>Journey Type</td><td>  <%=rs.getString(2)%> Trip</td></tr>
                  <tr><td>&nbsp;</td></tr>
                      <tr><td>Pick-Up City</td><td>  <%=rs.getString(3)%></td></tr><tr><td>&nbsp;</td></tr>
                          <tr><td>Drop-Off City</td><td>  <%=rs.getString(4)%></td></tr><tr><td>&nbsp;</td></tr>
                              <tr><td>Departure Date</td><td>  <%=rs.getString(5)%></td></tr><tr><td>&nbsp;</td></tr>
                          <tr><td>Return Date</td><td>  <%=rs.getString(6)%></td></tr><tr><td>&nbsp;</td></tr>
                            <tr><td>Pick-Up Time</td><td>  <%=rs.getString(7)%></td></tr>   <tr><td>&nbsp;</td></tr>
                            <tr><td>Return Time</td><td>  <%=rs.getString(8)%></td></tr>    <tr><td>&nbsp;</td></tr>
                            
             <tr><td>Car Class Preference</td><td>  <%=rs.getString(9)%></td></tr><tr><td>&nbsp;</td></tr>
                              <tr><td>Request Number</td><td>  <%=rs.getString(11)%></td></tr><tr><td>&nbsp;</td></tr>
                          <tr><td>Cost </td><td> Rs. <%=rs.getString(12)%></td></tr><tr><td>&nbsp;</td></tr>
                            <tr><td>Pay Date</td><td>  <%=rs.getString(13)%></td></tr>   <tr><td>&nbsp;</td></tr>
           
                       <tr><td></td><td><b><a href="payment.jsp" >Confirm</a></b></td></tr>
            
      </table>
      
        <%}
                else if(booking.compareTo("flight")==0)
                {%>
      <table class="mystyle" width="40%">
          
              <tr><td>Username</td><td>  <%=rs.getString(1)%></td></tr>
              <tr><td>&nbsp;</td></tr>
                  <tr><td>Journey Type</td><td>  <%=rs.getString(2)%> Trip</td></tr>
                  <tr><td>&nbsp;</td></tr>
                      <tr><td>Departure From</td><td>  <%=rs.getString(3)%></td></tr><tr><td>&nbsp;</td></tr>
                          <tr><td>Arrival To</td><td>  <%=rs.getString(4)%></td></tr><tr><td>&nbsp;</td></tr>
                              <tr><td>Departure Date</td><td>  <%=rs.getString(5)%></td></tr><tr><td>&nbsp;</td></tr>
                          <tr><td>Return Date</td><td>  <%=rs.getString(6)%></td></tr><tr><td>&nbsp;</td></tr>
                            <tr><td>Class Preference</td><td>  <%=rs.getString(7)%></td></tr>   <tr><td>&nbsp;</td></tr>
                            <tr><td>Number of Tickets</td><td>  <%=rs.getString(9)%></td></tr>    <tr><td>&nbsp;</td></tr>
                              <tr><td>Request Number</td><td>  <%=rs.getString(10)%></td></tr><tr><td>&nbsp;</td></tr>
                          <tr><td>Cost </td><td> Rs. <%=rs.getString(11)%></td></tr><tr><td>&nbsp;</td></tr>
                            <tr><td>Pay Date</td><td>  <%=rs.getString(12)%></td></tr>   <tr><td>&nbsp;</td></tr>
           
                       <tr><td></td><td><b><a href="payment.jsp" >Confirm</a></b></td></tr>
                              <tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>
                              <tr><td rowspan="2"><b>Note : Infants are not charged, so their ticket is not counted</b></td><td></td></tr>
            
      </table>
      
                              <%}
                else if(booking.compareTo("train")==0)
                {%>
      <table class="mystyle" width="40%">
          
              <tr><td>Username</td><td>  <%=rs.getString(1)%></td></tr>
              <tr><td>&nbsp;</td></tr>
                  <tr><td>Journey Type</td><td>  <%=rs.getString(2)%> Trip</td></tr>
                  <tr><td>&nbsp;</td></tr>
                      <tr><td>Departure From</td><td>  <%=rs.getString(3)%></td></tr><tr><td>&nbsp;</td></tr>
                          <tr><td>Arrival To</td><td>  <%=rs.getString(4)%></td></tr><tr><td>&nbsp;</td></tr>
                              <tr><td>Departure Date</td><td>  <%=rs.getString(5)%></td></tr><tr><td>&nbsp;</td></tr>
                          <tr><td>Return Date</td><td>  <%=rs.getString(6)%></td></tr><tr><td>&nbsp;</td></tr>
                            <tr><td>Class Preference</td><td>  <%=rs.getString(7)%></td></tr>   <tr><td>&nbsp;</td></tr>
                              <tr><td>Train Number</td><td>  <%=rs.getString(8)%></td></tr>   <tr><td>&nbsp;</td></tr>
                            <tr><td>Number of Tickets</td><td>  <%=rs.getString(10)%></td></tr>    <tr><td>&nbsp;</td></tr>
                              <tr><td>Request Number</td><td>  <%=rs.getString(11)%></td></tr><tr><td>&nbsp;</td></tr>
                          <tr><td>Cost </td><td> Rs. <%=rs.getString(12)%></td></tr><tr><td>&nbsp;</td></tr>
                            <tr><td>Pay Date</td><td>  <%=rs.getString(13)%></td></tr>   <tr><td>&nbsp;</td></tr>
           
                       <tr><td></td><td><b><a href="payment.jsp" >Confirm</a></b></td></tr>
            <tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>
                                   <tr><td colspan="2"><b>Note : Infants are not charged, so their ticket is not counted</b></td><td></td></tr>
      </table>
      
     
                                                <%}
                else 
                {%>
      <table class="mystyle" width="40%">
          
              <tr><td>Username</td><td>  <%=rs.getString(1)%></td></tr>
              <tr><td>&nbsp;</td></tr>
                  <tr><td> Type of Accomodation</td><td>  <%=rs.getString(2)%> </td></tr>
                  <tr><td>&nbsp;</td></tr>
                      <tr><td>Check In Date</td><td>  <%=rs.getString(3)%></td></tr><tr><td>&nbsp;</td></tr>
                          <tr><td>Check Out Date</td><td>  <%=rs.getString(4)%></td></tr><tr><td>&nbsp;</td></tr>
                              <tr><td>Hotel Destination</td><td>  <%=rs.getString(5)%></td></tr><tr><td>&nbsp;</td></tr>
                          
                            <tr><td>Number of Rooms</td><td>  <%=rs.getString(6)%></td></tr>   <tr><td>&nbsp;</td></tr>
                              
                            <tr><td>Number of People</td><td>  <%=rs.getString(7)%></td></tr>    <tr><td>&nbsp;</td></tr>
                              <tr><td>Request Number</td><td>  <%=rs.getString(9)%></td></tr><tr><td>&nbsp;</td></tr>
                          <tr><td>Cost </td><td> Rs. <%=rs.getString(10)%></td></tr><tr><td>&nbsp;</td></tr>
                            <tr><td>Pay Date</td><td>  <%=rs.getString(11)%></td></tr>   <tr><td>&nbsp;</td></tr>
           
                       <tr><td></td><td><b><a href="payment.jsp" >Confirm</a></b></td></tr>
            <tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>
                                   <tr><td colspan="2"><b></b></td><td></td></tr>
      </table>
      
     
        <%
            }
      
        
            }
          if(cash>=Integer.parseInt(session.getAttribute("cost").toString()))
          {  
   %>
   <br><br><br><br> 
   <input type="button" value="Pay via E-wallet" id="ewal" onclick="paywallet('<%=Integer.toString(cash)%>')" />
  <% } %>
      
   
                 </div></center>
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
    <%
   }
%>
    </body>
</html>
