

<%-- 
    Document   : index
    Created on : 16 Oct, 2017, 5:42:56 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="n.Cart"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" type="text/css" href="F:\SEM 3\Java\Project\IMPHTML\font-awesome-4.7.0\css\font-awesome.min.css">
        <style>
.marquee_container{
	margin-left: 15%;
	width: auto;
	height: 7%;
	color: black;
	background-color: rgb(51,51,51);
}

.marquee_container2{
	float: left;
	width: 15%;
	height: 7%;
	color: red;
	background-color: #b71c1c;
	
}

.marquee_1{
	font-family: 'Montserrat', sans-serif;
	color: white;
	padding-top: 7.5%;
	margin-bottom: 45px;
	margin-top: 0px;
}

.marquee_text{
	font-family: 'Montserrat', sans-serif;
	color: white;
	
}

.menu_container{
	width: 100%;
	
	background-color: #A9A9A9;

}

.logo_container{
	float: left;
}

.menu-1{
margin-top: 3.5%;
}

.imp-links{
	color: #696969;
	text-decoration: none;
}

.imp-links2{
	color: white;
	text-decoration: none;
	text-align: center;
	padding-top: 1%;
	font-family: 'Montserrat', sans-serif;
}

.main-menu{
	background-color: rgb(51,51,51);
	width: 100%; 
	height: 7%;
	margin-top: 5%;

}

</style>
</head>
<body>
	<div class="main">
		<div id="nav">
			<a href="#"><img src="images\pizza.jpg" id="navimg"></a>
			<ul id="nav1">
				
				<li><a href="#">Slices Pizzeria</a></li>
				<li><a href="#category-main-aboutus">About us</a></li>
                                <li><a href="#contact">Contact</a></li>
				<li><i class="fa fa-sign-in" aria-hidden="true"></i></li>
                                
                                <%
                                    if ((session.getAttribute("user_name") == null) || (session.getAttribute("user_name") == ""))  
                                    {
                                %>
				<li><a href="login.jsp">Login</a></li>
                                <li><a href="register.jsp">Register</a></li>
                                <%} 
                                    else 
                                        { 
                                        String fname=session.getAttribute("uf_name").toString();
                                      
                                   %>  
                                <li> <a href="useraccount.jsp" style="font-size:16px;"> Welcome:<%=fname%></a> </li>
                                <li><a href='logout.jsp'>Logout</a></li>
                               <li> <a href="additems.jsp"><img src="images/cart.png"> <%int count = Cart.list.size();%><%=count%></a></li>
<%
    }
%>
				<%--<li><a href="register.jsp">Register</a></li>--%>
			</ul>
		</div>
		<div id="outer-slider"> 
			<div id="slider">
				<figure>
                                    <img src="images\banner3.jpg">
					<img src="images\banner5.jpg">	
					<img src="images\banner1.jpg">
					<img src="images\banner2.jpg">
					<img src="images\banner4.jpg">
				</figure>
			</div>
		</div>
                        <div id="category-main-aboutus">
                <div id="category">
                    About Us
                </div>
               <div id="category-main-aboutus">
                   <br>
                   <br>
                   <p id="category-main-aboutus">The secret to success is much like the secret to making a better pizza - the more you put into it, the more you get out of it. Our pizza family is as hungry for perfection today as we were when we first opened our doors. And we're driven to be the best at making innovative new products and recipes.
<br><br>
                       Quality is at our core. It's the foundation we started with, from the first pizza that was made.<br><br>

                   Our ingredients matter. Whether it's our signature sauce, toppings, our original fresh dough, or even the box itself, we invest in our ingredients to ensure that we always give you the finest quality pizza.For you, it's not just a better pizza. It's a family gathering, memorable birthday, work celebration or simply a great meal. It's our goal to make sure you always have the best ingredients for every occasion.<br>
                   
                </div>
                        </div>
                        
                        
                        <div id="category">
		ORDER ONLINE:
		</div>
		
              <div id="category-main" >
			<div id="category-1">
                            <a href="veg.jsp"><img src="images\veg.jpg"></a>
                            <div style="position:absolute;font-size:30px;padding-left:120px;cursor:auto;font-family:georgia;"><br>VEG</div>
                       </div>
                    <div id="category-2">
			<img src="images\p1p1.jpg">
			</div>
			<div id="category-3">
			<a href="nonveg.jsp"><img src="images\nonveg.jpg"></a>
                        <div style="position:absolute;font-size:30px;padding-left:80px;cursor:auto;font-family:georgia;"><br>NON VEG</div>
                       </div>
			</div>
                     <div style="height:200px; margin-top: 450px;">
                         
                         <div id="category">OUR LOCATION</div>
                         <br>
                         
                         <div class="map" style="margin-top: 4%;">
                <section id="testimonials">
                    <center>
                        <div style="width: 100%"><iframe width="100%" height="600" src="https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;q=Pizza%20Supreme%2C%20Shop%20Number%203%2C%20Shree%20Sai%20Park%20Society%2C%20Meenatai%20Thakrey%20Chowk%2C%20Near%20Nokia%20Care%2C%20Azad%20Nagar%2C%20Thane%20West%2C%20Thane%2C%20Maharashtra%20400601+(My%20Business%20Name)&amp;ie=UTF8&amp;t=&amp;z=20&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"><a href="https://www.maps.ie/create-google-map/">Google map generator</a></iframe></div><br />
                    </center>
                </section> <!-- end testimonials section --> 
            </div>
                         <div id="contact">
                       <div id="category-main-aboutus">
                <div id="category">
                    Contact Us
                </div>
               <div id="category-main-aboutus">
                   <br>
                   
                   <p><b>Contact nos:</b></p>
                   <p>022-25887754</p>
                   <p>+91-9878765423</p>
                   <br>
                   <p>
                       <b> Email id: </b>
                       slicespizzeria@gmail.com
                   </p>
                 
                   <br>
                   <p>
                       <b>
                           Address:
                       </b>
                       Shop no 4&5, Galaxy Arcade, Castle Mill Junction, Thane West. Pin 400601.
                   </p>
                   
                </div>
                        </div>
                         </div>
                         
                       
                       
                         <div style="background:red;height:150px;margin-top: 20px;float:bottom;">
                             <p><a style='color: white;font-size: 20px;float:right;' href="admin.jsp">
                                     <br><br><br><br><br> Admin &nbsp;  ©Copyright 2017-2018. Slices Pizzeria Pvt.Ltd.</a></p>
                         </div>
                    </div>
		 	 
                </div>
              
</body>
</html>

