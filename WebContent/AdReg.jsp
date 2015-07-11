<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




<link rel="stylesheet" href="css/reg.css"/>
<style>	


</style>
     
<div class="reg_1_back">
<div class="reg_1_white">
<div class="reg_top_header">Place You Free Add Today</div>
<div class="reg_step1"><img src="images/step1.gif" width="100%"/></div>
<div class="reg_1_rule">

<div class="reg_quick">Quick rules</div>
<div  class="reg_1_rule_writen">

		<ul>
    <li>* Keep a brief title and full description of the item</li>
    <li>* Add photos to your ad</li>
    <li>* Put a reasonable price</li>
    <li>* Do not post the same ad repeatedly</li>
    <li>* Do not include link to the site in the text and photo ads</li>
    <li>* Do not sell prohibited goods</li>
    </ul>
  
</div> <!-- reg_1_rule .end -->


</div><!-- rule back .end -->

<div class="reg_1_select_cata">

<div class="reg_1_select_list">
  <form id="catagory" name="catagory" method="post" action="AdRedDetail.jsp">
    <label for="select">Choose Catagory: </label>
    <select name="cate" size="1" class="reg_1_select_list_item" id="select">
     <option></option>
     <option value="mobile">Mobile &amp; Tablet</option>
        <option value="clothing">Clothing &amp; Accessories</option>
        <option value="sports">Sports &amp; Health</option>
        <option value="computer"> Computers &amp; Electronics</option>
        <option value="kids">Kids &amp; Baby</option>
        <option value="estate">Real Estate</option>
        <option value="vehicles">Vehicles</option>
        <option value="pets">Pets</option>
        <option value="service">Service</option>
        <option value="home">Home &amp; Furniture</option>
        <option value="books">Books, CDs</option>
        <option value="jobs">Jobs</option>
    
    </select>
    </div>
    
    <div class="reg_1_butoon">
      <input type="submit" class="reg_1_button_inner" name="btn_1" id="button" value="Submit" />
    </div>
    
  </form>

</div>
</div>

</div>



</body>
</html>
