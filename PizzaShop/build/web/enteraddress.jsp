<%-- 
    Document   : enteraddress
    Created on : 12 Nov, 2017, 10:21:29 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<%
     
        if(request.getParameter("btn-enteraddress")!=null){
             try
     {    
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
       String add = request.getParameter("u_add");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    String zip = request.getParameter("zip");
    String address=add+','+city+','+state+','+zip;
        String query="update user_info set u_address=('"+address+"') where u_uname='"+session.getAttribute("user_name")+"'";
    //String query="insert into userInfo(u_name,u_email,u_password,u_mobile) values('a','b','c',9)";
    Statement st=con.createStatement();
    st.executeUpdate(query); 
    
        }
             catch(Exception e){
                 
             }
        }
        response.sendRedirect("checkout.jsp");
    %>
