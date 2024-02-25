<%-- 
    Document   : removepizza
    Created on : 14 Nov, 2017, 12:05:58 PM
    Author     : Shreyas
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="n.Cart"%>
<!DOCTYPE html>
<%/*
        if(request.getParameter("removeitem")!=null){
            try
     {    
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    String query="Delete from cart where user_name='"+session.getAttribute("user_name")+"'";
    //String query="insert into userInfo(u_name,u_email,u_password,u_mobile) values('a','b','c',9)";
    Statement st=con.createStatement();
    st.executeUpdate(query); 
    
        }
             catch(Exception e){
                 
             }
        }
        response.sendRedirect("newdisplaycart.jsp");*/
        
Enumeration en=request.getParameterNames();
            
                while(en.hasMoreElements())
            {
                
                Object objOri=en.nextElement();
               String param=(String)objOri;
               String value=request.getParameter(param);
                int h=0;
               if(value.equals("remove"))
               {
                   Cart a=Cart.list.get(Integer.parseInt(param));
                   /*
                   String s=session.getAttribute("finalamount").toString();
                   
                   double t=Double.parseDouble(s);
                   
                   t=t-a.gettotalprice();
                   
                   session.setAttribute("finalamount",""+t);*/
                    Cart.list.remove(Integer.parseInt(param));
                    
               }
               else
               {
                   
               }
               response.sendRedirect("additems.jsp");
               %>
               
              
               <tr>
                   <td><%= "\n"+param+" "%></td>
                   <td><%=value %></td>
               </tr> 
                <%
           
            /*stmt.setString(1,s); 
            stmt.setString(2,Global.date);
            stmt.setString(3,Global.hours);
            stmt.setString(4,Global.pid);
            stmt.setString(5,Global.classroom);
            stmt.setString(6,Global.course);
            stmt.setString(7,a);*/
               
               //response.sendRedirect("additems.jsp");
            
            } 

%>