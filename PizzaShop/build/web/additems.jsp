    <%-- 
    Document   : additems
    Created on : 9 Nov, 2017, 5:57:14 PM
    Author     : Shreyas
--%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ page import="n.Cart"%>
<html>    
<head>
    <link rel="stylesheet" href="style.css">       	
<%! int crustprice=0;
    int vtopprice=0;
    int ntopprice=0;
    int pizzaprice=0;
    double totalprice;
    double totalamount=0;
    double finalamount=0;
    int i=0;  
    int count=0;
    //String Name;
    String pizzaname="";
    String crustname="";
    String[] vtoppings=null;
    String[] ntoppings=null;
    String pizzatype="";
    
    //boolean Paneer=false;
   // boolean Mushrooms=false;
    //boolean Olives=false;
    //boolean Jalapeno=false;
    //boolean Chillies=false;
    
    //boolean ChickenBBQ=false;
    //boolean Sausages=false;
    //boolean Bacon=false;
    //boolean Chunky=false;
    %>

<%-- ArrayList<Cart> list=(ArrayList<Cart>)session.getAttribute("list");--%>
    

<%--
    
pizzaprice=Integer.parseInt(session.getAttribute("pizzaprice").toString()); 
crustname=request.getParameter("crust");
vtoppings=request.getParameterValues("vegtop");
ntoppings=request.getParameterValues("nonvegtop");


--%>
    
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
                                        response.sendRedirect("register.jsp");
                                %>
				
                                <%} else {String fname=session.getAttribute("uf_name").toString();
                                      
                                   %>  
                                <li> <a href="useraccount.jsp">Welcome: <%=fname%></a> </li>
                                <li><a href='logout.jsp'>Logout</a></li>

                </ul>
          
        </div>
        </div>    
        <div id="cart">
             
           <div id="carttable">
               <form action="removepizza.jsp" method="post">
	 	<table id="ctable" cellspacing="0" style="text-align:center;">
	 		<tr>
	 		<th>PRODUCT</th>
	 		<th>PRICE</th>
	 		<th>VEG/NONVEG</th>
	 		<th>TOTAL</th>
                        <th>X</th>
                        
	 		</tr>
                            <%
                                
                                if(!Cart.list.isEmpty())
                                {
                                    int c=0;
                                for(Cart cart : Cart.list)
                            {
    %>
                        <tr>
                            <td><B><%=cart.getpizzaname()%></B><br><%=cart.getcrustname()%><br>
                                
                                
                                <%  if(cart.vtoppings!=null){
                                    for(int i=0;i<cart.vtoppings.length;i++)
                                        { 
                                    %>
                                    
                                    <%=cart.vtoppings[i]+", "%>
                                     
                                    <%
                                } 
                            }  
                            %>
                            
                            <%  if(cart.ntoppings!=null){
                                    for(int i=0;i<cart.ntoppings.length;i++)
                                        { 
                                    %>
                                    
                                    <%=cart.ntoppings[i]+", "%>
                                     
                                    <%
                                } 
                            }  
                            %>
                            </td>
                            
                            
                            <td><%=cart.getpizzaprice()%></td>
                            <td><%=cart.getpizzatype()%></td>
                            <td><%=cart.gettotalprice()%></td>
                            <td><input type="radio" name="<%=c%>" value="remove"></form></td>
  <% c++;}%>                         
                        </tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><center> <button style="padding-left:10px;" type="submit" id="btn-addtocart">Remove selected</button></center></td>
                        <br>
	 	</table>
               </form>
	 	</div>
        </form>
                     
            
            <div id="carttotal">
	 	 <div id="ctableheader">
                        CART TOTAL
                    </div>
                
                <table id="ctable">
                <tr>
                    <td><% count=Cart.list.size();%><B>TOTAL ITEMS IN CART:<%=count%></B></td>
                </tr>
                <%for(Cart cart : Cart.list){%>
                    <tr>
                        <td><%=cart.getpizzaname()%></td>
                        </tr>   
                            <%}%>
          
       <br> 
       </table>
        
        
	 	<hr>
                
                <table id="ctable">
                    
                <tr><td><b>Total Amount:</b></td>
                 <%
                     finalamount=0;
                     for(Cart cart : Cart.list)
                     {
                       finalamount+= cart.gettotalprice();
                    }
                   
                 
                    session.setAttribute("finalamount",finalamount);%>
                <td><%=finalamount%></td></tr>
                
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
else{
out.print("No items in your Cart");
}


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



