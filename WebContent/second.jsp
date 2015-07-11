<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>2nd page</title>
</head>
<body>


 
 


<link rel="stylesheet" href="css/spec.css"/>
<style type="text/css">
.spec_add_show{
	width:800px;
	height:150px;
	float:left;
	margin-top:10px;
	border:1px solid #CCC;
	border-radius:10px;
}
.spec_add_show:hover{
	box-shadow:10px 10px 10px #CCC;
	background:#EEE;
	
	
}
.spec_add_show_pic{
	width:170px;
	height:150px;
	float:left;


}


</style>


<div class="spec_back">
<div class="spec_cata_name">

<div class="about_website_Pic"><img src="images/arrow.png" width="40" height="40" /></div>  
<div class="about_website_text"> 

</div></div></div>
<div class="spec_add_body">
<div class="spec_slider">Recently Post Adds</div>





<c:forEach items="${list}" var="record">
<div class="spec_add_show">

<div class="spec_add_show_pic"><img src="" width="170" height="150"/></div>   
<div class="spec_add_show_title">
<div class="spec_add_title_name"><a class="spec_one" href="Detail?param=${record.id}">${record.title}</a></div>
<div class="spec_add_title_des">${record.des}</div>
<div class="spec_add_title_time">${record.date}</div>

</div>



<!-- title back.end -->
  <div class="spec_price">Rs: ${record.price }</div>
<div  class="spec_price_tag"><img src="images/price-tag-head.png" height="30"/></div>
</div> <!-- add show .end -->

</c:forEach>


<!-- while.endl; -->

<div class="spec_emoty"></div> <!-- empty class for border -->
</div> <!-- add body .emd -->

</div>  <!-- back.end -->








</body>
</html>