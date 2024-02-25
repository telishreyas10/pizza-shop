    <%-- 
    Document   : placeorder.jsp
    Created on : 14 Nov, 2017, 6:10:29 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@page import="n.Cart"%>
<%@ page import="java.sql.*"%>

<%
 	Random randomGenerator = new Random();
	int randomInt = randomGenerator.nextInt(1000000);
 %>
<%! double finalamount=0;
    double deliverycharges=35;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
         <meta name="GENERATOR" content="Evrsoft First Page">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="style.css">
       
    </head>
    <body>
        <div id="nav">
                  <a href="index.jsp"><img src="images\pizza.jpg" id="navimg"></a>
            <ul id="nav1">
                </ul>
          
        </div>
        <div>
            
           
           
                 
        <div style="float:left;margin-left:60px;">
        <div style=" height:100px;max-width:100%;"><br><br> <p style="font-size: 20px;padding-left:40px;font-family: georgia;text-decoration: underline #EF0022;">Review Your Order.</p><br>
    <p style="padding-left:40px;font-family: arial;">Review your order before placing.
        </div><br><br>
        <div style="height:250px;width:800px;margin-left:40px;border-radius: 3px;border-width: 0.9px;border-style: solid;border-color: #CFCECE;">
            <div style="float: left;width:40%;">
                <p style="padding-left:50px;padding-top:30px;font-size:19px;"><B>Deliver Address:</B></p><br>
            <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from user_info where u_uname='"+session.getAttribute("user_name")+"'";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next()){
                                %>
                                <B style="font-size:19px;padding:50px;"><%=rs.getString(1)%>&nbsp;<%=rs.getString(2)%></B>
                                <p style="padding: 50px;"> <%=rs.getString(6)%></p> 
                               
                               <%} con.close();%>
                                <% }
                    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
   %>
            </div>
            <div style="float:right;">
                               
            </div>
        </div><br>
        
        <div style="height:350px;width:800px;margin-left:40px;border-radius: 3px;border-width: 0.9px;">
            <div style="height:20%;width:800px;margin-left:0px;border-radius: 3px;border-width: 0.9px;border-style: solid;border-color: #CFCECE;background:">
                <p style="padding-left:50px;padding-top:30px;font-size:19px;"><B>Your Order:</B></p></div>
                <div style="height:90%;width:800px;margin-left:0px;border-radius: 3px;border-width: 0.9px;border-style: solid;border-color: #CFCECE;position: static;"> 
                    
                    <%for(Cart cart : Cart.list)
                            {
    %>
            <p style="padding-left:50px;padding-top:30px;font-size:15px;"></p>

            <B><li style="padding-left: 50px;"><%=cart.getpizzaname()%></B><br>
                 <%=cart.getcrustname()%><br>
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
                                    
                                    <%=cart.ntoppings[i]+","%>
                                    <%
                                } 
                            }  
                            %>
                           
<%}%>
                </div>
                 
        </div>
        </div> 
            <div style="float:right;">
            <div style="height:250px;width:300px;margin-top:130px;margin-right:100px;padding-left:100px;">
                <div style="height:70%;width:300px;border-radius: 3px;border-width: 0.9px;border-style: solid;border-color: #CFCECE;margin-right:90px;"><br>
                    
                    <table>
                        <tr><td><p style="padding-left:20px;font-size:20px;"><B>Order Summary:</B></p></td></tr>
                        <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                        <tr><td><p style="padding-left:20px;font-size:18px;">Items:</p><br></td>
                            <td><p style="padding-left:20px;font-size:18px;">₹<%=session.getAttribute("finalamount")%></p><br></td>
                        </tr>
                        <%  finalamount=Double.parseDouble(session.getAttribute("finalamount").toString());
                               
                            %>
                         <tr><td><p style="padding-left:20px;font-size:18px;">Deliver Charges:</p><br></td>
                             <td><p style="padding-left:20px;font-size:18px;">₹<%=deliverycharges%></p><br></td></tr>
                         <%finalamount+=deliverycharges;%>
                        
                         <tr><td><p style="padding-left:20px;font-size:18px;color:red"><B>Order Total:</B></p><br></td>
                             <td><p style="padding-left:20px;font-size:18px;color:red"><B>₹<%=finalamount%></B></p><br></td></tr>
                    </table> 
                   
                </div>
                <div style="height:30%;width:300px;border-radius: 3px;border-width: 0.9px;border-style: solid;border-color: #CFCECE;margin-right: 130px;">
                   
                    <form action="end.jsp" method="POST"> <input type="submit" value="Pay via COD" id="btn-addtocart" style='float:left'>
                    </form>
                    
                     <form method="POST" name="redirect" action="PaytmRequest.jsp">
                         <input type ="hidden" id="ORDER_ID" tabindex="1" maxlength="20" size="20"
						name="ORDER_ID" autocomplete="off"
						value="ORDS_<%= randomInt %>">
                    <input type ="hidden" id="CUST_ID" tabindex="2" maxlength="30" size="12" name="CUST_ID" autocomplete="off" value="CUST001">
                    <input type ="hidden" id="CHANNEL_ID" tabindex="4" maxlength="12"
						size="12" name="CHANNEL_ID" autocomplete="off" value="WEB">
                    <input type="hidden" id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail"></td>
                    <input type ="hidden" title="TXN_AMOUNT" tabindex="10"
						type="text" name="TXN_AMOUNT"
						value="<%=finalamount%>">
                        <input type="submit" value="Pay via Paytm" id="btn-addtocart">
                        </form>
                    
                </div>
        </div>
            </div>
                    
                    
                    
                    
                    </div>
    </body>
</html>
