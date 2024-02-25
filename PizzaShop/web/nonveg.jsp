<%-- 
    Document   : nonveg
    Created on : 26 Oct, 2017, 8:25:34 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="n.Cart"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="style.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>
       <style>
                                      fieldset,label {
                                      margin: 0;
                                      padding: 0;
                                      
                                    }

                                    .rating {
                                      border: none;
                                      float: left;
                                    }

                                    .rating>input {
                                      display: none;
                                    }

                                    .rating>label:before {
                                      margin: 5px;
                                      font-size: 1.25em;
                                      font-family: FontAwesome;
                                      display: inline-block;
                                      content: "\f005";
                                    }

                                    .rating>.half:before {
                                      content: "\f089";
                                      position: absolute;
                                    }

                                    .rating>label {
                                      color: #ddd;
                                      float: right;
                                    }

                                    .rating>input:checked~label,

                                    /* show gold star when clicked */

                                    .rating:not(:checked)>label:hover,

                                    /* hover current star */

                                    .rating:not(:checked)>label:hover~label {
                                      color: #FFD700;
                                    }


                                    /* hover previous stars in list */

                                    .rating>input:checked+label:hover,

                                    /* hover current star when changing rating */

                                    .rating>input:checked~label:hover,
                                    .rating>label:hover~input:checked~label,

                                    /* lighten current selection */

                                    .rating>input:checked~label:hover~label {
                                      color: #FFED85;
                                    }

                                 </style>
</head>
<body>
		<div class="main">
		<div id="nav">
				 <a href="index.jsp"><img src="images\pizza.jpg" id="navimg"></a>
			<ul id="nav1">
				<li><a href="veg.jsp">Veg</a></li>
				<li><a href="#">Non Veg</a></li>
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
                        <%! int nonvegpizza_price1=0;
                    int nonvegpizza_price2=0;
                    int nonvegpizza_price3=0;
                    int nonvegpizza_price4=0;
                    int nonvegpizza_price5=0;
                    String pname6,pname7,pname8,pname9,pname10;
                    String pizzaname;
                    String pizzatype2;
                    
                    String r1="",r2="",r3="",r4="",r5="";
                    String ar1="",ar2="",ar3="",ar4="",ar5="";
                %>
	
                <%
                    try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    
    String query ="select avg(rating) from ratings where pizza_id=106";
    PreparedStatement psr=con.prepareStatement(query);
    ResultSet rs=psr.executeQuery();
    if(rs.next())
    {
        ar1=rs.getString(1);
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
    
    String query ="select avg(rating) from ratings where pizza_id=107";
    PreparedStatement psr=con.prepareStatement(query);
    ResultSet rs=psr.executeQuery();
    if(rs.next())
    {
        ar2=rs.getString(1);
        System.out.println(rs.getString(1));
                //System.out.println(rs.getString(1));   
                if(ar2==null)
            ar2="0";
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
    
    String query ="select avg(rating) from ratings where pizza_id=108";
    PreparedStatement psr=con.prepareStatement(query);
    ResultSet rs=psr.executeQuery();
    if(rs.next())
    {
        ar3=rs.getString(1);
        System.out.println(rs.getString(1));
                //System.out.println(rs.getString(1));   
                if(ar3==null)
            ar3="0";
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
    
    String query ="select avg(rating) from ratings where pizza_id=109";
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
    
    String query ="select avg(rating) from ratings where pizza_id=110";
    PreparedStatement psr=con.prepareStatement(query);
    ResultSet rs=psr.executeQuery();
    if(rs.next())
    {
        ar5=rs.getString(1);
        System.out.println(rs.getString(1));
                //System.out.println(rs.getString(1));
                if(ar5==null)
            ar5="0";
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
    
    String query ="select rating from ratings where pizza_id=106 and user_name=?";
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
    
    String query ="select rating from ratings where pizza_id=107 and user_name=?";
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
    
    String query ="select rating from ratings where pizza_id=108 and user_name=?";
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
    
    String query ="select rating from ratings where pizza_id=109 and user_name=?";
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
    
    String query ="select rating from ratings where pizza_id=110 and user_name=?";
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
                    
System.out.println("ratings "+r1+" "+r2+" "+r3+" "+r4+" "+r5+" ");
System.out.println("avg ratings "+ar1+" "+ar2+" "+ar3+" "+ar4+" "+ar5+" ");
   %>
                
                
                
		<div id="nonveg-main">
                   
			<div id="nonveg-1">
                             <form action="#modal">
				<div id="nonveg-1-pic">
					<img src="images\nonvegpizza1.jpg">
                                </div><br><br><br>
                            <div style="width:60%; float:left; padding-top:30px;padding-left:15px;">
                                        <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=106";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next()){
                                %>
                                <%pname6=rs.getString(2);%>
                                <%pizzatype2=rs.getString(3);%>
                                <b><%=pname6%></b><br>
                                <%=rs.getString(4)%><br>
                                
                                 <% nonvegpizza_price1=Integer.parseInt(rs.getString(5));%>
                                 <b>₹</b> <%= nonvegpizza_price1%>
                                
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
                                  <input type="submit"  id="btn-addtocart" name="nonvegbtn1" value="ADD">
                             </div>
                             </form>
                              
                              <form action="#" >
                                 <fieldset class="rating">
                                     <input type="radio" id="5star" name="rating" value="5" <%=(r1.equals("5.0")?"checked":"")%> />
                                    <label class="full" for="5star" title="Excellent"></label>

                                    <input type="radio" id="4halfstar" name="rating" value="4.5" <%=(r1.equals("4.5")?"checked":"")%> />
                                    <label class="half" for="4halfstar" title="Good"></label>

                                    <input type="radio" id="4star" name="rating" value="4" <%=(r1.equals("4.0")?"checked":"")%> />
                                    <label class="full" for="4star" title="Pretty good"></label>

                                    <input type="radio" id="3halfstar" name="rating" value="3.5" <%=(r1.equals("3.5")?"checked":"")%> />
                                    <label class="half" for="3halfstar" title="Nice"></label>

                                    <input type="radio" id="3star" name="rating" value="3" <%=(r1.equals("3.0")?"checked":"")%> />
                                    <label class="full" for="3star" title="Ok"></label>

                                    <input type="radio" id="2halfstar" name="rating" value="2.5" <%=(r1.equals("2.5")?"checked":"")%> />
                                    <label class="half" for="2halfstar" title="Kinda bad"></label>

                                    <input type="radio" id="2star" name="rating" value="2" <%=(r1.equals("2.0")?"checked":"")%> />
                                    <label class="full" for="2star" title="Bad"></label>

                                    <input type="radio" id="1halfstar" name="rating" value="1.5" <%=(r1.equals("1.5")?"checked":"")%> />
                                    <label class="half" for="1halfstar" title="Meh"></label>

                                    <input type="radio" id="1star" name="rating" value="1" <%=(r1.equals("1.0")?"checked":"")%> />
                                    <label class="full" for="1star" title="Umm"></label>

                                    <input type="radio" id="halfstar" name="rating" value="0.5" <%=(r1.equals("0.5")?"checked":"")%> />
                                    <label class="half" for="halfstar" title="Worst"></label>
                                    
                                    <input type="hidden" name="pizzaname" value="106">
                                  </fieldset>
                                  <input type="submit" id="btn-rate" name="btnrate" value="Rate">
                                 </form>
			</div>
                              
			<div id="nonveg-2">
                            <form action="#modal">
				<div id="nonveg-2-pic">
					<img src="images\nonvegpizza2.jpg">
                                </div>
                                <div style="width:60%; float:left; padding-top:20px;padding-left:15px;">
                                        <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=107";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next()){
                                %>
                                <%pname7=rs.getString(2);%>
                                <%pizzatype2=rs.getString(3);%>
                                <b><%=pname7%></b><br>
                                <%= rs.getString(4)%><br>
                                
                                 <% nonvegpizza_price2=Integer.parseInt(rs.getString(5));%>
                                 <b>₹</b> <%= nonvegpizza_price2%>
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
                                  <input type="submit"  id="btn-addtocart" name="nonvegbtn2" value="ADD">
                             </div>
                            </form>
                              <form action="#" >
                                 <fieldset class="rating">
                                       <input type="radio" id="5star" name="rating" value="5" <%=(r2.equals("5")?"checked":"")%> />
                                    <label class="full" for="5star" title="Excellent"></label>

                                    <input type="radio" id="4halfstar" name="rating" value="4.5" <%=(r2.equals("4.5")?"checked":"")%> />
                                    <label class="half" for="4halfstar" title="Good"></label>

                                    <input type="radio" id="4star" name="rating" value="4" <%=(r2.equals("4")?"checked":"")%>/>
                                    <label class="full" for="4star" title="Pretty good"></label>

                                    <input type="radio" id="3halfstar" name="rating" value="3.5" <%=(r2.equals("3.5")?"checked":"")%>/>
                                    <label class="half" for="3halfstar" title="Nice"></label>

                                    <input type="radio" id="3star" name="rating" value="3" <%=(r2.equals("3")?"checked":"")%>/>
                                    <label class="full" for="3star" title="Ok"></label>

                                    <input type="radio" id="2halfstar" name="rating" value="2.5" <%=(r2.equals("2.5")?"checked":"")%>/>
                                    <label class="half" for="2halfstar" title="Kinda bad"></label>

                                    <input type="radio" id="2star" name="rating" value="2" <%=(r2.equals("2")?"checked":"")%>/>
                                    <label class="full" for="2star" title="Bad"></label>

                                    <input type="radio" id="1halfstar" name="rating" value="1.5" <%=(r2.equals("1.5")?"checked":"")%>/>
                                    <label class="half" for="1halfstar" title="Meh"></label>

                                    <input type="radio" id="1star" name="rating" value="1" <%=(r2.equals("1")?"checked":"")%>/>
                                    <label class="full" for="1star" title="Umm"></label>

                                    <input type="radio" id="halfstar" name="rating" value="0.5" <%=(r2.equals("0.5")?"checked":"")%>/>
                                    <label class="half" for="halfstar" title="Worst"></label>
                                    
                                    <input type="hidden" name="pizzaname" value="107">
                                  </fieldset>
                                  <input type="submit" id="btn-rate" name="btnrate" value="Rate">
                                 </form>
			</div>
                              
			<div id="nonveg-3">
                             <form action="#modal">
				<div id="veg-3-pic">
					<img src="images\nonvegpizza3.jpg">
				</div>
                            <div style="width:60%; float:left; padding-top:20px;padding-left:15px;">
                                        <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=108";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next()){
                                %>
                                <%pname8=rs.getString(2);%>
                                <%pizzatype2=rs.getString(3);%>
                                <b><%=pname8%></b><br>
                                <%= rs.getString(4)%><br>
                                
                                 <% nonvegpizza_price3=Integer.parseInt(rs.getString(5));%>
                                 <b>₹</b> <%= nonvegpizza_price3%>
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
                                  <input type="submit"  id="btn-addtocart" name="nonvegbtn3" value="ADD">
                             </div>
                             </form>
                              <form action="#" >
                                 <fieldset class="rating">
                                       <input type="radio" id="5star" name="rating" value="5" <%=(r3.equals("5")?"checked":"")%> />
                                    <label class="full" for="5star" title="Excellent"></label>

                                    <input type="radio" id="4halfstar" name="rating" value="4.5" <%=(r3.equals("4.5")?"checked":"")%>/>
                                    <label class="half" for="4halfstar" title="Good"></label>

                                    <input type="radio" id="4star" name="rating" value="4" <%=(r3.equals("4")?"checked":"")%>/>
                                    <label class="full" for="4star" title="Pretty good"></label>

                                    <input type="radio" id="3halfstar" name="rating" value="3.5" <%=(r3.equals("3.5")?"checked":"")%>/>
                                    <label class="half" for="3halfstar" title="Nice"></label>

                                    <input type="radio" id="3star" name="rating" value="3" <%=(r3.equals("3")?"checked":"")%>/>
                                    <label class="full" for="3star" title="Ok"></label>

                                    <input type="radio" id="2halfstar" name="rating" value="2.5" <%=(r3.equals("2.5")?"checked":"")%>/>
                                    <label class="half" for="2halfstar" title="Kinda bad"></label>

                                    <input type="radio" id="2star" name="rating" value="2" <%=(r3.equals("2")?"checked":"")%>/>
                                    <label class="full" for="2star" title="Bad"></label>

                                    <input type="radio" id="1halfstar" name="rating" value="1.5" <%=(r3.equals("1.5")?"checked":"")%>/>
                                    <label class="half" for="1halfstar" title="Meh"></label>

                                    <input type="radio" id="1star" name="rating" value="1" <%=(r3.equals("1")?"checked":"")%>/>
                                    <label class="full" for="1star" title="Umm"></label>

                                    <input type="radio" id="halfstar" name="rating" value="0.5" <%=(r3.equals("0.5")?"checked":"")%>/>
                                    <label class="half" for="halfstar" title="Worst"></label>
                                    
                                    <input type="hidden" name="pizzaname" value="108">
                                  </fieldset>
                                  <input type="submit" id="btn-rate" name="btnrate" value="Rate">
                                 </form>
			</div>
                              
			<div id="nonveg-4">
                            <form action="#modal">
				<div id="nonveg-4-pic">
					<img src="images\nonvegpizza4.jpg">
				</div>
                            <div style="width:60%; float:left; padding-top:20px;padding-left:15px;">
                                        <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=109";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next()){
                                %>
                                <%pname9=rs.getString(2);%>
                                <%pizzatype2=rs.getString(3);%>
                                <b><%=pname9%></b><br>
                                <%= rs.getString(4)%><br>
                                
                                 <% nonvegpizza_price4=Integer.parseInt(rs.getString(5));%>
                                 <b>₹</b> <%= nonvegpizza_price4%>
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
                                  <input type="submit"  id="btn-addtocart" name="nonvegbtn4" value="ADD">
                             </div>
                            </form>
                              <form action="#" >
                                 <fieldset class="rating">
                                       <input type="radio" id="5star" name="rating" value="5" <%=(r4.equals("5")?"checked":"")%>/>
                                    <label class="full" for="5star" title="Excellent"></label>

                                    <input type="radio" id="4halfstar" name="rating" value="4.5" <%=(r4.equals("4.5")?"checked":"")%>/>
                                    <label class="half" for="4halfstar" title="Good"></label>

                                    <input type="radio" id="4star" name="rating" value="4" <%=(r4.equals("4")?"checked":"")%>/>
                                    <label class="full" for="4star" title="Pretty good"></label>

                                    <input type="radio" id="3halfstar" name="rating" value="3.5" <%=(r4.equals("3.5")?"checked":"")%>/>
                                    <label class="half" for="3halfstar" title="Nice"></label>

                                    <input type="radio" id="3star" name="rating" value="3" <%=(r4.equals("3")?"checked":"")%>/>
                                    <label class="full" for="3star" title="Ok"></label>

                                    <input type="radio" id="2halfstar" name="rating" value="2.5" <%=(r4.equals("2.5")?"checked":"")%>/>
                                    <label class="half" for="2halfstar" title="Kinda bad"></label>

                                    <input type="radio" id="2star" name="rating" value="2" <%=(r4.equals("2")?"checked":"")%>/>
                                    <label class="full" for="2star" title="Bad"></label>

                                    <input type="radio" id="1halfstar" name="rating" value="1.5" <%=(r4.equals("1.5")?"checked":"")%>/>
                                    <label class="half" for="1halfstar" title="Meh"></label>

                                    <input type="radio" id="1star" name="rating" value="1" <%=(r4.equals("1")?"checked":"")%>/>
                                    <label class="full" for="1star" title="Umm"></label>

                                    <input type="radio" id="halfstar" name="rating" value="0.5" <%=(r4.equals("0.5")?"checked":"")%>/>
                                    <label class="half" for="halfstar" title="Worst"></label>
                                    
                                    <input type="hidden" name="pizzaname" value="109">
                                  </fieldset>
                                  <input type="submit" id="btn-rate" name="btnrate" value="Rate">
                                 </form>
			</div>
			</div>
                              
			<div id="nonveg-5">
                            <form action="#modal">
				<div id="nonveg-5-pic">
					<img src="images\nonvegpizza5.jpg">
				</div>
                            <div style="width:60%; float:left; padding-top:20px;padding-left:15px;">
                                        <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from pizza_details where pizza_id=110";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next()){
                                %>
                                <%pname10=rs.getString(2);%>
                                <%pizzatype2=rs.getString(3);%>
                                <b><%=pname10%></b><br>
                                <%= rs.getString(4)%><br>
                                
                                 <% nonvegpizza_price5=Integer.parseInt(rs.getString(5));%>
                                 <b>₹</b> <%= nonvegpizza_price5%>
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
                                  <input type="submit"  id="btn-addtocart" name="nonvegbtn5" value="ADD">
                             </div>
                            </form>
                              
                               <form action="#" >
                                 <fieldset class="rating">
                                       <input type="radio" id="5star" name="rating" value="5" <%=(r5.equals("5")?"checked":"")%>/>
                                    <label class="full" for="5star" title="Excellent"></label>

                                    <input type="radio" id="4halfstar" name="rating" value="4.5" <%=(r5.equals("4.5")?"checked":"")%>/>
                                    <label class="half" for="4halfstar" title="Good"></label>

                                    <input type="radio" id="4star" name="rating" value="4" <%=(r5.equals("4")?"checked":"")%>/>
                                    <label class="full" for="4star" title="Pretty good"></label>

                                    <input type="radio" id="3halfstar" name="rating" value="3.5" <%=(r5.equals("3.5")?"checked":"")%>/>
                                    <label class="half" for="3halfstar" title="Nice"></label>

                                    <input type="radio" id="3star" name="rating" value="3" <%=(r5.equals("3")?"checked":"")%>/>
                                    <label class="full" for="3star" title="Ok"></label>

                                    <input type="radio" id="2halfstar" name="rating" value="2.5" <%=(r5.equals("2.5")?"checked":"")%>/>
                                    <label class="half" for="2halfstar" title="Kinda bad"></label>

                                    <input type="radio" id="2star" name="rating" value="2" <%=(r5.equals("2")?"checked":"")%>/>
                                    <label class="full" for="2star" title="Bad"></label>

                                    <input type="radio" id="1halfstar" name="rating" value="1.5" <%=(r5.equals("1.5")?"checked":"")%>/>
                                    <label class="half" for="1halfstar" title="Meh"></label>

                                    <input type="radio" id="1star" name="rating" value="1" <%=(r5.equals("1")?"checked":"")%>/>
                                    <label class="full" for="1star" title="Umm"></label>

                                    <input type="radio" id="halfstar" name="rating" value="0.5" <%=(r5.equals("0.5")?"checked":"")%>>
                                    <label class="half" for="halfstar" title="Worst"></label>
                                    
                                    <input type="hidden" name="pizzaname" value="101">
                                  </fieldset>
                                  <input type="submit" id="btn-rate" name="btnrate" value="Rate">
                                 </form>
			</div>
                    </form>
                 </div>
                              
		<div class="modal-container" id="modal">
				<div class="modal">
				<form action="cart.jsp">
				<a href="#" class="close">X</a>
				<span class="modal-heading">
					TOPPINGS
				</span>
					<div id="legends">
                                            Legends<div style="float:right;">
                                                    <% if(request.getParameter("nonvegbtn1")!=null){%>
                                                    <% session.setAttribute("pizzaname",pname6);%>
                                                    <% session.setAttribute("pizzaprice",nonvegpizza_price1);%>
                                                    <% session.setAttribute("pizzatype",pizzatype2);%>
                                                    <%= session.getAttribute("pizzaname")%><br>
    
                                                                                     
                                                <div style="float:right;">
                                                 <%=session.getAttribute("pizzaprice")%> Rs.
                                                    </div>
<%} 
                                                else if(request.getParameter("nonvegbtn2")!=null){%>
                                                     <% session.setAttribute("pizzaname",pname7);%>
                                                    <% session.setAttribute("pizzaprice",nonvegpizza_price2);%>
                                                    <% session.setAttribute("pizzatype",pizzatype2);%>
                                                    <%= session.getAttribute("pizzaname")%><br>
                                                    <div style="float:right;">
    
                                                    <%=session.getAttribute("pizzaprice")%> Rs.
                                                    </div> 
                                                 <%}
                                                 else if(request.getParameter("nonvegbtn3")!=null){%>
                                                           <% session.setAttribute("pizzaname",pname8);%>
                                                    <% session.setAttribute("pizzaprice",nonvegpizza_price3);%>
                                                    <% session.setAttribute("pizzatype",pizzatype2);%>
                                                    <%= session.getAttribute("pizzaname")%><br>
                                                    <div style="float:right;">
    
                                                    <%=session.getAttribute("pizzaprice")%> Rs.
                                                    </div> 
                                                    <%}
                                                      else if(request.getParameter("nonvegbtn4")!=null){%>
                                                           <% session.setAttribute("pizzaname",pname9);%>
                                                    <% session.setAttribute("pizzaprice",nonvegpizza_price4);%>
                                                    <% session.setAttribute("pizzatype",pizzatype2);%>
                                                    <%= session.getAttribute("pizzaname")%><br>
                                                    <div style="float:right;">
    
                                                    <%=session.getAttribute("pizzaprice")%> Rs.
                                                    </div>
                                                   <%} 
                                                    else if(request.getParameter("nonvegbtn5")!=null){%>
                                                           <% session.setAttribute("pizzaname",pname10);%>
                                                    <% session.setAttribute("pizzaprice",nonvegpizza_price5);%>
                                                    <% session.setAttribute("pizzatype",pizzatype2);%>
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
                                </div>
                                        </div>
					<div id="crust">
						Choice of crust
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
                                            <input type="submit" value="Add to Cart" id="btn-addtocart">
					</div>
                             
					</form>
				</div>
				</div>
	</div>
	
</body>
</html>

