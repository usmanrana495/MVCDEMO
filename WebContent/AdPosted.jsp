<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<style>
.message{
	width:500px;
	height:270px;
	background:#FFF;
	border:4px double #CCC;
	margin:300px 0 200px 350px;

}
.btn_back_to{
		width:100px;
		height:100px;
		margin:30px 0 0 200px;
		float:left;
		color:#FFF;
		font-size:24px;
		font-style:oblique;
		padding:5px;

}
.icon{
 width:60px;
 height:60px;
 float:left;
 margin:15px;	
	
}
.text{
	width:400px;
 height:60px;
 float:left;
 font-size:24px;
 font-style:oblique;
 
 margin:15px 0 0 0px;;	
}
.isbn{
	width:290px;
	height:30px;
	
	background:#59FF59;
	border:4px double #0F0;
	border-radius:10px;
	float:left;
	color:#FFF;
	margin-left:20px;
	
}
.isbn_inner{
	padding:3px;
	float:left;
	background:#0F0;
	margin-left:5px;
	font-size:22px;
	font-weight:bold;
	font-style:oblique;
}




<div class="message">
<div class="icon"><img src="images/done.png" width="60" height="60" /></div>
<div class="text">Thanks,Your Add has confirmed. Add ISBN number sent to you through Email,</div>
 <div class="isbn">
 <span style="float:left; 
	padding:5px; font-size:18px; ">Your Add ISBN number:  </span>
    <div class="isbn_inner"> <b>${id} </div>
    </div>
 <div class="btn_back_to"><a href="Home.jsp"><img src="images/home_btn.png" width="100" height="100"/></a></div>
</div><!-- message -->






</body>
</html>