<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Detail</title>
</head>
<body>



<link rel="stylesheet" href="css/largadd.css"/>
    

<!-- CSS ====================================================== --> 
	<link rel="stylesheet" href="css/smoothzoom.css">
	<!-- Demo CSS (don't use) -->
	<style type="text/css">









		pre {
			background: #333;
			padding: 10px;
			overflow: auto;
			color: #BBB7A9;
			}
		.button {
			text-decoration: none;
			color: #F0353A;
			border: 2px solid #F0353A;
			padding: 6px 10px;
			display: inline-block;
			font-size: 18px;
		}
		.button:hover {
			background:#F0353A;
			color:#fff;
		}
		hr {
			clear:both;
			border:0;
			border-bottom:1px solid #ccc;
			margin:25px 0;
		}
		.float-left {
		    display:block;
		    float:left;
		    max-width:250px;
		    margin:0 10px 10px 0px;
		    cursor:-webkit-zoom-in;
		    cursor:-moz-zoom-in;
		}
		.float-right {
		    display:block;
		    float:right;
		    max-width:250px;
		    margin:0 0px 10px 10px;
		    cursor:-webkit-zoom-in;
		    cursor:-moz-zoom-in;
		}
		@media screen and (max-width: 400px) {
			.float-left, .float-right {
				max-width: 100%;
				height: auto;
				margin:10px 0;
			}
		}
	</style>


<!-- cs finish of slider for zoom image -->



<!-- JS ======================================================= --> 
<script src="css/jquery.js"></script>

    <script type="text/javascript">
        $(window).load( function() {
            $('img').smoothZoom({
            	// Options go here
            });
        });
    </script>


<!-- js finished for slider image zoom -->
<script>
$(document).ready(function() {
	$(".map").click(function(){
    $("#map").show(10);
	$("#con").hide(10);
	$("#pro").hide(10);
	
	});
	$(".con").click(function(){
    $("#map").hide(10);
	$("#con").show(10);
	$("#pro").hide(10);
	});
	$(".pro").click(function(){
    $("#map").hide(10);
	$("#con").hide(10);
	$("#pro").show(10);
	});

   $(function(){
	$("#map").show(10);
	$("#con").hide(10);
	$("#pro").hide(10);
	
	});


    
});




</script>






<div class="larg_back">
<div class="larg_white">
<div class="large_white_header">
<div class="large_white_header_text">${title} </div>
<div class="large_white_header_price">

 <div class="spec_price_2">Rs: ${price}</div>
<div  class="spec_price_tag_2"><img src="images/price-tag-head.png" height="30"/></div>
</div>
</div>  <!-- header .finished-->

<div class="larg_pic">
<div class="larg_pic_header">*photos</div>

                            <div class="larg_pic_sep">
                            <div class="debug"></div>
                  
                            
        <img src="${pageContext.servletContext.contextPath }/DisplayServlet?id=${id}" width="125" height="125" rel="zoom" class="float-left" />
                            </div>
 
<!-- Typical usage. The float-left class is unrelated to the plugin -->

<!-- JS ======================================================= --> 
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript" src="js/smoothzoom.min.js"></script>
    <script type="text/javascript">
        $(window).load( function() {
            $('img').smoothZoom({
            	// Options go here
            });
        });
    </script>
<!-- JS ======================================================= --> 

</div><!--larg pic .end-->

<div class="larg_data_right_back">
<div class="larg_data_right_inner_city_date">*Date: </div>
<div class="larg_data_right_inner_text_database_city">${date}</div>

<div class="larg_data_right_inner_city">*Address:</div>
<div class="larg_data_right_inner_text_database">${address}</div>

<div class="larg_data_right_inner_city_city">*City: </div>
<div class="larg_data_right_inner_text_database_city">${city}</div>

<div class="larg_data_right_inner_city_city">*State: </div>
<div class="larg_data_right_inner_text_database_city">${state}</div>





<div class="larg_data_right_inner_zip">*Zip/Postal Code: </div>
<div class="larg_data_right_inner_text_database_zip">${zip }</div>




</div> <!-- right property end-->


<div class="larg_dis">
<div class="larg_pic_header_des">*Description</div>
${des}</div>


	
	
	
<!-- isbn show php endl================-->

 <div class="larg_isbn">
 <span style="float:left; 
	padding:5px; font-size:18px; "> Add ISBN number:  </span>
    <div class="isbn_inner"> ${id} </div>
    </div> 
</div> <!--larg white .endl; --->


<div class="larg_right_back_info">
<div class="larg_buton_back">
<button class="map" id="larg_buton_iner">Map</button>
 



<div id="con" class="larg_display_con">
<div class="larg_display_con_back_clr">
<div class="larg_con_header">
<div class="larg_con_header_pic"><img src="images/msg-icon.gif"/></div>
To inquire about this ad listing, complete the form below to send a message to the ad poster
</div>
<?php
// display form if user has not clicked submit
if (!isset($_POST["submit"])) {
  ?>
  <form method="post" action="<?php echo $_SERVER["PHP_SELF"];?>">
   &nbsp; Name:<br> <input class="larg_text" type="text" name="name"><br>
  &nbsp; &nbsp; From: <br><input class="larg_text" type="email" name="from" placeholder="Email" ><br>
  &nbsp; &nbsp; Subject: <br><input class="larg_text" type="text" name="subject"><br>
  &nbsp; &nbsp; Message:<br> <textarea class="larg_text_des" rows="10" cols="40" name="message"></textarea><br>
  <input  class="larg_butn_submit" type="submit" name="submit" value="Send Mail ">
  </form>
  
</div> 
<!-- clr endl;-->

</div><!-- liar contact dispaly rnfl; -->

</div> <!-- button back .endl; -->



<div id="pro" class="larg_display_profile">

</div><!-- info endl; -->
</div><!-- profile endl; -->
</div><!-- larr_back.endkl-->








</body>
</html>