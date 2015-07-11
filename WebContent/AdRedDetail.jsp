<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<link rel="stylesheet" href="css/reg2.css"/>
<style>

.reg2_white{
	width:650px;
	height:1200px;
	margin:200px 0 20px 280px;
	background:#FFF;
	border:1px solid #CCC;
	border-radius:10px;
	
}



.reg2_textfield{
	font-size:20px;
	width:260px;
	height:40px;
	background:#EEE;
	padding:5px;
	float:left;
	font-style:oblique;
	border-radius:10px;
	margin-right:40px;
	margin-bottom:20px;
	border-top:2px solid #CCC;
	border-left:2px solid #CCC;;
	
}
</style>


<div class="reg2_back">
<div class="reg2_white">
<div class="reg_top_header">PLace your Free Add </div>
<div class="reg_step1"><img src="images/step2.gif" width="100%"/></div>
 <div class="reg2_photo">
 
<div class="reg_photo_border">
<div class="reg_photo_header">* You can choose multiply images for your Add</div>
<div align="center" style="width:360px; margin-top:3px;
float:left; padding-left:30px; margin-left:50px; height:30px; padding-top:20px;  border:dashed 2px #999999;">
  <form action="AddData" method="post" id="pic_form" enctype="multipart/form-data">
    <input type="file" id="file" name="photo" multiple accept="image/*" />
   
   
</div>




</div>
 </div>  <!-- photo finish !-->
 
<div class="reg2_city_select">

<div class="reg_1_select_list">
    <label for="select">Choose Catagory: </label>
    <select name="cate" size="1" class="reg_1_select_list_item" id="select">
     <option></option>
     <option value="Mobile">Mobile &amp; Tablet</option>
        <option value="Clothing">Clothing &amp; Accessories</option>
        <option value="Sports">Sports &amp; Health</option>
        <option value="Computer"> Computers &amp; Electronics</option>
       
        <option value="Real Estate">Real Estate</option>
        <option value="Vehicles">Vehicles</option>
        
        <option value="Services">Service</option>
        <option value="Furniture"> Furniture</option>
        <option value="Books">Books, CDs</option>
        <option value="Jobs">Jobs</option>
    
    </select>
   </div>
   
    	  <label for="select">Choose a City: </label>
	   	<select class="reg_select_cata" name="item"  size="1"  >
         <option value="Faisalabad">Faisalabad</option>
        <option value="Lahore">Lahore</option>
        <option value="Islamabad">Islamabad</option>
        <option value="karachi"> Karachi</option>
        <option value="Multan">Multan</option>
        <option value="peshwar">Peshwar</option>
        <option value="Muree">Murree</option>
        <option value="Arifwala">Arifwala</option>
       
        
        <option value="Sawat">Sawat</option>
      </select>
      
   
</div> <!-- select city !-->

<div class="reg2_part2_border"></div>

<div class="reg_step1"><img src="images/step3.gif" width="100%"/></div>

  <div class="reg2_info">
<div class="reg_photo_header">* Product info</div>

     <input class="reg2_textfield2" type="text" name="title" id="textfield" placeholder="Title" />
      <input class="reg2_textfield2" type="number" name="price" id="textfield" placeholder="Price" />
      
      <input class="reg2_textfield2" type="number" name="phonenumber" id="textfield" placeholder="Phone Number" />
      <input class="reg2_textfield2" type="text" name="state" id="textfield" placeholder="State" />
      <input class="reg2_textfield2" type="text" name="zip" id="textfield" placeholder="Postal code" />
      
        
      
       <textarea class="reg2_textfield2_des" name="address" id="textfield" placeholder="Enter your home or office Adress" ></textarea>
      
      
      <textarea class="reg2_textfield2_des" name="des" id="textarea" placeholder="Please Add your Product description here" ></textarea>
      
    <input class="reg_button" type="submit" name="sub" id="button" value="Submit"  />   
    </form>
  </div>


</div> <!-- reg2 black !-->





</body>
</html>