<%-- 
    Document   : useraccount
    Created on : 17 Oct, 2018, 12:37:42 PM
    Author     : Shreyas
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="n.Cart"%>
<%@ page import="java.util.*"%>
<%! 
   
    
    int vegpizza_price1=0;
                    int vegpizza_price2=0;
                    int vegpizza_price3=0;
                    int vegpizza_price4=0;
                    int vegpizza_price5=0;
                    String pname1,pname2,pname3,pname4,pname5;
                    String pizzaname;
                    String pizzatype1;
                    
String f_name,l_name,u_name,e_mail,mobile,address;

                %>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
        <style>
            html{
                max-width: 100%;
            }
        </style>
    </head>
    <body>
        
        	<div class="main">
		<div id="nav">
			<a href="index.jsp"><img src="images\pizza.jpg" id="navimg"></a>
			<ul id="nav1">
				
				<li><a href="#"></a></li>
				<li><a href="#"></a></li>
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
                                <li> <a>Welcome:</a><a href="useraccount.jsp"><%=fname%></a> </li>
                                <li><a href='logout.jsp'>Logout</a></li>
                               <li> <a href="additems.jsp"><img src="images/cart.png"> <%int count = Cart.list.size();%><%=count%></a></li>
<%
    }
%>
				<%--<li><a href="register.jsp">Register</a></li>--%>
                               <li></li>
			</ul>
		</div>
      
                                    <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from user_info where u_uname='"+session.getAttribute("user_name")+"'";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%if(rs.next()){
                                
                                    f_name=rs.getString(1);
                                    l_name=rs.getString(2);
                                    u_name=rs.getString(3);
                                    e_mail=rs.getString(5);
                                    mobile=rs.getString(6);
                                    address=rs.getString(7);
                                    
                                    } con.close();%>
                                <% }
                    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
%>

<%
    
    if(request.getParameter("givefeedback")!=null)
    {
    
    try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="update order_details set feedback=? where orderid=?";
                                PreparedStatement ps=con.prepareStatement(query);
                                ps.setString(1,request.getParameter("feedback"));
                                ps.setInt(2,Integer.parseInt(request.getParameter("orderid")));
                                ps.executeUpdate();
                                  }
                    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
}
%>
            <br><br><br><br><br>
                                       <div>
                                        <form action="" method="post">
							<center>
								<table>
									
									<tr><td>First Name:</td><td><input type="text" name="name"  value="<%=f_name%>"></td></tr>
									<tr><td>Last Name:</td><td><input type="text" name="sex" readonly="" value="<%=l_name%>"></td></tr>
									<tr><td>Email:</td><td><input type="email" name="email" readonly="" value="<%=e_mail%>"></td></tr>
									<tr><td>Contact:</td><td><input type="text" name="contact" readonly="" value="<%=mobile%>"></td></tr>
									<tr><td>Address:</td><td><input type="text" name="add" readonly="" value="<%=address%>"></td></tr>	
								</table>
								<br>
							</center>
							<center>
								<input type="submit" name="applyconf" value="Update" id="btn-123">
								
							</center>
						</form>
                                        </div>
                                                                
                 <div id="carttable1">
               
	 	<table id="ctable" cellspacing="0" style="text-align:center;">
	 		<tr>
	 		<th>Order Id</th>
                        <th>Order Time & Date</th>
	 		<th>Product details</th>
	 		<th>Amount</th>
	 		<th>Feedback</th>
                        
	 		</tr>
                            
                     
                            
                            <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from order_details where user_name='"+session.getAttribute("user_name")+"'";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next())
                                {
                                
                                    %>
                                       
                                              <tr>
                                                  
                                    <td>    
                                        <%=rs.getString(4) %>
                                    </td>
                                    <td>    
                                        <%=rs.getString(6) %>
                                    </td>
                                    <td>
                                        <%=rs.getString(2) %>
                                    </td>
                                    <td>
                                        <%=rs.getString(3) %>
                                    </td>
                                    <td>
                                        
                                   
                                        <form action="#"> 
                                            <input type="hidden" value="<%=rs.getString(4) %>" name="orderid">
                                            <input type="text" value="<%=rs.getString(5) %>" name="feedback"> &nbsp;
                                            <input type="submit" id="btn-123" name="givefeedback" value="update feedback">
                                            
                                            </form> 
                                       </td>
                                              </tr>
  
                                    <%
                                    
                                    } con.close();%>
                                <% }
                    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
%>
                                   
      
                        
	 	</table>
          
	 	</div>
                </div>
    </body>
</html>
