<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login in</title>
</head>
<body>

<link rel="stylesheet" href="css/fun.css"/>
<!--//for sticky header1 start-->

   <style>	
   
      <script>
function validateForm() {
    var x = document.forms["myForm"]["fname"].value;
    if (x == null || x == "") {
        alert("Name must be filled out");
        return false;
    }
}
</script>

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
        <script src="jquery-1.4.4.min.js" type="text/javascript"></script>

    <script src="jsCarousel-2.0.0.js" type="text/javascript"></script>

    <link href="jsCarousel-2.0.0.css" rel="stylesheet" type="text/css" />
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
  <script type="text/javascript" src="jquery.immersive-slider.js"></script>
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
	</style>

   
 
   <header1>
    <div class=top>
  <div class="top_welcome"></div>
  <div class="top_log"><a class="one" href="#"></div>
  <div class="top_signup"><a class="one" href="#"></a></div>
   </div>
   </div>

   </div>
   </div>
	</header1>  <!--headres finish-->

 <div class="logo_div">
 <div class="logo"><img src="images/hp.png" width="100" height="90"/></div>
 <div class="logo_text">
 <div class="logo_text_top">Reliable Sales</div>
 Advertise virtually anything</div>
 

<div class="nave_pati">
<a style="text-decoration:none" href="home.jsp"><div class="nave_home"></div></a>
<a style="text-decoration:none" href="search.php"><div class="nave_search"></div></a>
<a style="text-decoration:none" href="about.php"><div class="nave_about"></div></a>
<a style="text-decoration:none" href="contact.php"><div class="nave_contact"></div></a>

 </div>

  <div class="page_body">

    <div class="pagy_body_header1"></div>
<br><br>
 <div class="pagy_body_header1">LOG IN </div>
<br><br>

<form action="login" method="post">

 UserName:           <input  type="text" name="name" id="textfield" placeholder="Username"  required/><br><br>
 Password:           <input type="password" name="password" id="textfield" placeholder="Password"  required/><br><br>
<input type="submit" value="Log IN"> <a href="signup.jsp">New User Click here</a>
</form>   

    
 
     
   </div>
   


<div class="down_pati">

<a style="text-decoration:none" href="help.php"><div class="nave_help">Help</div></a>
<a style="text-decoration:none" href="rule.php"><div class="nave_rule">Rule</div></a>
<a style="text-decoration:none" href="about.php"><div class="nave_about">About</div></a>
<a style="text-decoration:none" href="contact.php"><div class="nave_contact">Contact</div></a>
<a style="text-decoration:none" href="safly.php"><div class="nave_safely">Shop Safely</div></a>
<div class="footter_cri">Website developed by <a style="text-decoration:none" class="foot_cri" href="https://www.facebook.com/saqib.hanif.988">java Rapper</div>

 </div>






</body>
</html>