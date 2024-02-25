<%-- 
    Document   : veg
    Created on : 21 Oct, 2017, 10:32:37 AM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="n.Cart"%>
<%@ page import="java.util.*"%>
<%!int count;%>
<%--@ page import="p.Cart"--%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="style.css">
        
</head>
<body>
	<div class="main">
		<div id="nav">
				 <a href="index.jsp"><img src="images\pizza.jpg" id="navimg"></a>
                        <ul id="nav1">
				<li><a href="#">Veg</a></li>
				<li><a href="nonveg.jsp">Non Veg</a></li>
				<li><a href="#">Sides</a></li>
				<li><a href="#">Desserts</a></li>
                                <%
                                    if ((session.getAttribute("user_name") == null) || (session.getAttribute("user_name") == ""))  {
                                %>
				
                                <%} else {
                                   %>  
                                   <li><a></a><%=session.getAttribute("user_name")%><a href='logout.jsp'>Logout</a></li>
                                   <li> <a href="additems.jsp"><img src="images/cart.png"> <%int count = Cart.list.size();%><%=count%></a></li>
<%
    }
%>
                                   
                        </ul>
		</div>
                <%! int vegpizza_price1=0;
                    int vegpizza_price2=0;
                    int vegpizza_price3=0;
                    int vegpizza_price4=0;
                    int vegpizza_price5=0;
                    String sides1,sides2,sides3;
                    String pizzaname;
                    String pizzatype1;
                %>
                   
                    
		<div id="veg-main">
                    <form action="cart.jsp" method="POST"> 
			<div id="veg-1">
				<div id="veg-1-pic">
                                    <img src="images\vegpizza1.jpg"></div>
                            <div style="width:60%; float:left; padding-top:20px;padding-left:15px;">
                                        <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=111";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next()){
                                %>
                                <%sides1=rs.getString(2);%>
                                <%pizzatype1=rs.getString(3);%>
                                <b><%=sides1%></b><br>
                                <%= rs.getString(4)%><br>
                                
                                 <% vegpizza_price1=Integer.parseInt(rs.getString(5));%>
                                <%= vegpizza_price1%><b>Rs.</b>
                                
                                <%} con.close();%>
                                <% }
                    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
   %>
                              </div>
                              <div style="float:right;padding-bottom:50px;">
                                  <input type="submit" id="btn-addtocart" name="sidesbtn1" value="Add">
                             </div>
			</div>
                              
			<div id="veg-2">
				<div id="veg-2-pic">
					<img src="images\vegpizza2.jpg">
				</div>
                            <div style="width:60%; float:left; padding-top:20px;padding-left:15px;">
                                        <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=112";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next()){
                                %>
                                <% sides2=rs.getString(2);%>
                                <%pizzatype1=rs.getString(3);%>
                                <b><%=sides2%></b><br>
                                <%= rs.getString(4)%><br>
                                
                                 <% vegpizza_price2=Integer.parseInt(rs.getString(5));%>
                                <%= vegpizza_price2%><b>Rs.</b>
                                
                                <%} con.close();%>
                                <% }
                    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
   %>
                              </div>
				<div style="float:right;padding-bottom:50px;">
                                  <input type="submit"  id="btn-addtocart" name="sidesbtn2" value="ADD">
                             </div>
			</div>
   
			<div id="veg-3">
				<div id="veg-3-pic">
					<img src="images\vegpizza3.jpg">
                                </div>
                            <div style=" float:left; padding-top:15px;padding-left:15px; width:60%;">
                                        <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=113";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next()){
                                %>
                                <% sides3=rs.getString(2);%>
                                <%pizzatype1=rs.getString(3);%>
                                <b><%=sides3%></b><br>
                                <%= rs.getString(4)%><br>
                                
                                 <% vegpizza_price3=Integer.parseInt(rs.getString(5));%>
                                <%= vegpizza_price3%><b>Rs.</b>
                               
                                <%} con.close();%>
                                <% }
                    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
   %>
                            </div>
				<div style="float:right;padding-bottom:50px;">
                                  <input type="submit"  id="btn-addtocart" name="sidesbtn3" value="ADD">
                                 </div>
			</div>
                      
                       			
		
                                                 <% if(request.getParameter("sidesbtn1")!=null){%>
                                                    <% session.setAttribute("pizzaname",sides1);%>
                                                    <% session.setAttribute("pizzaprice",vegpizza_price1);%>
                                                    <% session.setAttribute("pizzatype",pizzatype1);%>
                                                    
                                                  
                                                 
                                               <% }
                                                else if(request.getParameter("sidesbtn2")!=null){%>
                                                           <% session.setAttribute("pizzaname",sides3);%>
                                                    <% session.setAttribute("pizzaprice",vegpizza_price2);%>
                                                    <% session.setAttribute("pizzatype",pizzatype1);%>
                                                    
                                                     
                                                 <%}
                                                 else if(request.getParameter("sidesbtn3")!=null){%>
                                                           <% session.setAttribute("pizzaname",sides3);%>
                                                    <% session.setAttribute("pizzaprice",vegpizza_price3);%>
                                                    <% session.setAttribute("pizzatype",pizzatype1);%>
                                                  
                                                     <%} else{
                                                        session.setAttribute("pizzaname",null);
                                                        session.setAttribute("pizzaprice",null);
                                                        }
%>
  <%-- <% if(request.getParameter("vegbtn1")!= null){
      try{
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=101";
        PreparedStatement ps=con.prepareStatement(query);
        ResultSet rs=ps.executeQuery();%>
  <%while(rs.next()){
           %>
           <%=session.getAttribute("pizzaname")%><br>
    
                                                                                     
<div style="float:right;">
    
   <%=session.getAttribute("pizzaprice")%> Rs.
</div>
   
<%} %>
 <% }
    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
}

    else if(request.getParameter("vegbtn2")!= null){
    try{
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=102";
        PreparedStatement ps=con.prepareStatement(query);
        ResultSet rs=ps.executeQuery();%>
  <%while(rs.next()){
           String pname=rs.getString(2);%>
                                <br>
   

<div style="float:right;">
   <%=rs.getString(5)%> Rs.
</div>
<%} %>
 <% }
    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
}


else if(request.getParameter("vegbtn3")!= null){
    try{
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=103";
        PreparedStatement ps=con.prepareStatement(query);
        ResultSet rs=ps.executeQuery();%>
  <%while(rs.next()){
           String pname=rs.getString(2);%>
                                <%=pname%><br>
   

<div style="float:right;">
   <%=rs.getString(5)%> Rs.
</div>
<%} %>
 <% }
    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
}

else if(request.getParameter("vegbtn4")!= null){
    try{
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=104";
        PreparedStatement ps=con.prepareStatement(query);
        ResultSet rs=ps.executeQuery();%>
  <%while(rs.next()){
           String pname=rs.getString(2);%>
                                <%=pname%><br>
   

<div style="float:right;">
   <%=rs.getString(5)%> Rs.
</div>
<%} %>
 <% }
    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
}

else if(request.getParameter("vegbtn5")!= null){
    try{
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=105";
        PreparedStatement ps=con.prepareStatement(query);
        ResultSet rs=ps.executeQuery();%>
  <%while(rs.next()){
           String pname=rs.getString(2);%>
                                <%=pname%><br>
    

<div style="float:right;">
   <%=rs.getString(5)%> Rs.
</div>
<%} %>
 <% }
    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
}
%> --%>
                                
 <%--
    String veg_toppings="";
    String vgtp[]=request.getParameterValues("vegtop");
    for(int i=0;i<vgtp.length;i++){
        veg_toppings+=vgtp[i]+" ";
        
    }%>
    <% 
     try{
         
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    String query=("insert into userInfo(u_name,u_email,u_password,u_mobile) values('"+veg_toppings+")");
   
    Statement st=con.createStatement();
    st.executeUpdate(query);    
    %>
     
<%}
   catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
   --%>
                    </form>                       
			</div>		
			</div>	
</body>
</html>

