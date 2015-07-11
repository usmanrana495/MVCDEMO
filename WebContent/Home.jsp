<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<link rel="stylesheet" href="css/fun.css"/>
<!--//for sticky header1 start-->

   <style>	

.pagy_body_header{
	width:880px;
	height:27px;
	float:left;
	padding-left:10px;
	padding-top:3px;
	font-size:24px;
	color:#FFF;
	font-style:oblique;
	font-family:Tahoma, Geneva, sans-serif;
	text-shadow:5px 5px 5px #000000;
			  /* Safari 5.1, Chrome 10+ */
 		 background: -webkit-linear-gradient(top, #CCC, white);

  /* Firefox 3.6+ */
		  background: -moz-linear-gradient(top, #CCC, white);

  /* IE 10 */
 			 background: -ms-linear-gradient(top, #CCC, white);

  /* Opera 11.10+ */
  			background: -o-linear-gradient(top, #CCC, white);

}

	   /** * Eric Meyer's Reset CSS v2.0 (http://meyerweb.com/eric/tools/css/reset/) * http://cssreset.com */html, body, div, span, applet, object, iframe,h1, h2, h3, h4, h5, h6, p, blockquote, pre,a, abbr, acronym, address, big, cite, code,del, dfn, em, img, ins, kbd, q, s, samp,small, strike, strong, sub, sup, tt, var,b, u, i, center,dl, dt, dd, ol, ul, li,fieldset, form, label, legend,table, caption, tbody, tfoot, thead, tr, th, td,article, aside, canvas, details, embed, figure, figcaption, footer, header1, hgroup, menu, nav, output, ruby, section, summary,time, mark, audio, video {	margin: 0;	padding: 0;	border: 0;	font-size: 100%;	font: inherit;	vertical-align: baseline;}/* HTML5 display-role reset for older browsers */article, aside, details, figcaption, figure, footer, header1, hgroup, menu, nav, section {	display: block;}body {	line-height: 1;}ol, ul {	list-style: none;}blockquote, q {	quotes: none;}blockquote:before, blockquote:after,q:before, q:after {	content: '';	content: none;}table {	border-collapse: collapse;	border-spacing: 0;}
        
        
        header1{
            position: fixed;
            width: 100%;
            height: 6%;
            font-family: 'PT Sans', sans-serif;
            
            // set animation
            -webkit-transition: all 0.4s ease;
            transition: all 0.4s ease;
        }
        
        header1.sticky {
            height: 6%; 
        }
        
   
   </style>
        <script src="css/jquery-1.4.4.min.js" type="text/javascript"></script>

    <script src="css/jsCarousel-2.0.0.js" type="text/javascript"></script>

    <link href="css/jsCarousel-2.0.0.css" rel="stylesheet" type="text/css" />
	<script src="css/jquery.js"></script>
	<script>
    
	$(window).scroll(function() {
    if ($(this).scrollTop() > 1){  
        $('header1').addClass("sticky");
    }
    else{
        $('header1').removeClass("sticky");
    }
});
</script>


    <script type="text/javascript">
        $(document).ready(function() {

            $('#carouselh').jsCarousel({ onthumbnailclick: function(src) { alert(src); }, autoscroll: true, circular: true, masked: false, itemstodisplay: 5, orientation: 'h' });

        });       
        
    </script>

    <style type="text/css">
        #demo-wrapper
        {
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
        }
        #demo-left
        {
            width: 15%;
            float: left;
        }
        #demo-right
        {
            width: 85%;
            float: left;
        }
        #hWrapperAuto
        {
            margin-top: 20px;
        }
        #demo-tabs
        {
            width: 100%;
            height: 50px;
            color: White;
            margin: 0;
            padding: 0;
        }
        #demo-tabs div.item
        {
            height: 35px;
            float: left;
            background-color: #2F2F2F;
            border: solid 1px gray;
            border-bottom: none;
            margin: 0;
            margin-left: 10px;
            text-align: center;
            padding: 10px 4px 4px 4px;
            font-weight: bold;
        }
        #contents
        {
            width: 100%;
            margin: 0;
            color: White;
            font: arial;
            font-size: 11pt;
        }
        #demo-tabs div.item.active-tab
        {
            background-color: #CCC;
        }
        #demo-tabs div.item.active-tabc
        {
            background-color: #CCC;
        }
        #v1, #v2
        {
        }
        .visible
        {
            display: block;
        }
        .hidden
    g40    {
            display: none;
        }
        #oldWrapper
        {
            margin-left: 100px;
        }
        #contents a
        {
            color: yellow;
        }
        #contents a:hover
        {
            text-decoration: none;
            color: Gray;
        }
        .heading
        {
            font-size: 20pt;
            font-weight: bold;
        }
    </style>
 <!-- large slider start !-->   
 	<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script type="text/javascript" src="css/jquery.immersive-slider.js"></script>
  <link href='css/immersive-slider.css' rel='stylesheet' type='text/css'>
  <style>
    
    .wrapper {
    	
    	height: 95%;
    	margin: 0 auto; 
    	overflow: hidden;
    }
    
    a {
      text-decoration: none;
    }
    
    
    h1, h2 {
      width: 100%;
      float: left;
    }
    h1 {
      margin-top: 25px;
      color: #000;
      margin-bottom: 5px;
      font-size: 50px;
      letter-spacing: -4px;
    }
    h2 {
      color: #444;
      font-weight: 100;
      margin-top: 0;
      margin-bottom: 10px;
    }
    
    .pointer {
      color: #9b59b6;
      font-family: 'Pacifico', cursive;
      font-size: 30px;
      margin-top: 15px;
    }
    pre {
      margin: 10px;
    }
    pre code {
      padding: 15px;
      border-radius: 5px;
      font-size: 15px;
      background: rgba(0,0,0,0.1);
      border: rgba(0,0,0,0.05) 5px solid;
      max-width: 380px;
    }
<?php /*?>width 900 krni ha <?php */?>

    .main {
      float: left;
      width: 880px;     
      background: #161923;
    }
    
    .main h1 {
      padding:10px 50px;
      float: left;
      width: 100%;
      font-size: 90px;
      box-sizing: border-box;
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      font-weight: 100;
      color: black;
      margin: 0;
      margin-top: 40px;
      font-family: 'Playfair Display';
      letter-spacing: -1px;
	  
	 }
   
    .main h1.demo1 {
      background: ##1ABC9C;
    }
    
    .reload.bell {
      font-size: 12px;
      padding: 10px;
      width: 45px;
      text-align: center;
      height: 47px;
      border-radius: 50px;
      -webkit-border-radius: 50px;
      -moz-border-radius: 50px;
    }
    
    .reload.bell #notification {
      font-size: 25px;
      line-height: 140%;
    }
    
    .reload, .btn{
      display: inline-block;
      border: 4px solid #A2261E;
      border-radius: 5px;
      -moz-border-radius: 5px;
      -webkit-border-radius: 5px;
      background: #CC3126;
      display: inline-block;
      line-height: 100%;
      padding: 0.7em;
      text-decoration: none;
      color: #fff;
      width: 100px;
      line-height: 140%;
      font-size: 17px;
      font-family: open sans;
      font-weight: bold;
    }
    .reload:hover{
      background: #A2261E;
    }
    .btn {
      width: 200px;
      color: #fff;
      border: none;
      margin-left: 10px;
      background: black;
    }
    .clear {
      width: auto;
    }
    .btn:hover, .btn:hover {
      background: rgba(0,0,0,0.8);
    }
    .btns {
      width: 410px;
      margin: 5px auto;
    }
    .credit {
      text-align: center;
      color: #444;
      padding: 10px;
      margin: 0 0 0 0;
      background: #161923;
      color: #FFF;
      float: left;
      width: 100%;
	  
    }
    .credit a {
      color: #fff;
      text-decoration: none;
      font-weight: bold;
    }
    
    .back {
      position: absolute;
      top: 0;
      left: 0;
      text-align: center;
      display: block;
      padding: 2px;
      width: 100%;
      
	  box-sizing: border-box;
      -moz-box-sizing: border-box;
      -webkit-box-sizing: border-box;
      background: rgba(255, 255, 255, 0.25);
      font-weight: bold;
      font-size: 13px;
      color: #000;
      -webkit-transition: all 200ms ease-out;
      -moz-transition: all 200ms ease-out;
      -o-transition: all 200ms ease-out;
      transition: all 200ms ease-out;
    }
    .back:hover {
      color: black;
      background: rgba(255, 255, 255, 0.5);
    }
    
    
    .page_container {
      max-width: 815px;
      margin: 10px 15px 10px 30px ;
    }

    .header1 {
      background: white;
      padding-top: 10px;
      margin-bottom: 0;
    }
    .header1 h1{
      margin-bottom: 0;
      font-size: 45px;
    }

    .header1 .menu {
      padding-bottom: 5px;
    }

    .benefits {
      color: black;
      height: 100px;
      background: #FFF;
      position: relative;
      width: 100%;
      padding: 25px;
      font-size: 40px;
      font-weight: 100;
      float: left;
      box-sizing: border-box;
      -moz-box-sizing: border-box;
      -webkit-box-sizing: border-box;
    }

    .benefits .page_container{
      margin-bottom: 60px;
      margin-top: 0;
    }
    .immersive_slider .is-slide .content h2{
      line-height: 140%;
      font-weight: 100;
      color: white;
      font-weight: 100;
    }
    .immersive_slider .is-slide .content a {
      color: white;
    }
  
  .immersive_slider .is-slide .content p{
    float: left;
    font-weight: 100;
    width: 100%;
    font-size: 17px;
    margin-top: 2px;
  }
  
  
  .top_log1{
	width:75px;
	height:27px;
	float:left;
	padding-left:5px;
	padding-top:5px;
	font-size:24px;
	margin:5px 0 0 15px;
	font-style:oblique;
	color:#FFF;
	border-left:4px double #666;
	border-right:4px double #666;
}

.top1{
	height:40px;;
	float:left;
	background:#313131;
	width:1200px;
	margin:0 80px 0 80px; 
	
	box-shadow:5px 5px 5px #999999;

	

}

	</style>


   
   <div class=top>
   <% if(session.getAttribute("name")!=null)
		   {%>
		   
	   <div class="top_welcome">WELCOME,${name}</div>
	   <div class="top_log"><a class="one" href="Logout">Log out</div>
		 <%  }else{
		   %>
  
  <div class="top_log"><a class="one" href="login.jsp">Log in</div>
  <div class="top_signup"><a class="one" href="signup.jsp">Sign Up</a></div>
  <%} %>
  
   </div>
   </div>
   
	
	
 
 <div class="logo_div">
 <div class="logo"><img src="images/hp.png" width="100" height="90"/></div>
 <div class="logo_text">
 <div class="logo_text_top">Junk Yard</div>
 Advertise virtually anything</div>
 
 
<div class="nave_pati">
<a style="text-decoration:none" href="Home.jsp"><div class="nave_home">HOME</div></a>

<a style="text-decoration:none" href="about.jsp"><div class="nave_about">About</div></a>
<a style="text-decoration:none" href="contact.jsp"><div class="nave_contact">Contact</div></a>

<% if(session.getAttribute("name")!=null)
		   {%>

<a style="text-decoration:none" href="AdRedDetail.jsp"><div class="nave_post">Post Free Add</div></a>
<%}else
{
	%>
	
<a style="text-decoration:none" href="signup.jsp"><div class="nave_post">Post Free Add</div></a>

<%} %>
 </div>
 
 
     <div class="right_side_outter">
	<div class="follow">
    <div class="follow_text">Like Us...!</div>
    <div class="follow_sign"><a href="https://twitter.com/"><img src="images/twitter-icon.png" width="45" height="45" /></a> </div>
    <div class="follow_sign1"><a href="https://accounts.google.com/ServiceLogin?service=oz&passive=1209600&continue=https://plus.google.com/?gpsrc%3Dgplp0"><img src="images/google +.ico" width="45" height="45" /></a> </div> 								
    <div class="follow_sign2"><a href="https://www.facebook.com/"><img src="images/fb.png" width="40" height="40" /></a> </div>
    </div>
	
	
    <div class="cata_body">
  <div class="catagory_header1">
  <div class="cata_pic"><img src="images/cata2.png" width="40" height="40"/></div>
  <div class="cata_text">Category</div>
  </div>
  
  	
  	 <a href="GetData?param=Mobile" ><div class="home_cata_div">+ Mobiles</div></a>
	<a href="GetData?param=Computer"><div class="home_cata_div">+  Computer</div></a>
	<a href="GetData?param=Furniture"><div class="home_cata_div">+ Furniture</div></a>
	<a href="GetData?param=Vehicles"><div class="home_cata_div">+ Vehicles</div></a>
	
	<a href="GetData?param=Books"><div class="home_cata_div">+ Books</div></a>
	<a href="GetData?param=Accessories"><div class="home_cata_div">+ Clothing & Accessories</div></a>
	
	<a href="GetData?param=Sports"><div class="home_cata_div">+ Sports</div></a>
	<a href="GetData?param=Services"><div class="home_cata_div">+ Services</div></a>
	<a href="GetData?param=Jobs"><div class="home_cata_div">+ Jobs</div></a>
	<a href="GetData?param=Real Estate"><div class="home_cata_div">+ Real Estate</div></a>	
 
  </div>
    </div>
     <!--  right side clode-->
          
   <!-- slider end !-->
   
   
</a>
      

	   
 
  
	<div class="home_slider_back">
      <div class="wrapper">
    <div class="main">
      <div class="page_container">
        <div id="immersive_slider">
          <div class="slide" data-blurred="images/lap_blurr.jpg">
            <div class="content">
              <h2>Electronic & Computer</h2>
              <p>Alternatively referred to as a notebook, a laptop is a portable computer that with the same abilities as a desktop, but is small enough for easy mobility. Portable computers run off AC power or batteries, such as NiMH or Nicad packs, for a few hours.</p>
            </div>
            <div class="image">
                <img src="images/lap.jpg" alt="Slider 1">
                         </div>
          </div>
          
          
       <div class="slide" data-blurred="images/car_blur.jpg">
            <div class="content">
              <h2>Vehicles</h2>
              <p>
              A vehicle (from Latin: vehiculum[1]) is a mobile machine that transports passengers or cargo. Most often, vehicles are manufactured, such as wagons, bicycles, Motor vehicles (motorcycles, cars, trucks, buses, trains), watercraft (ships, boats), spacecraft and aircraft.</p>
            </div>
            <div class="image">
                <img src="images/car.jpg" height="250" alt="Slider 1">
                         </div>
          </div>
          
       <div class="slide" data-blurred="images/pets_blurr.jpg">
            <div class="content">
              <h2>Pets </h2>
              <p>A pet (or companion animal) is an animal kept primarily for a person's company or protection, as opposed to working animals, sport animals, livestock, and laboratory animals, which are kept primarily for performance, agricultural value, or research. The most popular pets are noted for their attractive appearances and their loyal or playful personalities.</p>
            </div>
            <div class="image">
                <img src="images/pets.jpg" alt="Slider 1" height="250" >
                         </div>
          </div>
          
    
          
       <div class="slide" data-blurred="images/books_blur.jpg">
            <div class="content">
              <h2>Books,CDs</h2>
              <p>A book is a set of written, printed, illustrated, or blank sheets, made of ink, paper, parchment, or other materials, usually fastened together to hinge at one side. A single sheet within a book is called a leaf, and each side of a leaf is called a page.</p>
            </div>
            <div class="image">
                <img src="images/books.jpg" alt="Slider 1" height="250" >
                         </div>
          </div>
          
          
          
       <div class="slide" data-blurred="images/clothing_blurr.jpg">
            <div class="content">
              <h2>Clothing & Accessories</h2>
              <p>Clothing is fiber and textile material worn on the body. The wearing of clothing is a feature of nearly all human societies. The amount and type of clothing worn is dependent on physical stature, gender, as well as social and geographic considerations.</p>
            </div>
            <div class="image">
                <img src="images/clothing.jpg" alt="Slider 1" height="250" >
                         </div>
          </div>
       
          
       <div class="slide" data-blurred="images/sports_blur.jpg">
            <div class="content">
              <h2>Sports & Health</h2>
              <p>Sport (or sports) is all forms of usually competitive physical activity which,[1] through casual or organised participation, aim to use, maintain or improve physical ability and skills while providing entertainment to participants, and in some cases, spectators.</p>
            </div>
            <div class="image">
                <img src="images/sports.jpg" alt="Slider 1" height="250" >
                         </div>
          </div>
          
          
       <div class="slide" data-blurred="images/service_blur.jpg">
            <div class="content">
              <h2>Services</h2>
              <p>A type of economic activity that is intangible, is not stored and does not result in ownership. A service is consumed at the point of sale. Services are one of the two key components of economics, the other being goods.</p>
            </div>
            <div class="image">
                <img src="images/service.jpg" alt="Slider 1" height="250" >
                         </div>
          </div>
          
          
       <div class="slide" data-blurred="images/jobs_blur.jpg">
            <div class="content">
              <h2>Jobs</h2>
              <p>A job is an activity, often regular, and often performed in exchange for payment. A person usually begins a job by becoming an employee, volunteering, or starting a business. The duration of a job may range from an hour (in the case of odd jobs) to a lifetime.</p>
            </div>
            <div class="image">
                <img src="images/jobs.jpg" alt="Slider 1" height="250" >
                         </div>
          </div>
    
       
       
       
       
       
          
        <div class="slide" data-blurred="images/mobile_blur.jpg">
            <div class="content">
              <h2>Mobile & Tablet</h2>
              <p>A mobile phone (also known as a cellular phone, cell phone, hand phone, or simply a phone) is a phone that can make and receive telephone calls over a radio link while moving around a wide geographic area.</p>
            </div>
            <div class="image">
              <img src="images/mobile.jpg" alt="Slider 1">
            </div>
          </div>
          <div class="slide" data-blurred="images/home_blur.jpg">
            <div class="content">
              <h2>Home  & Furniture</h2>
              <p>A home is a dwelling-place used as a permanent or semi-permanent residence for an individual, family, household or several families in a tribe. It is often a house, apartment, or other building, or alternatively a mobile home, houseboat, yurt or any other portable shelter.</p>
            </div>
            <div class="image">
              <img src="images/home.jpg" alt="Slider 1">
            </div>
          </div>
          
          <a href="#" class="is-prev">&laquo;</a>
          <a href="#" class="is-next">&raquo;</a>
        </div>
      </div>
  	</div>
  	<div class="benefits">
      <div class="page_container">

  	  </div>
  	</div>
  	<script type="text/javascript">
  	  $(document).ready( function() {
  	    $("#immersive_slider").immersive_slider({
  	      container: ".main"
  	    });
  	  });

    </script>
  </div>
  <script>

  	var _gaq=[['_setAccount','UA-11278966-1'],['_trackPageview']]; // Change UA-XXXXX-X to be your site's ID
  	(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
  	g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
  	s.parentNode.insertBefore(g,s)}(document,'script'));
  </script>

    </div>
	
	<div class="page_body">
    <div class="pagy_body_header1">Recommended Ads</div>
   
 
	<!-- full  database ====================================================== --> 


    <a class="two" href="largadd.php?id=<?php echo $data_show['id']?> && database=<?php echo $tmp;?> ">
<div class="adds_show">
    <div class="adds_show_pic"><img class="adds_show_pic_inner" src="<?php echo $src; ?>" width="200" height="170"/></div>
    <div class="adds_show_outer">
    <div class="adds_show_text">
    
    <div class="adds_show_name_two"><?php echo $data_show['product_name']; ?></div>
     <div class="adds_show_price"><?php echo $data_show['price']; ?></div>

    
    </div>
    
    </div> 
    </div>
    </a>
    
 
   </div>
   

<div class="nave_pati">
<a style="text-decoration:none" href=""><div class="nave_help">Help</div></a>
<a style="text-decoration:none" href=""><div class="nave_rule">Rule</div></a>
<a style="text-decoration:none" href="about.jsp"><div class="nave_about">About</div></a>
<a style="text-decoration:none" href="contact.jsp"><div class="nave_contact">Contact</div></a>
<a style="text-decoration:none" href=""><div class="nave_safely">Shop Safely</div></a>
<div class="footter_cri">Website developed by <a style="text-decoration:none" class="foot_cri" href="https://www.facebook.com/">Java Rapper</div>
 </div>

 
 




</body>
</html>