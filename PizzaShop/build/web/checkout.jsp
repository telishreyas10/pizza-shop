<%-- 
    Document   : checkout
    Created on : 10 Nov, 2017, 4:34:32 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@page import="n.Cart"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>


<%! int count;
    String username;
    String pizzaname;
    int pizzaprice;
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <%--
            username=(String)session.getAttribute("user_name");
            for(Cart cart : list){
            pizzaname=cart.getpizzaname();
            pizzaprice=cart.getpizzaprice();
             
            
            try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    String query = "Insert into cart(user_name,pizza_name,pizza_price) values(?,?,?)";
    PreparedStatement ps=con.prepareStatement(query);
    ps.setString(1,username);
    ps.setString(2,pizzaname);
    ps.setInt(3,pizzaprice);
    ps.executeUpdate();
     con.close();
     }
                    catch(Exception e)
   {
        
    }
            }           
       --%>
        
        
        
        <%-- count=list.size();%>
        <%=count%>
        Your Orders:<br>
        <%for(Cart cart : list){%>
        <%=cart.getpizzaname()%><br>
        <%}%>
        <br>
        <%=session.getAttribute("user_name")%>You need to pay Rs.
        <b><%=session.getAttribute("finalamount")--%></b>
                
        <div id="nav">
                  <a href="index.jsp"><img src="images\pizza.jpg" id="navimg"></a>
            <ul id="nav1">
                </ul>
          
        </div>
    
    <div style=" height:100px;max-width:100%;"><br><br> <p style="font-size: 20px;padding-left:40px;font-family: georgia;text-decoration: underline #EF0022;">Select Delivery Address.</p><br>
    <p style="padding-left:40px;font-family: arial;">Is the address you'd like to use displayed below? If so, click on the button or enter new deliver address.
    </div>
    <div style="height:35px;"><br><hr></div>
    <div style="height:250px;max-width:100%;"><br>
        <form action="placeorder.jsp" method="POST">
        <div style="height:220px;width:300px;margin-left:40px;border-radius: 3px;border-width: 0.9px;border-style: solid;border-color: #CFCECE;">
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
                                <br><B style="font-size:24px;padding:25px;"><%=rs.getString(1)%>&nbsp;&nbsp;<%=rs.getString(2)%></B>
                                <p style="padding: 25px;"> <%=rs.getString(6)%></p><br>
                                <div style="height:50px;width:300px;"> <p style="padding-left:25px;">
                                        <input type="submit" value="Use This" id="btn-addtocart" style="float:left;"></p></div>
                               <% break;} con.close();%>
                                <% }
                    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
   %>
        </div>
        <br><br>
        <hr>
        </form>
    </div>
    
   
    <div style="height:470px;max-width:100%;"><br><br><p style="font-size: 20px;padding-left:40px;font-family: georgia;text-decoration: underline #EF0022;">Enter New Address.</p><br>
        <form name="enteraddress" method="POST" action="enteraddress.jsp">
        <p style="padding-left:40px;font-family: arial;">When Finished Click on "Enter Address" button.</p>
        <br><br> <p style="padding-left:200px;font-family: arial;">Address Line: <input type="text" name="u_add" style="width: 550px;height:30px"></p>
        <br><br> <p style="padding-left:200px;font-family: arial;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;City: <input type="text" name="city" style="width: 200px;height:30px"></p>
        <br><br> <p style="padding-left:200px;font-family: arial;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;State: <input type="text" name="state" style="width: 200px;height:30px"></p>
        <br><br> <p style="padding-left:200px;font-family: arial;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Zip: <input type="text" name="zip" style="width: 150px;height:30px"></p>
        <p style="padding-left:120px;padding-top: 25px;"><input type="submit" value="Enter Address" id="btn-addtocart" name="btn-enteraddress" style="float:left;"></p></form>
        
      </div>                        
    <br>
    </body>
</html>
