<%-- 
    Document   : CurrencyConversion
    Created on : 09-Apr-2015, 17:06:03
    Author     : win 8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="http://www.geoplugin.net/javascript.gp" type="text/javascript"></script>
<!-- when using Google to load JSON API -->
<script src="http://www.google.com/jsapi" type="text/javascript"></script>
<script src="http://www.geoplugin.net/ajax_currency_converter.gp" type="text/javascript"></script>
<!-- When using your own JSON API -->
<!-- <script src="http://www.geoplugin.net/ajax_currency_converter.gp?nogoog=1" type="text/javascript">
</script> -->
<script>
    function func()
    {
        
        var a=document.getElementById("gp_converted").innerHTML;
        
        
        
        
     }
    
</script>
    </head>
    <body>
        <h1>Currency Conversion</h1>
        
<input type='text' id='gp_amount' size='4' /> 
<select id="gp_from"></select> to <select id="gp_to"></select>
<p><input type='button' onClick='gp_convertIt()' value = 'Convert It' /></p>
<div id="gp_converted" onload="func()">---</div>
<script>gp_currencySymbols()</script>
    </body>
</html>
