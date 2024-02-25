<%-- 
    Document   : cartitems.jsp
    Created on : 14 Nov, 2017, 2:19:51 PM
    Author     : Shreyas
--%>

<%@ page import="java.util.*"%>
<%@page import="n.Cart"%>
<%@ page import="java.sql.*"%>
<%!double finalamount;%>
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
<%}%>
                </ul>
                  </div>
        </div>   
                <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
        String query ="select * from cart where user_name='"+session.getAttribute("user_name")+"'";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();
                                while(rs.next()){%>
        <div id="cart">
           <div id="carttable">
	 	<table id="ctable" cellspacing="0" style="text-align:center;">
	 		<tr>
	 		<th>PRODUCT</th>
	 		<th>PRICE</th>
	 		<th>VEG/NONVEG</th>
	 		<th>TOTAL</th>
                        
	 		</tr>
                        <tr>
                            <td><B><%=rs.getString(2)%></B><br><%=rs.getString(10)%><br>
                                <%=rs.getString(8)%><%=rs.getString(9)%>
                                </td>
                            
                            
                            <td><%=rs.getString(5)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(5)%></td>
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
                            <td><%=rs.getString(2)%></td>
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
                    <% double totalamount=Integer.parseInt(rs.getString(5));%>
                    <% finalamount+=totalamount;%>
                <td> <%=finalamount%> </td></tr>
                
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
                                    <%}
                                con.close();
                                 }
                    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
        %>
            </body>
</html>
