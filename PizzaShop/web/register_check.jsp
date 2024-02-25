<%-- 
    Document   : register_check
    Created on : 24 Oct, 2017, 4:03:20 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
<%try{
     String user_name = request.getParameter("uname");
    String user_email= request.getParameter("uemail");
    String user_pass= request.getParameter("upass");
    int user_mobile= Integer.parseInt(request.getParameter("umobile"));
  
     
     
    
    String URL="jdbc:sqlserver://localhost;databaseName=pizzaDB;user=root;password=root";
    Connection con =null;
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    con = DriverManager.getConnection(URL);
       String query= " insert into pizzaDB.dbo.userInfo(u_name,u_email,u_password,u_mobile) values(?,?,?,?) ";             
  
         
   PreparedStatement ps=con.prepareStatement(query);
    
   ps.setString(1,user_name);
    ps.setString(2,user_email);
    ps.setString(3,user_pass);
    ps.setInt(4,user_mobile);
    
    //response.sendRedirect("login.jsp");

     
     //Statement ps=con.createStatement();
     if(ps.execute())
        response.sendRedirect("login.jsp");
     else
        response.sendRedirect("index.jsp");
    
 }
   catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }%>
    </body>
</html>
