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
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>
        <link rel="stylesheet" href="ratingcss.css">
</head>
<body>
 <% ArrayList<Cart> list=(ArrayList<Cart>)session.getAttribute("list");%>  
        
		<div class="main">
		<div id="nav">
				 <a href="index.jsp"><img src="images\pizza.jpg" id="navimg"></a>
                        <ul id="nav1">
				<li><a href="veg.jsp">Veg</a></li>
				<li><a href="nonveg.jsp">Non Veg</a></li>
				<li><a href="#"></a></li>
				<li><a href="#"></a></li>
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
                                <li> <a href="useraccount.jsp" style="font-size:16px;">Welcome:<%=fname%></a> </li>
                                <li><a href='logout.jsp'>Logout</a></li>
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
                    String pname1,pname2,pname3,pname4,pname5;
                    String pizzaname;
                    String pizzatype1;
                    
                    String r1="",r2="",r3="",r4="",r5="";
                    String ar1="",ar2="",ar3="",ar4="",ar5="";  
                %>
                   
                              <%
                    try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    
    String query ="select avg(rating) from ratings where pizza_id=101";
    PreparedStatement psr=con.prepareStatement(query);
    ResultSet rs=psr.executeQuery();
    if(rs.next())
    {
        ar1=rs.getString(1);
        
        if(ar1==null)
            ar1="0";
        
        System.out.println(rs.getString(1));
                //System.out.println(rs.getString(1));        
    }
                    }catch(Exception e)
   {
        System.out.println("ratings ERROR CONNECTION" +e);
    }
          //System.out.println("avg rating of pizza 106: "+ar1);
                  
%>

<%
                    try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    
    String query ="select avg(rating) from ratings where pizza_id=102";
    PreparedStatement psr=con.prepareStatement(query);
    ResultSet rs=psr.executeQuery();
    if(rs.next())
    {
        ar2=rs.getString(1);
        System.out.println(rs.getString(1));
        
        if(ar2==null)
            ar2="0";
                //System.out.println(rs.getString(1));        
    }
                    }catch(Exception e)
   {
        System.out.println("ratings ERROR CONNECTION" +e);
    }
          //System.out.println("avg rating of pizza 106: "+ar1);
                  
%>

<%
                    try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    
    String query ="select avg(rating) from ratings where pizza_id=103";
    PreparedStatement psr=con.prepareStatement(query);
    ResultSet rs=psr.executeQuery();
    if(rs.next())
    {
        ar3=rs.getString(1);
        System.out.println(rs.getString(1));
        
        if(ar3==null)
            ar3="0";
                //System.out.println(rs.getString(1));        
    }
                    }catch(Exception e)
   {
        System.out.println("ratings ERROR CONNECTION" +e);
    }
          //System.out.println("avg rating of pizza 106: "+ar1);
                  
%>

<%
                    try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    
    String query ="select avg(rating) from ratings where pizza_id=104";
    PreparedStatement psr=con.prepareStatement(query);
    ResultSet rs=psr.executeQuery();
    if(rs.next())
    {
        ar4=rs.getString(1);
        System.out.println(rs.getString(1));
                //System.out.println(rs.getString(1)); 
                if(ar4==null)
            ar4="0";
    }
                    }catch(Exception e)
   {
        System.out.println("ratings ERROR CONNECTION" +e);
    }
          //System.out.println("avg rating of pizza 106: "+ar1);
                  
%>

<%
                    try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    
    String query ="select avg(rating) from ratings where pizza_id=105";
    PreparedStatement psr=con.prepareStatement(query);
    ResultSet rs=psr.executeQuery();
    if(rs.next())
    {
        ar5=rs.getString(1);
        System.out.println(rs.getString(1));
        
        if(ar5==null)
            ar5="0";
                //System.out.println(rs.getString(1));        
    }
                    }catch(Exception e)
   {
        System.out.println("ratings ERROR CONNECTION" +e);
    }
          //System.out.println("avg rating of pizza 106: "+ar1);
                  
%>


                   <% try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    
    String query ="select rating from ratings where pizza_id=101 and user_name=?";
    PreparedStatement ps=con.prepareStatement(query);
    //ps.setInt(1,Integer.parseInt(request.getParameter("pizzaname")));
    ps.setString(1,session.getAttribute("user_name").toString());

    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
        r1=rs.getString(1);
    }
                    }catch(Exception e)
   {
        System.out.println("ratings ERROR CONNECTION" +e);
    }
                   
%>

<% try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    
    String query ="select rating from ratings where pizza_id=102 and user_name=?";
    PreparedStatement ps=con.prepareStatement(query);
    //ps.setInt(1,Integer.parseInt(request.getParameter("pizzaname")));
    ps.setString(1,session.getAttribute("user_name").toString());

    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
        r2=rs.getString(1);
    }
                    }catch(Exception e)
   {
        System.out.println("ratings ERROR CONNECTION" +e);
    }
                   
%>

<% try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    
    String query ="select rating from ratings where pizza_id=103 and user_name=?";
    PreparedStatement ps=con.prepareStatement(query);
    //ps.setInt(1,Integer.parseInt(request.getParameter("pizzaname")));
    ps.setString(1,session.getAttribute("user_name").toString());

    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
        r3=rs.getString(1);
    }
                    }catch(Exception e)
   {
        System.out.println("ratings ERROR CONNECTION" +e);
    }
                   
%>

<% try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    
    String query ="select rating from ratings where pizza_id=104 and user_name=?";
    PreparedStatement ps=con.prepareStatement(query);
    //ps.setInt(1,Integer.parseInt(request.getParameter("pizzaname")));
    ps.setString(1,session.getAttribute("user_name").toString());

    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
        r4=rs.getString(1);
    }
                    }catch(Exception e)
   {
        System.out.println("ratings ERROR CONNECTION" +e);
    }
                   
%>

<% try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    
    String query ="select rating from ratings where pizza_id=105 and user_name=?";
    PreparedStatement ps=con.prepareStatement(query);
    //ps.setInt(1,Integer.parseInt(request.getParameter("pizzaname")));
    ps.setString(1,session.getAttribute("user_name").toString());

    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
        r5=rs.getString(1);
    }
                    }catch(Exception e)
   {
        System.out.println("ratings ERROR CONNECTION" +e);
    }
                   
%>
     
     
                
                <%
                    if(request.getParameter("btnrate")!=null)
                    {
                        System.out.println(request.getParameter("pizzaname")+" "+request.getParameter("rating"));
                    try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    
    String query ="select count(*) from ratings where pizza_id=? and user_name=?";
                               PreparedStatement ps=con.prepareStatement(query);
                              ps.setInt(1,Integer.parseInt(request.getParameter("pizzaname")));
                                ps.setString(2,session.getAttribute("user_name").toString());
                                
                                System.out.println("ratings "+request.getParameter("rating")+"pizza id: "+request.getParameter("pizzaname"));
                                
                                ResultSet rs=ps.executeQuery();
                                if(rs.next())
                                {
                                   int count=Integer.parseInt(rs.getString(1));
                                   if(count>0)
                                   {
                                       query ="update ratings set rating=? where pizza_id=? and user_name=?";
                               PreparedStatement ps1=con.prepareStatement(query);
                              ps1.setDouble(1,Double.parseDouble(request.getParameter("rating")));
                              ps1.setInt(2,Integer.parseInt(request.getParameter("pizzaname")));
                                ps1.setString(3,session.getAttribute("user_name").toString());
                                
                                ps1.executeUpdate();
                                   }
                                   else
                                   {
                                       query ="insert into ratings(pizza_id,user_name,rating) values(?,?,?)";
                               PreparedStatement ps1=con.prepareStatement(query);
                              ps1.setDouble(3,Double.parseDouble(request.getParameter("rating")));
                              ps1.setInt(1,Integer.parseInt(request.getParameter("pizzaname")));
                                ps1.setString(2,session.getAttribute("user_name").toString());
                                
                                ps1.executeUpdate();
                                   }
    
  }
                    }
                    catch(Exception e)
   {
        System.out.println("ratings ERROR CONNECTION" +e);
    }
}
                    
                    else if(request.getParameter("btnrate2")!=null)
                    {
                        System.out.println(request.getParameter("pizzaname")+" "+request.getParameter("rating2"));
                    try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    
    String query ="select count(*) from ratings where pizza_id=? and user_name=?";
                               PreparedStatement ps=con.prepareStatement(query);
                              ps.setInt(1,Integer.parseInt(request.getParameter("pizzaname")));
                                ps.setString(2,session.getAttribute("user_name").toString());
                                
                                System.out.println("ratings "+request.getParameter("rating2")+"pizza id: "+request.getParameter("pizzaname"));
                                
                                ResultSet rs=ps.executeQuery();
                                if(rs.next())
                                {
                                   int count=Integer.parseInt(rs.getString(1));
                                   if(count>0)
                                   {
                                       query ="update ratings set rating=? where pizza_id=? and user_name=?";
                               PreparedStatement ps1=con.prepareStatement(query);
                              ps1.setDouble(1,Double.parseDouble(request.getParameter("rating2")));
                              ps1.setInt(2,Integer.parseInt(request.getParameter("pizzaname")));
                                ps1.setString(3,session.getAttribute("user_name").toString());
                                
                                ps1.executeUpdate();
                                   }
                                   else
                                   {
                                       query ="insert into ratings(pizza_id,user_name,rating) values(?,?,?)";
                               PreparedStatement ps1=con.prepareStatement(query);
                              ps1.setDouble(3,Double.parseDouble(request.getParameter("rating2")));
                              ps1.setInt(1,Integer.parseInt(request.getParameter("pizzaname")));
                                ps1.setString(2,session.getAttribute("user_name").toString());
                                
                                ps1.executeUpdate();
                                   }
    
  }
                    }
                    catch(Exception e)
   {
        System.out.println("ratings ERROR CONNECTION" +e);
    }
}
                    
                    
                    
System.out.println("ratings "+r1+" "+r2+" "+r3+" "+r4+" "+r5+" ");
System.out.println("avg ratings "+ar1+" "+ar2+" "+ar3+" "+ar4+" "+ar5+" ");
   %>
   
   
             
                
                
                    
		<div id="veg-main">
                    
			<div id="veg-1">
                            <form action="#modal"> 
				<div id="veg-1-pic">
                                    <img src="images\vegpizza1.jpg"></div>
                            <div style="width:60%; float:left; padding-top:20px;padding-left:15px;">
                                        <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=101";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next()){
                                %>
                                <%pname1=rs.getString(2);%>
                                <%pizzatype1=rs.getString(3);%>
                                <b><%=pname1%></b><br>
                                <%= rs.getString(4)%><br>
                                
                                 <% vegpizza_price1=Integer.parseInt(rs.getString(5));%>
                                 <b>₹</b> <%= vegpizza_price1%><br>
                                 <%="Avg. Rating:"+ar1+"/5"%><br>
                                
                                <%} con.close();%>
                                <% }
                    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
   %>
                              </div>
                              <div style="float:right;padding-bottom:50px;">
                                  <input type="submit" id="btn-addtocart" name="vegbtn1" value="ADD">
                             </div>
                            </form>
                              
                              <form action="#">
                                 <fieldset class="rating">
                                    <input type="radio" id="5star" name="rating" value="5" <%=(r1.equals("5.0")?"checked":"")%>/>
                                    <label class="full" for="5star" title="Excellent"></label>

                                    <input type="radio" id="4halfstar" name="rating" value="4.5" <%=(r1.equals("4.5")?"checked":"")%>/>
                                    <label class="half" for="4halfstar" title="Good"></label>

                                    <input type="radio" id="4star" name="rating" value="4" <%=(r1.equals("4.0")?"checked":"")%>/>
                                    <label class="full" for="4star" title="Pretty good"></label>

                                    <input type="radio" id="3halfstar" name="rating" value="3.5" <%=(r1.equals("3.5")?"checked":"")%>/>
                                    <label class="half" for="3halfstar" title="Nice"></label>

                                    <input type="radio" id="3star" name="rating" value="3" <%=(r1.equals("3.0")?"checked":"")%>/>
                                    <label class="full" for="3star" title="Ok"></label>

                                    <input type="radio" id="2halfstar" name="rating" value="2.5" <%=(r1.equals("2.5")?"checked":"")%>/>
                                    <label class="half" for="2halfstar" title="Kinda bad"></label>

                                    <input type="radio" id="2star" name="rating" value="2" <%=(r1.equals("2.0")?"checked":"")%>/>
                                    <label class="full" for="2star" title="Bad"></label>

                                    <input type="radio" id="1halfstar" name="rating" value="1.5" <%=(r1.equals("1.5")?"checked":"")%>/>
                                    <label class="half" for="1halfstar" title="Meh"></label>

                                    <input type="radio" id="1star" name="rating" value="1" <%=(r1.equals("1.0")?"checked":"")%>/>
                                    <label class="full" for="1star" title="Umm"></label>

                                    <input type="radio" id="halfstar" name="rating" value="0.5" <%=(r1.equals("0.5")?"checked":"")%>/>
                                    <label class="half" for="halfstar" title="Worst"></label>
                                    
                                    <input type="hidden" name="pizzaname" value="101">
                                  </fieldset>
                                  <input type="submit" id="btn-rate" name="btnrate" value="Rate">
                                 </form>
                              
                              
			</div>
                              
			<div id="veg-2">
                             <form action="#modal">
				<div id="veg-2-pic">
					<img src="images\vegpizza2.jpg">
				</div>
                            <div style="width:60%; float:left; padding-top:20px;padding-left:15px;">
                                        <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=102";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next()){
                                %>
                                <% pname2=rs.getString(2);%>
                                <%pizzatype1=rs.getString(3);%>
                                <b><%=pname2%></b><br>
                                <%= rs.getString(4)%><br>
                                
                                 <% vegpizza_price2=Integer.parseInt(rs.getString(5));%>
                                  <b>₹</b><%= vegpizza_price2%><br>
                                 <%="Avg. Rating:"+ar2+"/5"%><br>
                               
                                
                                <%} con.close();%>
                                <% }
                    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
   %>
                              </div>
                              
                              
				<div style="float:right;padding-bottom:50px;">
                                  <input type="submit"  id="btn-addtocart" name="vegbtn2" value="ADD">
                             </div>
                              </form>
                              
                              <form action="#" method="POST">
                                 <fieldset class="rating2">
                                       <input type="radio" id="5star" name="rating2" value="5" <%=(r2.equals("5.0")?"checked":"")%>/>
                                    <label class="full" for="5star" title="Excellent"></label>

                                    <input type="radio" id="4halfstar" name="rating2" value="4.5" <%=(r2.equals("4.5")?"checked":"")%>/>
                                    <label class="half" for="4halfstar" title="Good"></label>

                                    <input type="radio" id="4star" name="rating2" value="4" <%=(r2.equals("4.0")?"checked":"")%>/>
                                    <label class="full" for="4star" title="Pretty good"></label>

                                    <input type="radio" id="3halfstar" name="rating2" value="3.5" <%=(r2.equals("3.5")?"checked":"")%>/>
                                    <label class="half" for="3halfstar" title="Nice"></label>

                                    <input type="radio" id="3star" name="rating2" value="3" <%=(r2.equals("3.0")?"checked":"")%>/>
                                    <label class="full" for="3star" title="Ok"></label>

                                    <input type="radio" id="2halfstar" name="rating2" value="2.5" <%=(r2.equals("3.5")?"checked":"")%>/>
                                    <label class="half" for="2halfstar" title="Kinda bad"></label>

                                    <input type="radio" id="2star" name="rating2" value="2" <%=(r2.equals("2.0")?"checked":"")%>/>
                                    <label class="full" for="2star" title="Bad"></label>

                                    <input type="radio" id="1halfstar" name="rating2" value="1.5" <%=(r2.equals("1.5")?"checked":"")%>/>
                                    <label class="half" for="1halfstar" title="Meh"></label>

                                    <input type="radio" id="1star" name="rating2" value="1" <%=(r2.equals("1.0")?"checked":"")%>/>
                                    <label class="full" for="1star" title="Umm"></label>

                                    <input type="radio" id="halfstar" name="rating2" value="0.5" <%=(r2.equals("0.5")?"checked":"")%>/>
                                    <label class="half" for="halfstar" title="Worst"></label>
                                    
                                    <input type="hidden" name="pizzaname" value="102">
                                  </fieldset>
                                  <input type="submit" id="btn-rate" name="btnrate2" value="Rate">
                                 </form>
			</div>
                              
                              
   
			<div id="veg-3">
                            <form action="#modal">
				<div id="veg-3-pic">
					<img src="images\vegpizza3.jpg">
                                </div>
                            <div style=" float:left; padding-top:15px;padding-left:15px; width:60%;">
                                        <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=103";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next()){
                                %>
                                <% pname3=rs.getString(2);%>
                                <%pizzatype1=rs.getString(3);%>
                                <b><%=pname3%></b><br>
                                <%= rs.getString(4)%><br>
                                
                                 <% vegpizza_price3=Integer.parseInt(rs.getString(5));%>
                                  <b>₹</b><%= vegpizza_price3%><br>
                              <%="Avg. Rating:"+ar3+"/5"%><br>
                               
                                <%} con.close();%>
                                <% }
                    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
   %>
                            </div>
				<div style="float:right;padding-bottom:50px;">
                                  <input type="submit"  id="btn-addtocart" name="vegbtn3" value="ADD">
                                 </div>
                            </form>
                             <form action="#" >
                                 <fieldset class="rating3">
                                       <input type="radio" id="5star" name="rating3" value="5" <%=(r3.equals("5")?"checked":"")%>/>
                                    <label class="full" for="5star" title="Excellent"></label>

                                    <input type="radio" id="4halfstar" name="rating3" value="4.5" <%=(r3.equals("4.5")?"checked":"")%>/>
                                    <label class="half" for="4halfstar" title="Good"></label>

                                    <input type="radio" id="4star" name="rating3" value="4" <%=(r3.equals("4")?"checked":"")%>/>
                                    <label class="full" for="4star" title="Pretty good"></label>

                                    <input type="radio" id="3halfstar" name="rating3" value="3.5" <%=(r3.equals("3.5")?"checked":"")%>/>
                                    <label class="half" for="3halfstar" title="Nice"></label>

                                    <input type="radio" id="3star" name="rating3" value="3" <%=(r3.equals("3")?"checked":"")%>/>
                                    <label class="full" for="3star" title="Ok"></label>

                                    <input type="radio" id="2halfstar" name="rating3" value="2.5" <%=(r3.equals("2.5")?"checked":"")%>/>
                                    <label class="half" for="2halfstar" title="Kinda bad"></label>

                                    <input type="radio" id="2star" name="rating3" value="2" <%=(r3.equals("2")?"checked":"")%>/>
                                    <label class="full" for="2star" title="Bad"></label>

                                    <input type="radio" id="1halfstar" name="rating3" value="1.5" <%=(r3.equals("1.5")?"checked":"")%>/>
                                    <label class="half" for="1halfstar" title="Meh"></label>

                                    <input type="radio" id="1star" name="rating3" value="1" <%=(r3.equals("1")?"checked":"")%>/>
                                    <label class="full" for="1star" title="Umm"></label>

                                    <input type="radio" id="halfstar" name="rating3" value="0.5" <%=(r3.equals("0.5")?"checked":"")%>/>
                                    <label class="half" for="halfstar" title="Worst"></label>
                                    
                                    <input type="hidden" name="pizzaname" value="103">
                                  </fieldset>
                                  <input type="submit" id="btn-rate" name="btnrate" value="Rate">
                                 </form>
			</div>
                            
			<div id="veg-4">
                            <form action="#modal">
				<div id="veg-4-pic">
					<img src="images\vegpizza4.jpg">
				</div>
                            <div style=" float:left; padding-top:15px;padding-left:15px; width:60%;">
                                        <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=104";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next()){
                                %>
                                <% pname4=rs.getString(2);%>
                                <%pizzatype1=rs.getString(3);%>
                                <b><%=pname4%></b><br>
                                <%= rs.getString(4)%><br>
                                
                                 <% vegpizza_price4=Integer.parseInt(rs.getString(5));%>
                                  <b>₹</b><br><%= vegpizza_price4%><br>
                                 <%="Avg. Rating:"+ar4+"/5"%><br>
                                <%} con.close();%>
                                <% }
                    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
   %>
                            </div>
				<div style="float:right;padding-bottom:50px;">
                                  <input type="submit"  id="btn-addtocart" name="vegbtn4" value="ADD">
                                 </div>
                            </form>
                             <form action="#" >
                                 <fieldset class="rating4">
                                       <input type="radio" id="5star" name="rating4" value="5" <%=(r4.equals("5")?"checked":"")%>/>
                                    <label class="full" for="5star" title="Excellent"></label>

                                    <input type="radio" id="4halfstar" name="rating4" value="4.5" <%=(r4.equals("4.5")?"checked":"")%>/>
                                    <label class="half" for="4halfstar" title="Good"></label>

                                    <input type="radio" id="4star" name="rating4" value="4" <%=(r4.equals("4")?"checked":"")%>/>
                                    <label class="full" for="4star" title="Pretty good"></label>

                                    <input type="radio" id="3halfstar" name="rating4" value="3.5" <%=(r4.equals("3.5")?"checked":"")%>/>
                                    <label class="half" for="3halfstar" title="Nice"></label>

                                    <input type="radio" id="3star" name="rating4" value="3" <%=(r4.equals("3")?"checked":"")%>/>
                                    <label class="full" for="3star" title="Ok"></label>

                                    <input type="radio" id="2halfstar" name="rating4" value="2.5" <%=(r4.equals("2.5")?"checked":"")%>/>
                                    <label class="half" for="2halfstar" title="Kinda bad"></label>

                                    <input type="radio" id="2star" name="rating4" value="2" <%=(r4.equals("2")?"checked":"")%>/>
                                    <label class="full" for="2star" title="Bad"></label>

                                    <input type="radio" id="1halfstar" name="rating4" value="1.5" <%=(r4.equals("1.5")?"checked":"")%>/>
                                    <label class="half" for="1halfstar" title="Meh"></label>

                                    <input type="radio" id="1star" name="rating4" value="1" <%=(r4.equals("1")?"checked":"")%>/>
                                    <label class="full" for="1star" title="Umm"></label>

                                    <input type="radio" id="halfstar" name="rating4" value="0.5" <%=(r4.equals("0.5")?"checked":"")%>/>
                                    <label class="half" for="halfstar" title="Worst"></label>
                                    
                                    <input type="hidden" name="pizzaname" value="104">
                                  </fieldset>
                                  <input type="submit" id="btn-rate" name="btnrate" value="Rate">
                                 </form>
			</div>
                            
                            
			<div id="veg-5">
                            <form action="#modal">
				<div id="veg-5-pic">
					<img src="images\vegpizza5.jpg">
				</div>
                                        <div style=" float:left; padding-top:15px;padding-left:15px; width:60%;">
                                        <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=105";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next()){
                                %>
                                <% pname5=rs.getString(2);%>
                                <%pizzatype1=rs.getString(3);%>
                                <b><%=pname5%></b><br>
                                <%= rs.getString(4)%><br>
                                
                                 <% vegpizza_price5=Integer.parseInt(rs.getString(5));%>
                                  <b>₹</b><br><%= vegpizza_price5%><br>
                                <%="Avg. Rating:"+ar5+"/5"%><br>
                                
                                <%} con.close();%>
                                <% }
                    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
   %>
                            </div>
				<div style="float:right;padding-bottom:50px;">
                                  <input type="submit"  id="btn-addtocart" name="vegbtn5" value="ADD">
                                 </div>
                             </form>
                            <form action="#" >
                                 <fieldset class="rating5">
                                       <input type="radio" id="5star" name="rating5" value="5" <%=(r5.equals("5")?"checked":"")%>/>
                                    <label class="full" for="5star" title="Excellent"></label>

                                    <input type="radio" id="4halfstar" name="rating5" value="4.5" <%=(r5.equals("4.5")?"checked":"")%>/>
                                    <label class="half" for="4halfstar" title="Good"></label>

                                    <input type="radio" id="4star" name="rating5" value="4" <%=(r5.equals("4")?"checked":"")%>/>
                                    <label class="full" for="4star" title="Pretty good"></label>

                                    <input type="radio" id="3halfstar" name="rating5" value="3.5" <%=(r5.equals("3.5")?"checked":"")%>/>
                                    <label class="half" for="3halfstar" title="Nice"></label>

                                    <input type="radio" id="3star" name="rating5" value="3" <%=(r5.equals("3")?"checked":"")%>/>
                                    <label class="full" for="3star" title="Ok"></label>

                                    <input type="radio" id="2halfstar" name="rating5" value="2.5" <%=(r5.equals("2.5")?"checked":"")%>/>
                                    <label class="half" for="2halfstar" title="Kinda bad"></label>

                                    <input type="radio" id="2star" name="rating5" value="2" <%=(r5.equals("2")?"checked":"")%>/>
                                    <label class="full" for="2star" title="Bad"></label>

                                    <input type="radio" id="1halfstar" name="rating5" value="1.5" <%=(r5.equals("1.5")?"checked":"")%>/>
                                    <label class="half" for="1halfstar" title="Meh"></label>

                                    <input type="radio" id="1star" name="rating5" value="1" <%=(r5.equals("1")?"checked":"")%>/>
                                    <label class="full" for="1star" title="Umm"></label>

                                    <input type="radio" id="halfstar" name="rating5" value="0.5" <%=(r5.equals("0.5")?"checked":"")%>/>
                                    <label class="half" for="halfstar" title="Worst"></label>
                                    
                                    <input type="hidden" name="pizzaname" value="105">
                                  </fieldset>
                                  <input type="submit" id="btn-rate" name="btnrate" value="Rate">
                                 </form>
			</div>
                  </div>
                            
		<div class="modal-container" id="modal">
				<div class="modal">
                                    
				<form action="cart.jsp" method="POST"> 
				<a href="#" class="close">X</a>
				<span class="modal-heading">
                                    
					TOPPINGS
				</span>
					<div id="legends">
                                            Legends<div style="float:right;">
                                                
                                                <% if(request.getParameter("vegbtn1")!=null){%>
                                                    <% session.setAttribute("pizzaname",pname1);%>
                                                    <% session.setAttribute("pizzaprice",vegpizza_price1);%>
                                                    <% session.setAttribute("pizzatype",pizzatype1);%>
                                                    <%= session.getAttribute("pizzaname")%><br>
                                                    
                                                    <div style="float:right;">
                                                 <%=session.getAttribute("pizzaprice")%> Rs.
                                                    </div>
                                               <% }
                                                else if(request.getParameter("vegbtn2")!=null){%>
                                                           <% session.setAttribute("pizzaname",pname2);%>
                                                    <% session.setAttribute("pizzaprice",vegpizza_price2);%>
                                                    <% session.setAttribute("pizzatype",pizzatype1);%>
                                                    <%= session.getAttribute("pizzaname")%><br>
                                                    <div style="float:right;">
    
                                                    <%=session.getAttribute("pizzaprice")%> Rs.
                                                    </div> 
                                                 <%}
                                                 else if(request.getParameter("vegbtn3")!=null){%>
                                                           <% session.setAttribute("pizzaname",pname3);%>
                                                    <% session.setAttribute("pizzaprice",vegpizza_price3);%>
                                                    <% session.setAttribute("pizzatype",pizzatype1);%>
                                                    <%= session.getAttribute("pizzaname")%><br>
                                                    <div style="float:right;">
    
                                                    <%=session.getAttribute("pizzaprice")%> Rs.
                                                    </div> 
                                                    <%}
                                                      else if(request.getParameter("vegbtn4")!=null){%>
                                                           <% session.setAttribute("pizzaname",pname4);%>
                                                    <% session.setAttribute("pizzaprice",vegpizza_price4);%>
                                                    <% session.setAttribute("pizzatype",pizzatype1);%>
                                                    <%= session.getAttribute("pizzaname")%><br>
                                                    <div style="float:right;">
    
                                                    <%=session.getAttribute("pizzaprice")%> Rs.
                                                    </div>
                                                   <%} 
                                                    else if(request.getParameter("vegbtn5")!=null){%>
                                                           <% session.setAttribute("pizzaname",pname5);%>
                                                    <% session.setAttribute("pizzaprice",vegpizza_price5);%>
                                                    <% session.setAttribute("pizzatype",pizzatype1);%>
                                                    <%= session.getAttribute("pizzaname")%><br>
                                                    <div style="float:right;">
    
                                                    <%=session.getAttribute("pizzaprice")%> Rs.
                                                    <%--<%
                                                        Cart.pizzacart.add(new Pizza(pname,true,false));
                                                        %>--%>
                                                    </div>
                                                  <%}
                                                       else{
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
                                </div>
                                        </div>
					<div id="crust">
                                            Choice of crust<sup style="color:red;">*</sup>
						<div id="crust-items">
						<table>
						<tr>
							<td><img src="images/crust1.png"></td>
							<td><img src="images/crust2.png"></td>
							<td><img src="images/crust3.png"></td>
						</tr>
						<tr>
							<td><input type="radio" name="crust" Value="Pan Tossed">Pan
							</td>
							<td><input type="radio" name="crust" Value="Cheese Burst">Cheese Burst
							</td>
							<td><input type="radio" name="crust" Value="Italian Crust">Italian Crust
							</td>
							</tr>
						</table>	
						</div>
					</div>
					<div id="toppings-veg">
						Veg Toppings	
						<div id="toppings-items">
						<table align="center">
							<tr>
								<td align="center"><img src="images/vegtop1.png"> </td>
								<td><img src="images/vegtop2.png"> </td>
								<td><img src="images/vegtop3.png"> </td>
								<td><img src="images/vegtop4.png"> </td>
								<td><img src="images/vegtop5.png"> </td>
							</tr>
							<tr align="center">
								<td><input type="checkbox" name="vegtop" value="Paneer">Paneer <br>40rs</td>
								<td><input type="checkbox" name="vegtop" value="Mushrooms">Mushrooms<br>40rs </td>
								<td><input type="checkbox" name="vegtop" value="Olives">Black Olives<br>40rs </td>
								<td><input type="checkbox" name="vegtop" value="Jalapeno">Jalapeno<br>40rs </td>
								<td><input type="checkbox" name="vegtop" value="Chillies">Red Chillies<br>40rs </td>
							</tr>
						</table>
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
                                                
						</div>
					</div>
					<div id="toppings-nonveg">
						Non-Veg Toppings
						<div id="toppings-items">
						<table align="center">
							<tr >
								<td align="center"><img src="images/nontop1.png"> </td>
								<td><img src="images/nontop2.png"> </td>
								<td><img src="images/nontop3.png"> </td>
								<td><img src="images/nontop4.png"> </td>
							</tr>
							<tr align="center">
								<td><input type="checkbox" name="nonvegtop" value="ChickenBBQ">Chicken BBQ <br>60rs</td>
								<td><input type="checkbox" name="nonvegtop" value="Sausages">Sausages<br>60rs </td>
								<td><input type="checkbox" name="nonvegtop" value="Bacon">Bacon Stripes<br>60rs </td>
								<td><input type="checkbox" name="nonvegtop" value="Chunky">Chunky Chicken<br>60rs </td>
							</tr>
						</table>
						</div>
					</div>
   
   
					<div id="toppings-footer">
                                            
                                            <input type="submit" value="Add to Cart" id="btn-addtocart" >
					</div>
                             
					</form>
				</div>
				</div>	
			</div>	
</body>
</html>

