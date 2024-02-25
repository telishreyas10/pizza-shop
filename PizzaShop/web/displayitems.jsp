<%-- 
    Document   : displayitems.jsp
    Created on : 9 Nov, 2017, 6:07:17 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="n.Cart"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="style.css">

</head>
<body>
<%!String count;
int c=0; %> 
<% 
    if(session.getAttribute("list")!=null){
    ArrayList<Cart> list=(ArrayList<Cart>)session.getAttribute("list");   
    c=list.size();
    if(c>=1){
        response.sendRedirect("additems.jsp");
    }
    }
    
%>
    <div id="cartnav">
            <div id="nav">
                  <a href="index.jsp"><img src="images\pizza.jpg" id="navimg"></a>
            <ul id="nav1">
                </ul>
          
        </div>
        </div>     
        <div id="cart">
           <div id="carttable">
	 	<table id="ctable" cellspacing="0" style="text-align:center;">
	 		<tr>
	 		<th>PRODUCT</th>
	 		<th>PRICE</th>
	 		<th>QTY</th>
	 		<th>TOTAL</th>
	 		</tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            
                        </tr>
	 	</table>
	 	</div>
            
            <div id="carttotal">
	 	<table id="ctable">
                    <div id="ctableheader">
                        CART TOTAL
                    </div>
                <tr>
                    <td><b>Crust:</b></td>
                </tr>
                <tr>
                            <td></td>
                            <td></td>
                            </tr>       

                
        <tr>
            <td><b>Veg Toppings:</b></td>
        </tr>
 <tr>
              
            <td></td>
            <td></td>
</tr>
<tr>
         <td><b>NonVeg Toppings:</b></td>
                </tr>
                <tr>
                <td></td>
                <td></td>
                </tr>
       <br> 
       </table>
        
        
	 	<hr>
                
                <table id="ctable">
                <tr><td><b>Total Amount:</b></td>
                    <td>
                        </td></tr>
                </table>
            </div>
                    
               <div id="cartbutton">
	 	<input type="submit" id="btn-add" value="Checkout">
	 	</div> 
  
            </div>
  
</body>
</html>
