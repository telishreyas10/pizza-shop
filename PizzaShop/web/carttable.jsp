<%-- 
    Document   : carttable
    Created on : 4 Nov, 2017, 8:25:24 AM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--@ page import="p.Cart"--%>
<%--@ page import="p.Pizza"--%>


<%! int crustprice=0;
    int vtopprice=0;
    int ntopprice=0;
    int pizzaprice=0;
    double total_price;
    int i;   
    //String Name;
    String pizzaname;
    String crustname;
    String[] vtoppings;
    String[] ntoppings;
    
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
    
 
<html>
<head>
	<link rel="stylesheet" href="style.css">

</head>
<body>
    
    
<% pizzaname=(String)session.getAttribute("pizzaname");%>    
<% pizzaprice=Integer.parseInt(session.getAttribute("pizzaprice").toString());%> 
<%crustname=request.getParameter("crust");%> 



 <%--Pizza p=new Pizza(pizzaname,crustname,Paneer,Mushrooms,Olives,Jalapeno,Chillies,ChickenBBQ,Sausages,Bacon,Chunky);
  Cart.pizzacart.add(p);
  Cart.totalamount=Cart.totalamount+p.pizzaprice;
--%>
                                  
                                   
        <div id="cartnav">
            <div id="nav">
                  <a href="index.jsp"><img src="images\pizza.jpg" id="navimg"></a>
            <ul id="nav1">
                <%if ((session.getAttribute("user_name") == null) || (session.getAttribute("user_name") == ""))  {
                                        response.sendRedirect("register.jsp");
                                %>
				
                                <%} else {
                                   %>  
                                   <li><a></a><%=session.getAttribute("user_name")%><a href='logout.jsp'>Logout</a></li>
<%
    }
%>
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
                        
                         <%--<%=session.getAttribute("pizzaname")%>--%>
     <%-- for(Pizza pizza:Cart.pizzacart)
        {
                                --%>
                                <tr>
                            <td><%--=pizza.pizzaname--%><%=pizzaname%></td>
                            <td><%--=pizza.pizzaprice--%><%=pizzaprice%></td>
                            <td><input type="text" name="qty" size="1"></td>
                            <td><%--=pizza.pizzaprice--%><%=pizzaprice%></td>
                           <%--
            } 
--%>
                             <%--<%=session.getAttribute("pizzaname")%>--%>
                            
                                <%--<%=session.getAttribute("pizzaprice")%>--%>
                            
                            <%--<% pizzaprice=Integer.parseInt(session.getAttribute("pizzaprice").toString());%>
                                <%=session.getAttribute("pizzaprice")%>--%>
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
                
        
         
           <% if(crustname.equals("Pan Tossed")){
           
            crustprice=0;
        }
        else if(crustname.equals("Cheese Burst")){
            
            crustprice=40;
        }
        else if(crustname.equals("Italian Crust")){
            
            crustprice=60;
        }
        else if(crustname.equals("") && crustname.equals(null)){
            out.println("Please Choose a crust");
        }
        %>
        
        <%-- for(Pizza pizza:Cart.pizzacart)
        {
                                --%>
                                <tr>
                            <td><%--=pizza.crustname--%><%=crustname%></td>
                            <td><%=crustprice%></td>   
                            
                           <%--
            } 
--%>
                                </tr>       

                
        <tr>
            <td><b>Veg Toppings:</b></td>
        </tr>
        
       <% vtoppings=request.getParameterValues("vegtop");%>
       <% if(vtoppings!=null){ %>
       <%  for(int i=0;i<vtoppings.length;i++)
        {
            int vtop=vtoppings.length;
            vtopprice= vtop*40;
        %>

        
        <%-- for(Pizza pizza:Cart.pizzacart)
        {
        --%>
        <tr>
                <%--=pizza.Paneer%><%=pizza.Mushrooms--%>
            <td><%=vtoppings[i]%></td>
            <td><%=40%></td>
                    
                    <%--} --%>
        
       <%} 
}
else{
vtopprice=0;
}
%>
            </tr>
<%-- int vtop=vtoppings.length;--%>
        <%-- vtopprice= vtop*40;--%>
        
     <%--<%= ntopprice%></td>--%>
        
     <tr>
         <td><b>NonVeg Toppings:</b></td>
                </tr>
     
     
 
      <% ntoppings=request.getParameterValues("nonvegtop");%> 
        <% if(ntoppings!=null){%>
        <%  for(int i=0;i<ntoppings.length;i++)
        {
       %>
       
       <% int ntop=ntoppings.length;%>
        <% ntopprice= ntop*60;%>
        <%-- for(Pizza pizza:Cart.pizzacart)
        {
        --%>
            <tr>
                <td><%--=pizza.ChickenBBQ--%><%=ntoppings[i]%></td>
                <td><%=60%></td>
                                    <%--} --%>

         <%}
          
}
else{
ntopprice=0;
}
%>
        </tr><%--<%=ntoppings[i]%>--%>
       <br>        
        <%-- int ntop=ntoppings.length;--%>
        <%-- ntopprice= ntop*60;--%>
          
        
        <%--<%= ntopprice%>--%>
        
                </table>
        
        
	 	<hr>
                
                <table id="ctable">
                <tr><td><b>Total Amount:</b></td>
        <%total_price=pizzaprice+crustprice+vtopprice+ntopprice;%>
                <td>
                  
                    <%--= Cart.totalamount--%>
                    <%-- <%total_price= Cart.totalamount;%>
                     <%total_price=total_price+vtopprice+ntopprice;%> 
                     <%=total_price%>--%>
                    <%=total_price%></td></tr>
                
	 	
        </table>
            </div>
                    
               <div id="cartbutton">
	 	<input type="submit" id="btn-add" value="Checkout">
	 	</div> 
  
            </div>
    
</body>
</html>
