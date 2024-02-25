    <%-- 
    Document   : additems
    Created on : 9 Nov, 2017, 5:57:14 PM
    Author     : Shreyas
--%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@page import="n.Cart"%>
<html>    
<head>
    <link rel="stylesheet" href="style.css">       	

</head>
<body>
    <div id="cartnav">
            <div id="nav">
                  <a href="index.jsp"><img src="images\pizza.jpg" id="navimg"></a>
            <ul id="nav1">
                <li><a></a></li>
		<li><a ></a></li>
		<li><a ></a></li>
		<li><a ></a></li>
                <%
                                    if ((session.getAttribute("user_name") == null) || (session.getAttribute("user_name") == ""))  {
                                %>
				
                                <%} else {
                                   %>  
                                   <li><a></a><%=session.getAttribute("user_name")%><a href='logout.jsp'>Logout</a></li>

                </ul>
          
        </div>
        </div>     
        <div id="cart">
           <div id="carttable">
	 	<table id="ctable" cellspacing="0" style="text-align:center;">
	 		<tr>
	 		<th>PRODUCT</th>
	 		<th>PRICE</th>
	 		<th>VEG/NONVEG</th>
	 		<th>TOTAL</th>
                        <th></th>
	 		</tr>
                           
                        <tr>
                            <td><B><%=session.getAttribute("getpizzaname")%></B><br><%=session.getAttribute("getcrustname")%><br>
                               <%=session.getAttribute("getvtoppings")%>
                               <%=session.getAttribute("getntoppings")%>
                            </td>
                            
                            
                            <td><%=session.getAttribute("getpizzaprice")%></td>
                            <td><%=session.getAttribute("getpizzatype")%></td>
                            <td><%=session.getAttribute("getpizzaprice")%></td>
                            
                          
                        </tr><br>
	 	</table>
	 	</div>
            
            <div id="carttotal">
	 	<table id="ctable">
                    <div id="ctableheader">
                        CART TOTAL
                    </div>
                <tr>
                    <td>
                         <B>TOTAL ITEMS IN CART:<%=session.getAttribute("count")%></B></td>
                </tr>
                
        <br>
        
                <tr>
                            <td><%=session.getAttribute("getpizzaname")%></td>
                            <td></td>
                            </tr>   
                           
<tr>
            <td><b></b></td>
        </tr>
       
 <tr>
              
            <td></td>
            <td></td>
</tr>
      


<tr>
   
         <td><b></b></td>
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
                 
                 
                <td><%=session.getAttribute("gettotalamount")%></td></tr>
                
                </table>
                
            </div>
                  
               <div id="cartbutton">
                   <div style="float:left;">
                       <form action="index.jsp"> <button type="submit" id="btn-addtocart" action="index.jsp">ADD MORE</button></form> 
                   </div>
                       <div style="float:right;">
                           <form action="checkout.jsp" method="POST">
                           <input type="submit" id="btn-addtocart" value="CHECKOUT"> </form>
                                      
                       </div>
	 	</div> 
       
            </div>
    <%
    }
%>
</body>
</html>
<%--for(Cart cart : list){
%>
<br><br>
<%=cart.getpizzaname()%><br>
<%=cart.getpizzaprice()%><br>
<%=cart.getcrustname()%><br>
<%=cart.getvtoppings()%><%=cart.getvtopprice()%><br>
<%=cart.getntoppings()%><%=cart.getntopprice()%><br>
   <br><%=cart.gettotalprice()%><br>
   
 <%}
--%>



