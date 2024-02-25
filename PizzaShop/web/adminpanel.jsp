<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="n.Cart"%>
<%@ page import="java.util.*"%>
<%!
    int vegpizza_price1 = 0;
    int vegpizza_price2 = 0;
    int vegpizza_price3 = 0;
    int vegpizza_price4 = 0;
    int vegpizza_price5 = 0;
    String pname1, pname2, pname3, pname4, pname5;
    String pizzaname;
    String pizzatype1;

    String f_name, l_name, u_name, e_mail, mobile, address;

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


        <div id="nav">
            <a href="index.jsp"><img src="images\pizza.jpg" id="navimg"></a>
            <ul id="nav1">

                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><i class="fa fa-sign-in" aria-hidden="true"></i></li>


                <li></li>
                <li></li>


                <li> <a>Welcome:</a><a>Admin</a> </li>
                <li></li>
                <li> </li>

                <%--<li><a href="register.jsp">Register</a></li>--%>
            </ul>
        </div>


        <div id="carttable2">

            <center><table id="ctable" cellspacing="0" style="text-align:center;">
                    <tr>
                        <th>Pizza Name</th>
                        <th>Ratings</th>
                    </tr>
                    
                    <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select avg(r.rating), p.pizza_name from pizza_details p,ratings r where r.pizza_id=p.pizza_id group by p.pizza_name ";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next())
                                {
                                
                                    %>
                                       
                                              <tr>
                                                  
                                    <td>    
                                        <%=rs.getString(2) %>
                                    </td>
                                    <td>    
                                        <%=rs.getString(1) %>/5.0
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
            </center>
        </div>

        <div id="carttable3">

            <center>   
                <table id="ctable" cellspacing="0" style="text-align:center;">
                    <tr>
                        <th>User Name</th>
                        <th>Date</th>
                        <th>Feedback</th>
                    </tr>

                    <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);%>
    <%  String query ="select * from order_details where feedback!='' ";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();%>
                                <%while(rs.next())
                                {
                                
                                    %>
                                       
                                              <tr>
                                                  
                                    <td>    
                                        <%=rs.getString(1) %>
                                    </td>
                                    <td>    
                                        <%=rs.getString(6) %>
                                    </td>
                                    <td>    
                                        <%=rs.getString(5) %>
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
            </center>
        </div>

    </body>
</html>
